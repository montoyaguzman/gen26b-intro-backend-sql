const { Products } = require('../../services/products');
const productObject = new Products();

const get = (req, res) => {
    try {
        const products = productObject.getProducts();
        res.status(200).json(products);
    } catch (error) {
        res.status(500).json({ message: error });
    }
};

const create = (req, res) => {
    try {
        const newProduct = req.body;
        productObject.createProduct(newProduct);
        res.status(201).json({ message: 'todo gucci!', data: newProduct });
    } catch (error) {
        res.status(500).json({ message: error });
    }
};

const editProduct = (req, res) => {
    try {
        const idToModify = req.params.id;
        const newProduct = req.body;
        productObject.modifyProduct(idToModify, newProduct);
        res.status(200).json({ message: 'updated success', id: idToModify });
    } catch (error) {
        res.status(500).json({ message: error });
    }
};

const deleteProduct = (req, res) => {
    try {
        const idToDelete = req.params.id;
        productObject.deleteProduct(idToDelete);
        res.status(200).json({ message: 'product deleted', id: idToDelete });
    } catch (error) {
        res.status(500).json({ message: error });
    }
};

module.exports = {
    get,
    create,
    editProduct,
    deleteProduct,
}