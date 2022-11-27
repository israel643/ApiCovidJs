import {SqlConnection} from '../models/connection';

export const getGrupos = async (req, res) => {
    const pool = await SqlConnection();
    const result = await pool.request().query('select * from Alumno'); 
    res.json(result);
};