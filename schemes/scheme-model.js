const db = require('./connection.js')

module.exports = {
    find
}

function find() {
    return db('schemes');
}