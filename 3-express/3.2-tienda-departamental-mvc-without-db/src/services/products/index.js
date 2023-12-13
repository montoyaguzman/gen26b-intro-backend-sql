class Products {

    constructor() {
        this.products = []
        this.generateData();
    }

    generateData() {
        this.products = [
            { id: 1, sku: 'sku001', deparment: 'Hogar' },
            { id: 2, sku: 'sku002', deparment: 'Tecnologia' },
            { id: 3, sku: 'sku003', deparment: 'Belleza y Salud' }
        ];
    }

    getProducts() {
        return this.products;
    }

    createProduct(newProduct) {
        this.products.push(newProduct);
    }

    modifyProduct(idToModify, newProduct) {
        const position = this.products.findIndex(product => product.id === parseInt(idToModify));
        this.products[position] = { ...this.products[position], ...newProduct };
    }

    deleteProduct(idToDelete) {
        const position = this.products.findIndex(product => product.id === parseInt(idToDelete));
        this.products.splice(position, 1);
    }

}

module.exports = { Products };