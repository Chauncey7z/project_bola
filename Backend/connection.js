const { MongoClient } = require('mongodb');

const uri = "mongodb+srv://caopi3407:m6KLh9fAol8RR7go@bola-db.72txi.mongodb.net/?retryWrites=true&w=majority&appName=bola-db"

const client = new MongoClient(uri);

async function conn() {
    try {
        let res = await client.connect();
        console.log("connected ");
        db = res.db('bola-db');
        return db.collection('user');
    } catch (e) {
        console.log(e);
    }
}

module.exports = conn;