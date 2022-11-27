import app from "./app";
import './models/connection'

app.listen(app.get('port'))

console.log(`Server Listening on Port ${app.get('port')}`)