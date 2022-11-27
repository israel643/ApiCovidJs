import { Router } from "express";
import {getGrupos} from '../controllers/Grupo.Controller';

const router = Router();

router.get('/Grupos', getGrupos);

// router.post('/Grupos');

// router.delete('/Grupos' );

// router.put('/Grupos' );


export default router
