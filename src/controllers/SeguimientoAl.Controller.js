import {SqlConnection, sql, queries} from '../models';


//consulta todos los alumnos positivos
export const getSeguimientoAL = async (req, res) => {
    try {
        const pool = await SqlConnection();
        const result = await pool.request().query(queries.getAllSeguimientoAl);
        res.json(result.recordset);
    } catch (error) {
        res.status(500);
        res.send(error.message)
    }
};

// Consulta Alumnos Positivos por ID

export const getSeguimientoALByid = async (req, res) =>{

    const {id} = req.params;

    const pool = await SqlConnection();
    const result = await 
    pool.request()
        .input("Id_Seguimiento",id)
        .query(queries.getSeguimientoAlByID)

    console.log(result)

    res.send(result.recordset[0]);
}  

// Insertado de Alumnos positivos
export const InsertSeguimientoAL = async (req, res) => {
    const { F_PositivoAL, F_medico, Fecha, Form_Comunica, Reporte, Entrevista, Extra} = req.body

    if (F_PositivoAL == null || F_medico == null || Fecha == null) {
        return res.status(400).json({
            msg: 'Bad Request!! Llena todos los campos'
        })
    }

    if (Form_Comunica == null || Reporte == null || Entrevista == null ) {
        return res.status(400).json({
            msg: 'Bad Request!! Llena todos los campos'
        })
    }

    try {
        const pool = await SqlConnection();

        await pool.request()
            .input("F_PositivoAL", sql.Int, F_PositivoAL)
            .input("F_medico", sql.Int, F_medico)
            .input("Fecha", sql.Date, Fecha)
            .input("Form_Comunica", sql.VarChar, Form_Comunica)
            .input("Reporte", sql.VarChar, Reporte)
            .input("Entrevista", sql.VarChar, Entrevista)
            .input("Extra", sql.VarChar, Extra)
            .query(queries.addNewSeguimientoAl)

        res.json({
            F_PositivoAL,
            F_medico,
            Fecha,
            Form_Comunica,
            Reporte,
            Entrevista,
            Extra
        })

    } catch (error) {
        res.status(500);
        res.send(error.message)
    }
}

// Eliminacion por Id

export const EliminarSeguimientoAL = async (req, res) =>{

    const {id} = req.params;

    const pool = await SqlConnection();
    const result = await 
    pool.request()
        .input("Id_Seguimiento",id)
        .query(queries.deleteSeguimientoAl)

    res.sendStatus(204);
}  