"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _Grupo = require("../controllers/Grupo.Controller");
var router = (0, _express.Router)();
router.get('/Grupos', _Grupo.getGrupos);
// Obtención por Id
router.get('/Grupos/:id', _Grupo.getGrupId);
// Creacion de nuevos grupos 
router.post('/Grupos', _Grupo.NewInsercion);
// Eliminacion por Id
router["delete"]('/Grupos/:id', _Grupo.deletGrupId);
var _default = router;
exports["default"] = _default;