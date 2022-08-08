import Request from './request';
import { eventDecorator } from './helpers';
class Search {
  constructor(props = {}) {
    this.props = props;
    this.button = document.querySelector('.search__button');
    this.popup = document.querySelector('.search__popup');
    this.input = this.popup.querySelector('.search__popup__form__input');
    this.resetButton = this.popup.querySelector('.search__popup__form__clear');
    this.resultWrapper = document.querySelector(
      '.search__popup__result__wrapper'
    );
    this.result = this.resultWrapper.querySelector('.search__popup__result');
    this.init();
  }
  hide() {
    this.props.onHide && this.props.onHide();
    document.body.classList.remove('search-visible');
    this.popup && this.popup.classList.remove('search__popup--active');
    this.button && this.button.classList.remove('search__button--active');
  }
  show() {
    this.props.onShow && this.props.onShow();
    document.body.classList.add('search-visible');
    this.popup.classList.add('search__popup--active');
    this.button.classList.add('search__button--active');
    setTimeout(() => {
      this.input.focus();
    }, 300);
  }
  listeners() {
    this.props.listeners && this.props.listeners(this);
  }
  getResult(search) {
    this.resultWrapper.classList.add('loading');
    Request.get({
      url: '?wc-ajax=get_search_result',
      data: {
        search,
      },
    })
      .then((resp) => {
        this.result.innerHTML = resp;
        this.props.onSearch && this.props.onSearch(this);
      })
      .catch((error) => {
        this.result.innerHTML = '';
      })
      .finally(() => {
        this.resultWrapper.classList.remove('loading');
      });
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
              'search__button--active'
            );
            nextState ? this.show() : this.hide();
          },
        },
      });
    this.resetButton &&
      eventDecorator({
        target: this.resetButton,
        event: {
          type: 'click',
          body: (e) => {
            this.input.value = '';
            this.input.focus();
            this.input.dispatchEvent(new Event('input'));
          },
        },
      });
    this.input &&
      eventDecorator({
        target: this.input,
        event: {
          type: 'input',
          body: (e) => {
            if (!e.target.value) {
              this.result.innerHTML = '';
              this.resultWrapper.classList.remove('loading');
              if (this.timeout) clearTimeout(this.timeout);
              return;
            }
            if (this.timeout) clearTimeout(this.timeout);
            this.timeout = setTimeout(() => {
              this.getResult(e.target.value);
            }, 500);
          },
        },
      });
    document.addEventListener('click', (event) => {
      this.hide();
    });
    this.listeners();
  }
}

export default Search;
