var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.post("/cadastrar", function (req, res) {
     // função a ser chamada quando acessar /dashboard/cadastrar
    dashboardController.cadastrar(req, res);
});

router.get("/listar", function (req, res) {
    // função a ser chamada quando acessar /dashboard/listar
    dashboardController.listar(req, res);
});


module.exports = router;