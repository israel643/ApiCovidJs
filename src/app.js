import express  from "express";
import config from "./config";
import grupoRoutes from './routes/Grupo.Routes'; 

const app = express();

app.set('port', config.port);
app.use(grupoRoutes);

export default app