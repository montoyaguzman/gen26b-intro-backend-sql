const { Products } = require('../../services/products');
const productObject = new Products();

const get = async (req, res) => {
    const limit = req.query.limit;
    const page = req.query.page;
    console.log('query params: ', limit, page);
    try {
        const products = await productObject.getProducts();
        res.status(200).json(products);
    } catch (error) {
        res.status(500).json({ message: error });
    }
};

const create = async (req, res) => {
    try {
        const newProduct = req.body;
        const isRegisterOk = await productObject.createProduct(newProduct);
        const message = isRegisterOk === true ? 'success' : 'fail';
        res.status(201).json({ message: message, data: newProduct });
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