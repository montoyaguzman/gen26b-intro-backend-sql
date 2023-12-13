const { productsRouter } = require('./products/index');

const routerApi = (app) => {
    app.use('/products', productsRouter);
    // app.use('/customers', customersRouter);
};

module.exports = { routerApi };