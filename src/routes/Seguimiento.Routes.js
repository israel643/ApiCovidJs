import { Router } from "express";
import {getSeguimientoAL, getSeguimientoALByid, InsertSeguimientoAL, EliminarSeguimientoAL} from '../controllers/SeguimientoAl.Controller';

const router = Router();
//Obtención General
router.get('/SeguimientoAlumnos', getSeguimientoAL);
// Obtención por Id
router.get('/SeguimientoAlumnos/:id', getSeguimientoALByid);
// Creacion de nuevos alumnos positivos 
router.post('/SeguimientoAlumnos', InsertSeguimientoAL);
// Eliminacion por Id de alumnos
router.delete('/SeguimientoAlumnos/:id', EliminarSeguimientoAL);




export default router