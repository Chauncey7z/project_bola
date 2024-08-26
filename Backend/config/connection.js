//const { MongoClient } = require('mongodb');
const { default: mongoose } = require('mongoose');

const uri = "mongodb+srv://caopi3407:m6KLh9fAol8RR7go@bola-db.72txi.mongodb.net/bola-db?retryWrites=true&w=majority&appName=bola-db"

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