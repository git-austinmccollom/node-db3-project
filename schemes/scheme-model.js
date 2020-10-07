const db = require('./connection.js')

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update
}

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes').where({ id }).first()
}

function findSteps(id) {
    return db('steps').where({ scheme_id: id })
}

async function add(scheme) {
    const id = await db('schemes').insert(scheme)
    return findById(id)
}

function update(changes, id) {
    return db('schemes').where({ id }).update(changes)
}