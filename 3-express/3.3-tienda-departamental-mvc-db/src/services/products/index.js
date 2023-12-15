const conn = require('../../db/connection');

class Products {

    constructor() {
        this.products = []
    }

    async getProducts() {


        try {
            const queryString = `
                SELECT Products.sku, Products.sellingPayment, Departments.description 
                    FROM Products INNER JOIN Departments
                ON Departments.idDeparment = Products.idDeparment;
            `;
            const result = await conn.query(queryString);
            // console.log(result);
            // console.log(result.rows);
            return result.rows;
        } catch (error) {
            throw new Error(error);
        }

    }

    async createProduct(newProduct) {

        const {
            sku,
            name,
            purchasePayment,
            sellingPayment,
            idDeparment,
        } = newProduct;

        console.log('service newProduct', sku, name, purchasePayment, sellingPayment, idDeparment);

        try {
            const queryString = `
                INSERT INTO Products(sku, name, purchasePayment, sellingPayment, idDeparment) VALUES ($1, $2, $3, $4, $5);
            `;
            const params = [sku, name, purchasePayment, sellingPayment, idDeparment];
            const result = await conn.query(queryString, params);
            return true;
        } catch (error) {
            throw new Error(error);
        }
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