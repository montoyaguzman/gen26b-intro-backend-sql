const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

// ENDPOINTS / RECURSOS

app.get('/', (req, res) => {
    console.log('req', req);
    res.send('saludos desde express...');
});

app.get('/hello-html', (req, res) => {
    res.send('<h1>Hello html</h1>')
})

const products = [
    { id: 1, sku: 'sku001', deparment: 'Hogar' },
    { id: 2, sku: 'sku002', deparment: 'Tecnologia' },
    { id: 3, sku: 'sku003', deparment: 'Belleza y Salud' }
];

// store, products
app.get('/products', (req, res) => {
    res.json(products);
});

app.post('/products', (req, res) => {
    const newProduct = req.body;
    products.push(newProduct);
    res.status(201).json({ message: 'todo gucci!', data: newProduct });
});

// PUT (modificar todo el objeto) / PATCH (modificar una parte del objeto)
app.patch('/products/:id', (req, res) => {
    const idToModify = req.params.id;
    const newProduct = req.body;
    const position = products.findIndex(product => product.id === parseInt(idToModify));
    products[position] = { ...products[position], ...newProduct };
    res.status(200).json({ message: 'updated success', id: idToModify });
});

// DELETE
app.delete('/products/:id', (req, res) => {
    const idToDelete = req.params.id;
    const position = products.findIndex(product => product.id === parseInt(idToDelete));
    products.splice(position, 1);
    res.status(200).json({ message: 'product deleted', id: idToDelete });
});

// SERVER
app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
});
