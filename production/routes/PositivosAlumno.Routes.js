"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _PositivoAlumno = require("../controllers/PositivoAlumno.Controller");
var router = (0, _express.Router)();
//Obtención General
router.get('/AlumnosPositivos', _PositivoAlumno.getAlumPositivos);
// Obtención por Id
router.get('/AlumnosPositivos/:id', _PositivoAlumno.getAlumPositivosByid);
// Creacion de nuevos alumnos positivos 
router.post('/AlumnosPositivos', _PositivoAlumno.InsertAlumPositivos);
// Eliminacion por Id de alumnos
router["delete"]('/AlumnosPositivos/:id', _PositivoAlumno.EliminarAlumPositivo);
var _default = router;
exports["default"] = _default;