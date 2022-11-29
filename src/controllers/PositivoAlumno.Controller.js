import {SqlConnection, sql, queries} from '../models';


//consulta todos los alumnos positivos
export const getAlumPositivos = async (req, res) => {
    try {
        const pool = await SqlConnection();
        const result = await pool.request().query(queries.getAllPositivoAlum);
        res.json(result.recordset);
    } catch (error) {
        res.status(500);
        res.send(error.message)
    }
};

// Consulta Alumnos Positivos por ID

export const getAlumPositivosByid = async (req, res) =>{

    const {id} = req.params;

    const pool = await SqlConnection();
    const result = await 
    pool.request()
        .input("ID_posAl",id)
        .query(queries.getPositivosAlumByID)

    console.log(result)

    res.send(result.recordset[0]);
}  

// Insertado de Alumnos positivos
export const InsertAlumPositivos = async (req, res) => {
    const { FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra, F_Alumno} = req.body

    if (FechaConfirmado == null || Comprobacion == null || Antecedentes == null) {
        return res.status(400).json({
            msg: 'Bad Request!! Llena todos los campos'
        })
    }

    if (Riesgo == null || NumContagio == null || F_Alumno == null ) {
        return res.status(400).json({
            msg: 'Bad Request!! Llena todos los campos'
        })
    }

    try {
        const pool = await SqlConnection();

        await pool.request()
            .input("FechaConfirmado", sql.Date, FechaConfirmado)
            .input("Comprobacion", sql.VarChar, Comprobacion)
            .input("Antecedentes", sql.VarChar, Antecedentes)
            .input("Riesgo", sql.VarChar, Riesgo)
            .input("NumContagio", sql.TinyInt, NumContagio)
            .input("Extra", sql.VarChar, Extra)
            .input("F_Alumno", sql.Int, F_Alumno)
            .query(queries.addNewPositivoAlumno)

        res.json({
            FechaConfirmado,
            Comprobacion,
            Antecedentes,
            Riesgo,
            NumContagio,
            Extra,
            F_Alumno
        })

    } catch (error) {
        res.status(500);
        res.send(error.message)
    }
}

// Eliminacion por Id

export const EliminarAlumPositivo = async (req, res) =>{

    const {id} = req.params;

    const pool = await SqlConnection();
    const result = await 
    pool.request()
        .input("ID_posAl",id)
        .query(queries.deletePositivoAlum)

    res.sendStatus(204);
}  