export default {
  beforeCreate(event) {
    const { data } = event.params;

    const price = data.price || 0;
    const discount = data.discount || 0;

    const discountAmount = (price * discount) / 100;
    data.final_price = price - discountAmount;
  },

  beforeUpdate(event) {
    const { data } = event.params;

    const price = data.price || 0;
    const discount = data.discount || 0;

    const discountAmount = (price * discount) / 100;
    data.final_price = price - discountAmount;
  },
};
