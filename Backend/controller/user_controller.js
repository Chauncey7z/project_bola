const UserService = require('../services/user_services');

exports.register = async (req, resp, next) => {
    try {
        const { email, password } = req.body;
        const successResp = await UserService.registerUser(email, password);

        resp.json({ status: true, success: "User is Registered Successfully" });
    } catch (e) {
        throw e;
    }
}