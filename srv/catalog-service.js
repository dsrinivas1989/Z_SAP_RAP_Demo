import cds from '@sap/cds';

export default cds.service.impl(async function () {

  const { Books } = this.entities;

  this.on('discountBook', async (req) => {

    const { ID, discount } = req.data;

    await UPDATE(Books)
      .set({
        price: { '-=': discount }
      })
      .where({ ID });

    return 'Book discounted successfully';

  });

});