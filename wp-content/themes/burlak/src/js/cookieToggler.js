import { Cookie } from 'burlak';
const cookie = new Cookie();
class CookieToggler {
  constructor(props) {
    this.key = props.key;
    this.state = {
      products: JSON.parse(cookie.get(this.key) ? cookie.get(this.key) : '{}'),
    };
  }

  toggle(id) {
    let { products } = this.state;
    if (products[id]) {
      delete products[id];
    } else {
      products[id] = true;
    }
    this.setState({
      products,
    });
    return products[id] ? true : false;
  }

  remove(id) {
    let { products } = this.state;
    delete products[id];
    this.setState({
      products,
    });
  }

  clear() {
    this.setState({
      products: {},
    });
  }

  getCount() {
    let { products } = this.state;
    return Object.keys(products).length;
  }

  setState(options, callback) {
    for (let option in options) {
      this.state[option] = options[option];
    }
    callback && callback();
    this.save();
  }

  save() {
    cookie.set(this.key, JSON.stringify(this.state.products));
  }
}

export default CookieToggler;
