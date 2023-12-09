const express = require('express');
const app = express();
const port = 3000;

// ENDPOINTS / RECURSOS

app.get('/', (req, res) => {
    console.log('req', req);
    res.send('saludos desde express...');
});

app.get('/hello-html', (req, res) => {
    res.send('<h1>Hellow html</h1>')
})

// SERVER
app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
});
