const express = require('express');
const app = express();
const port = 3000;

const { routerApi } = require('./routes/main.routes')

app.use(express.json());

// ROUTES
routerApi(app);

// SERVER
app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
});
