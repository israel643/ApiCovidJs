import { Router } from "express";
import {getGrupos, NewInsercion, getGrupId, deletGrupId} from '../controllers/Grupo.Controller';

const router = Router();

router.get('/Grupos', getGrupos);
// Obtención por Id
router.get('/Grupos/:id', getGrupId);
// Creacion de nuevos grupos 
router.post('/Grupos', NewInsercion);
// Eliminacion por Id
router.delete('/Grupos/:id', deletGrupId);




export default router
