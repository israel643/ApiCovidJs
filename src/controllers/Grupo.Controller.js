import {SqlConnection, sql, queries} from '../models';



// consulta 
export const getGrupos = async (req, res) => {
    try {
        const pool = await SqlConnection();
        const result = await pool.request().query(queries.getAllGrupsC);
        res.json(result.recordset);
    } catch (error) {
        res.status(500);
        res.send(error.message)
    }
};

// Inserción
export const NewInsercion = async (req, res) => {
    const { F_ProgEd, F_Grupo, F_Cuatri, Turno, Modalidad, Extra} = req.body

    if (F_ProgEd == null || F_Grupo == null || F_Cuatri == null) {
        return res.status(400).json({
            msg: 'Bad Request!! Llena todos los campos'
        })
    }

    if (Turno == null || Modalidad == null) {
        return res.status(400).json({
            msg: 'Bad Request!! Llena todos los campos'
        })
    }

    try {
        const pool = await SqlConnection();

        await pool.request()
            .input("F_ProgEd", sql.TinyInt, F_ProgEd)
            .input("F_Grupo", sql.SmallInt, F_Grupo)
            .input("F_Cuatri", sql.SmallInt, F_Cuatri)
            .input("Turno", sql.VarChar, Turno)
            .input("Modalidad", sql.VarChar, Modalidad)
            .input("Extra", sql.VarChar, Extra)
            .query(queries.addNewGrupC)

        res.json({
            F_ProgEd,
            F_Grupo,
            F_Cuatri,
            Turno,
            Modalidad,
            Extra
        })

    } catch (error) {
        res.status(500);
        res.send(error.message)
    }
}

// Obtención por ID

export const getGrupId = async (req, res) =>{

    const {id} = req.params;

    const pool = await SqlConnection();
    const result = await 
    pool.request()
        .input("Id_GruCuat",id)
        .query(queries.getGrupById)

    console.log(result)

    res.send(result.recordset[0]);
}  


// Eliminacion por Id

export const deletGrupId = async (req, res) =>{

    const {id} = req.params;

    const pool = await SqlConnection();
    const result = await 
    pool.request()
        .input("Id_GruCuat",id)
        .query(queries.deleteGrupsC)

    res.sendStatus(204);
}  