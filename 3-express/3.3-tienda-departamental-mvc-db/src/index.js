const express = require('express');
const app = express();
const cors = require('cors');
const { config } = require('./config/')

const port = config.port;

const { routerApi } = require('./routes/main.routes')

app.use(express.json());
// CORS
const whitelist = ['http://127.0.0.1:5500', 'http://example2.com'];
const corsOptions = {
    origin: function (origin, callback) {
        console.log(origin, whitelist.includes(origin))
        if (whitelist.includes(origin) || !origin) {
            callback(null, true)
        } else {
            callback(new Error('No permitido por CORS'))
        }
    }
}
app.use(cors(corsOptions));

// ROUTES
routerApi(app);

// SERVER
app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
});
