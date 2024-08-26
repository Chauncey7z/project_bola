const db = require('./config/connection');

const insertData = async () => {
    let database = await db();
    const doc = {
        email: "riooctavianusyapieter@gmail.com",
        password: "123456",
        nama: "Rio Octavianus",
        surname: "Yapieter",
    }

    const result = await database.insertOne(doc);
}

insertData();