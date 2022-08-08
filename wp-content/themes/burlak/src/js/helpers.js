export const eventDecorator = ({ target, event }) => {
  if (target.dataset['event_' + event.type]) return;
  target.addEventListener(event.type, event.body);
  target.setAttribute('data-event_' + event.type, '1');
};

export const declension = (
  value = 1,
  words = ['товар', 'товара', 'товаров']
) => {
  let array = [2, 0, 1, 1, 1, 2];
  return words[
    value % 100 > 4 && value % 100 < 20
      ? 2
      : array[value % 10 < 5 ? value % 10 : 5]
  ];
};

export const formatNumber = (value, deliverSymbol = ',', dotSymbol = '.') => {
  value = value.toString();
  return value
    .replace(
      /\./.test(value) ? /(\d)(?=(?:\d{3})+\.)/g : /(\d)(?=(?:\d{3})+$)/g,
      '$1' + deliverSymbol
    )
    .replace('.', dotSymbol);
};
