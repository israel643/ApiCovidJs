export const queries = {
    //Query's de la tabla GrupoCuatrimestre
    getAllGrupsC: 'SELECT Turno, Modalidad, Extra FROM GrupoCuatrimestre',

    addNewGrupC: 'INSERT INTO GrupoCuatrimestre (F_ProgEd, F_Grupo, F_Cuatri, Turno, Modalidad, Extra) ' +
    'VALUES (@F_ProgEd, @F_Grupo, @F_Cuatri, @Turno, @Modalidad, @Extra);',

    getGrupById: 'SELECT Turno, Modalidad, Extra FROM GrupoCuatrimestre WHERE Id_GruCuat = @Id_GruCuat',

    deleteGrupsC: 'DELETE FROM GrupoCuatrimestre WHERE	Id_GruCuat = @Id_GruCuat',

    //Query's de la tabla PositivoAlumno
    getAllPositivoAlum: 'select ID_posAl, FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra,F_Alumno ' + 
    'from PositivoAlumno;',

    getPositivosAlumByID: 'select ID_posAl, FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra,F_Alumno ' +
    'from PositivoAlumno WHERE ID_posAl = @ID_posAl;',

    deletePositivoAlum: 'delete from PositivoAlumno WHERE	ID_posAl = @ID_posAl',

    addNewPositivoAlumno: 'insert into PositivoAlumno ( FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra, F_Alumno)' + 
    'values (@FechaConfirmado, @Comprobacion, @Antecedentes, @Riesgo, @NumContagio, @Extra, @F_Alumno);',

    //Query's de la tabla SeguimientoAl

    getAllSeguimientoAl: 'select  Id_Seguimiento,	F_PositivoAL,	F_medico,	Fecha,	Form_Comunica,	Reporte,	Entrevista,	Extra from SeguimientoAL',

    getSeguimientoAlByID: 'select  Id_Seguimiento,	F_PositivoAL,	F_medico,	Fecha,	Form_Comunica,	Reporte,	Entrevista,	Extra from SeguimientoAL ' + 
    'WHERE Id_Seguimiento = @Id_Seguimiento;',

    deleteSeguimientoAl: 'delete from SeguimientoAL WHERE	Id_Seguimiento = @Id_Seguimiento',

    addNewSeguimientoAl: 'insert into SeguimientoAL (F_PositivoAL, F_medico, Fecha,	Form_Comunica, Reporte, Entrevista, Extra)' + 
    ' values  ( @F_PositivoAL, @F_medico, @Fecha, @Form_Comunica, @Reporte, @Entrevista, @Extra);',
}