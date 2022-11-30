"use strict";

var _app = _interopRequireDefault(require("./app"));
require("./models/connection");
function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }
_app["default"].listen(_app["default"].get('port'));
console.log("Server Listening on Port ".concat(_app["default"].get('port')));