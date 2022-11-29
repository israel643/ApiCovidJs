import { Router } from "express";
import {getAlumPositivos, getAlumPositivosByid, InsertAlumPositivos, EliminarAlumPositivo} from '../controllers/PositivoAlumno.Controller';

const router = Router();
//Obtención General
router.get('/AlumnosPositivos', getAlumPositivos);
// Obtención por Id
router.get('/AlumnosPositivos/:id', getAlumPositivosByid);
// Creacion de nuevos alumnos positivos 
router.post('/AlumnosPositivos', InsertAlumPositivos);
// Eliminacion por Id de alumnos
router.delete('/AlumnosPositivos/:id', EliminarAlumPositivo);




export default router
