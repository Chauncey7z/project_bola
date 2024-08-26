//const { MongoClient } = require('mongodb');
const { default: mongoose } = require('mongoose');
require('dotenv').config({ path: "../Backend/.env" });

const uri = process.env.DATABASE_URL;

//const client = new MongoClient(uri);

// async function conn() {
//     try {
//         let res = await client.connect();
//         console.log("connected ");
//         db = res.db('bola-db');
//         return db.collection('user');
//     } catch (e) {
//         console.log(e);
//     }
// }

const connection = mongoose.createConnection(uri).on('open', () => {
    console.log('connected');
}).on('error', () => {
    console.log("Error");
})

module.exports = connection;