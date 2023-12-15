const { Pool } = require('pg');
const { config } = require('../config/');

// const env = config.hostDB
// const port = config.portDB

const {
    hostDB,
    portDB,
    nameDB,
    userDB,
    passwordDB
} = config;

const pool = new Pool({
    user: userDB,
    password: passwordDB,
    host: hostDB,
    port: portDB,
    database: nameDB
});

module.exports = {
    query: (queryString, arrayParams) => pool.query(queryString, arrayParams),
    close: () => pool.end()
}
