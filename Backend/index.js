const app = require('./app');
const db = require('./config/connection');
const userModel = require('./model/user_model');

app.get('/', (req, res) => {
    res;
});

const uri = db.uri;

app.listen(3000, () => {
    console.log('Server Listening on Port ${uri}');
});