import Request from './request';
import { eventDecorator } from './helpers';
class Cart {
  constructor(props = {}) {
    this.props = props;
    this.button = document.querySelector('.cart__button');
    this.popup = document.querySelector('.cart__popup');
    this.init();
  }
  hide() {
    this.props.onHide && this.props.onHide();
    document.body.classList.remove('cart-visible');
    this.popup && this.popup.classList.remove('cart__popup--active');
    this.button && this.button.classList.remove('cart__button--active');
  }
  show() {
    this.props.onShow && this.props.onShow();
    document.body.classList.add('cart-visible');
    this.popup.classList.add('cart__popup--active');
    this.button.classList.add('cart__button--active');
  }
  listeners() {
    this.props.listeners && this.props.listeners(this);
  }
  init() {
    [this.button, this.popup].forEach((item) => {
      item &&
        item.addEventListener('click', (e) => {
          e.stopPropagation();
        });
    });
    this.button &&
      eventDecorator({
        target: this.button,
        event: {
          type: 'click',
          body: (e) => {
            let nextState = !this.button.classList.contains(
              'cart__button--active'
            );
            nextState ? this.show() : this.hide();
          },
        },
      });
    document.addEventListener('click', (event) => {
      this.hide();
    });
    this.listeners();
  }
  update(cart) {
    if (cart.fragments) {
      for (let fragment in cart.fragments) {
        let html = cart.fragments[fragment],
          elements = document.querySelectorAll(fragment);
        elements.forEach((element) => {
          let parser = new DOMParser(),
            htmlDoc = parser.parseFromString(html, 'text/html'),
            htmlFragment = htmlDoc.querySelector(fragment);
          element.innerHTML = htmlFragment.innerHTML;
          element.className = htmlFragment.className;
          for (let data in htmlFragment.dataset) {
            element.dataset[data] = htmlFragment.dataset[data];
          }
        });
      }
    }
    if (cart.redirect) window.router.goTo(cart.redirect);
    this.listeners();
  }
  remove(data) {
    Notification.loadingOn();
    return Request.post({
      url: '?wc-ajax=cart_remove',
      data,
      headers: {
        'Content-Type': '',
      },
    })
      .then((resp) => {
        Notification.addMessage({
          message: '',
          type: 'success',
          delay: 5000,
        });
        this.update(resp);
        return resp;
      })
      .catch((error) => {
        return error;
      })
      .finally(() => {
        setTimeout(() => {
          Notification.loadingOff();
        }, 300);
      });
  }
  add(data) {
    Notification.loadingOn();
    return Request.post({
      url: '?wc-ajax=add_to_cart',
      data,
      headers: {
        'Content-Type': '',
      },
    })
      .then((resp) => {
        if (resp.error) {
          Notification.addMessage({
            message: 'Ошибка добавления товара',
            type: 'error',
            delay: 5000,
          });
        } else {
          Notification.addMessage({
            message: 'Товар добавлен в корзину',
            type: 'success',
            delay: 5000,
          });
          this.update(resp);
        }
        return resp;
      })
      .catch((error) => {
        return error;
      })
      .finally(() => {
        setTimeout(() => {
          Notification.loadingOff();
        }, 300);
      });
  }
  qty(data) {
    Notification.loadingOn();
    return Request.post({
      url: '?wc-ajax=cart_qty',
      data,
      headers: {
        'Content-Type': '',
      },
    })
      .then((resp) => {
        this.update(resp);
        return resp;
      })
      .catch((error) => {
        return error;
      })
      .finally(() => {
        setTimeout(() => {
          Notification.loadingOff();
        }, 300);
      });
  }
  clear() {
    Notification.loadingOn();
    return Request.post({
      url: '?wc-ajax=cart_clear',
    })
      .then((resp) => {
        Notification.addMessage({
          message: '',
          type: 'success',
          delay: 5000,
        });
        this.update(resp);
        return resp;
      })
      .catch((error) => {
        return error;
      })
      .finally(() => {
        setTimeout(() => {
          Notification.loadingOff();
        }, 300);
      });
  }
}

export default Cart;
