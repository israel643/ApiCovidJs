"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = _interopRequireDefault(require("express"));
var _config = _interopRequireDefault(require("./config"));
var _Grupo = _interopRequireDefault(require("./routes/Grupo.Routes"));
var _PositivosAlumno = _interopRequireDefault(require("./routes/PositivosAlumno.Routes"));
var _Seguimiento = _interopRequireDefault(require("./routes/Seguimiento.Routes"));
function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }
// cors 
var cors = require('cors');
// impotaciones extrenas

var app = (0, _express["default"])();
// habilitar 
app.use(cors());

// configuracion de los puertos
app.set('port', _config["default"].port);

// Middlewares (Intercambio de informacion)
app.use(_express["default"].json());
app.use(_express["default"].urlencoded({
  extended: false
}));

// Rutas de cada servicio 
app.use(_Grupo["default"]);
app.use(_PositivosAlumno["default"]);
app.use(_Seguimiento["default"]);
var _default = app;
exports["default"] = _default;