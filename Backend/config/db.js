const mongoose = require('mongoose');

const username = encodeURIComponent("caopi3407");
const password = encodeURIComponent("m6KLh9fAol8RR7go");

const conn = mongoose.createConnection('mongodb+srv://caopi3407:m6KLh9fAol8RR7go@bola-db.72txi.mongodb.net/?retryWrites=true&w=majority&appName=bola-db').on('open', () => {
    console.log("MongoDB Connected");
}).on('error', () => {
    console.log("MongoDB Connection Error")
});

module.exports = conn;