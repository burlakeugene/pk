class Map {
  constructor({ element, options }) {
    if (!element || !element.id) return;
    this.element = element;
    this.options = options;
    this.init = this.init.bind(this);
    ymaps.ready(this.init);
  }
  init() {
    let { element } = this,
      isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);
    this.map = new ymaps.Map(element.id, {
      center: element.dataset.center
        ? element.dataset.center.split(',')
        : [45.25, 34.3],
      controls: [],
      zoom: 12,
    });
    this.map.margin.setDefaultMargin(40);
    this.map.behaviors.disable('scrollZoom');
    this.clusterer = new ymaps.Clusterer({
      gridSize: 80,
      clusterIcons: [
        {
          href: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAqCAMAAADyHTlpAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAbBQTFRFAAAA////3+XyoLHabojGd4/JW7jqWdj/SdX/StX/BcX/////0trtcovHPmCzETuhCZXfBcX/GMn/G8r/BcX/tcLiTWy5D8f/BcX/////2d/wXHi+BcX/rbzfIEenBcX/////do7JBcX/Z4LDLVKsWne+h5zPhMruguL/Ytv/I8z/lajVaYTE0trt////4Pj/FMj/BcX/vcnl4ebz7/v/ct7/BcX/Smq3lqjVoen/BcX/j6PTpbXb0PT/PmCzse3/BcX/RGW1keb/BcX/NlqwH0am8PL5GUGkBcX/ETuhBcX/ETuhPF+yUtf/ETuheJDJBcX/ETuhwPD/BcX/FUSjFUSjtcTiUdHLUdHL0/Pyw+T7DpXvDpXvs+voxN36FXntFXntUdHLqOjlh9/be7P1FXntUdHLXNTOMorvFXntyPHv4u79FXntUdHLctrVbKv0FXntUdHLve7rUdHLUdHL3vb18Pf+FXnt9Pz8UJvyFXnt6fn40+b8PZDwFXntiN/baqr0FXntUdHL1PTy8vj8xd77lsP3SZfxFXntUdHLMpXJUdHLFXntUdHLFXntFXntn37W7wAAAJB0Uk5TADB4n7ffv7+vVyBAq/H/////8Z0wz//HXxDH/7/p/29g+J/5/////////9f//////4B0////QPv//9+I///r/+89/2C+///3EDBQYP//gP+wsP/AwP//wP/////A////wID///+QQP//cP//MLD//+Bg/xDw//8g//+g///5gP/50ND////34fAg/zAQoEBQtzlIWwAAAeJJREFUeJyN1Pdf00AYBvCriKAIIeAAQWSWWuQslI2AssHBEhpUSCujjDagFApVqtRVmf8ySe4u+y08v+b7efLe2/QQMsd1I+tmdvatnNzbd1Cm5N3NL+CUFPJyiorvgfD+A45GpXIeljjB0kdlHGelPF9ub3Y9ruCcKM8/scjKKo4DKF9t7qzhYMqXQ7K2zu2u9zz1Ovc26PBZI6Z57vFptonJZu1EdX5sSEurZtvomtqZ7MCWdLLiLkK7mXxhlRj3+Ewj9EKdSvoofanIV2xOJ4lxP7UDMh0kcmjYmWKvvtwRQt2AxJ20dhSN0ff7IYrpycbRayLfgBK/ZTt4R+gETOkEk2jqilExniZ0Br2fVTN3DRoQ1MzD9MNHNZ8YXYDpoqgmiEKEfr4+XYLpMqEraJXQMEzXCF1HiFBhA5KbRIoRhKKEShDdInJb/ly+0NqvGQ8lj4rQToxOu+sk9+ikYlz5tukOBGnfgR5QmVD/MKxWkL7ZOpkkpfq0Qtjy834/ZDLJLoIos8IPQ/HeTwbFI+122UlpVpAWfsn895+//zQopuP6TfQ/JphzLBqSjhivwpMUTM1SniEA0SOLNKzXQldObVIe+MxOg/ZKhmNGmk6cA1DNaiignPB4O5i8sDy6BKRaMfpEOAS7AAAAAElFTkSuQmCC',
          size: [42, 42],
          offset: [-21, -21],
        },
      ],
      clusterDisableClickZoom: false,
    });
    this.clusterer.options.set({
      gridSize: 80,
    });
    element.yandexMap = this.map;
    element.map = this;
    if (isMobile) {
      this.map.behaviors.enable('multiTouch');
      this.map.behaviors.disable('drag');
    } else {
      this.map.behaviors.enable('drag');
    }
    let { objects, point } = element.dataset;
    if (objects) {
      objects = JSON.parse(objects);
      this.setObjects(objects);
    }
    if (point) {
      point = JSON.parse(point);
      this.setPoint(point);
    }
  }
  setPlacemark(data) {
    let options = {
      balloonContentHeader: data.title,
    };
    if (data.link && data.photo && data.title) {
      options.balloonContentBody = `<a class="map__photo" href="${data.link}"><img src="${data.photo}" alt="${data.title}"/></a>`;
    }
    if (data.text) {
      options.balloonContentBody = data.text;
    }
    let placemark = new ymaps.Placemark(
      [data.coords.lat, data.coords.lng],
      options,
      {
        iconLayout: 'default#image',
        iconImageHref: data.pin.href,
        iconImageSize: [data.pin.width, data.pin.height],
        iconImageOffset: [-(data.pin.width / 2), -data.pin.height],
      }
    );
    return placemark;
  }
  setPoint(point) {
    this.map.geoObjects.removeAll();
    let placemark = this.setPlacemark({
      title: point.title,
      text: point.text,
      coords: point.coords,
      pin: point.pin,
    });
    this.map.geoObjects.add(placemark);
  }
  setObjects(objects) {
    this.clusterer.removeAll();
    let geoObjects = [];
    objects.forEach((object) => {
      try {
        let placemark = {
          photo: object.fields.photos[0].photo.sizes.medium,
          title: object.fields.address,
          link: object.link,
          coords: object.fields.coords,
        };
        geoObjects.push(this.setPlacemark(placemark));
      } catch (e) {
        console.log('Error placemark', e, object);
      }
    });
    this.clusterer.add(geoObjects);
    this.map.geoObjects.add(this.clusterer);
    let bounds = this.clusterer.getBounds();
    if (!bounds) return;
    bounds[0][0] -= 0.02;
    bounds[0][1] -= 0.02;
    bounds[1][0] += 0.02;
    bounds[1][1] += 0.02;
    this.map.setBounds(bounds, {
      checkZoomRange: true,
    });
  }
}

export default Map;
