const express = require('express');
const { productsRouter } = require('./products/index');
const router = express.Router();

const routerApi = (app) => {
    app.use('/api/v0', router);
    app.use('/', (req, res) => {
        res.send('saludos desde express...');
    });
    router.use('/products', productsRouter);
    // router.use('/customers', customersRouter);
};

module.exports = { routerApi };