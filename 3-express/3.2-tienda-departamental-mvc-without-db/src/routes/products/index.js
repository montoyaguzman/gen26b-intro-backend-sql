const express = require('express');
const productsRouter = express.Router();

const {
    get,
    create,
    editProduct,
    deleteProduct,
} = require('../../controllers/products')

productsRouter.get('/', get);
productsRouter.post('/', create);
productsRouter.patch('/:id', editProduct);
productsRouter.delete('/:id', deleteProduct);

module.exports = { productsRouter };