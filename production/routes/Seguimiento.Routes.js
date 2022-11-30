"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _SeguimientoAl = require("../controllers/SeguimientoAl.Controller");
var router = (0, _express.Router)();
//Obtención General
router.get('/SeguimientoAlumnos', _SeguimientoAl.getSeguimientoAL);
// Obtención por Id
router.get('/SeguimientoAlumnos/:id', _SeguimientoAl.getSeguimientoALByid);
// Creacion de nuevos alumnos positivos 
router.post('/SeguimientoAlumnos', _SeguimientoAl.InsertSeguimientoAL);
// Eliminacion por Id de alumnos
router["delete"]('/SeguimientoAlumnos/:id', _SeguimientoAl.EliminarSeguimientoAL);
var _default = router;
exports["default"] = _default;