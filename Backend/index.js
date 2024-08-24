const { MongoClient } = require('mongodb');
const db = require('./config/db');

// console.log("pinged deployment, connected to mongodb");

// const uri = "mongodb+srv://caopi3407:<m6KLh9fAol8RR7go>@bola-db.72txi.mongodb.net/?retryWrites=true&w=majority&appName=bola-db"

// const client = new MongoClient(uri);

// async function run() {
//     try {
//         await client.connect();

//         await client.db("admin").command({ ping: 1 });

//         console.log("pinged deployment, connected to mongodb");
//     } finally {
//         await client.close();
//     }
// }

// run().catch(console.dir);

