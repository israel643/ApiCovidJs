import express  from "express";
import config from "./config";
import grupoRoutes from './routes/Grupo.Routes' ; 
import PosAlumnsRoutes from './routes/PositivosAlumno.Routes'; 
import SeguimientoRoutes from './routes/Seguimiento.Routes'; 

const app = express();

// configuracion de los puertos
app.set('port', config.port);

// Middlewares (Intercambio de informacion)
app.use(express.json());
app.use(express.urlencoded({extended: false}));


// Rutas de cada servicio 
app.use(grupoRoutes);
app.use(PosAlumnsRoutes);
app.use(SeguimientoRoutes);


export default app