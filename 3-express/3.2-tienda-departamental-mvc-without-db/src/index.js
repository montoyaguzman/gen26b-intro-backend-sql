const express = require('express');
const app = express();
const port = 3000;

const { routerApi } = require('./routes/main.routes')

app.use(express.json());

// app.get('/', (req, res) => {
//     console.log('req', req);
//     res.send('saludos desde express...');
// });

// ROUTES
routerApi(app);

// SERVER
app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
});
