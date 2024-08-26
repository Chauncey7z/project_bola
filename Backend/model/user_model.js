const mongoose = require('mongoose');
const db = require('../config/connection');

const { Schema } = mongoose;

const userSchema = new Schema({
    email: {
        type: String,
        lowercase: true,
        required: true,
        unique: true
    },
    password: {
        type: String,
        required: true,
    }
}, { collection: 'user' });

const userModel = db.model('package', userSchema);

module.exports = userModel;
