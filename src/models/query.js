export const queries = {
    //Query's de la tabla GrupoCuatrimestre
    getAllGrupsC: 'SELECT Turno, Modalidad, Extra FROM GrupoCuatrimestre',

    addNewGrupC: 'INSERT INTO GrupoCuatrimestre (F_ProgEd, F_Grupo, F_Cuatri, Turno, Modalidad, Extra) ' +
    'VALUES (@F_ProgEd, @F_Grupo, @F_Cuatri, @Turno, @Modalidad, @Extra);',

    getGrupById: 'SELECT Turno, Modalidad, Extra FROM GrupoCuatrimestre WHERE Id_GruCuat = @Id_GruCuat',

    deleteGrupsC: 'DELETE FROM GrupoCuatrimestre WHERE	Id_GruCuat = @Id_GruCuat',

    //Query's de la tabla PositivoAlumno
    getAllPositivoAlum: 'SELECT ID_posAl, FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra,F_Alumno ' + 
    'FROM PositivoAlumno;',

    getPositivosAlumByID: ' SELECT ID_posAl, FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra,F_Alumno ' +
    'from PositivoAlumno WHERE ID_posAl = @ID_posAl;',

    deletePositivoAlum: 'DELETE FROM PositivoAlumno WHERE	ID_posAl = @ID_posAl',

    addNewPositivoAlumno: 'INSERT INTO PositivoAlumno ( FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra, F_Alumno)' + 
    'VALUES (@FechaConfirmado, @Comprobacion, @Antecedentes, @Riesgo, @NumContagio, @Extra, @F_Alumno);',

    //Query's de la tabla SeguimientoAl

    getAllSeguimientoAl: 'SELECT  Id_Seguimiento,	F_PositivoAL,	F_medico,	Fecha,	Form_Comunica,	Reporte,	Entrevista,	Extra FROM SeguimientoAL',

    getSeguimientoAlByID: 'SELECT  Id_Seguimiento,	F_PositivoAL,	F_medico,	Fecha,	Form_Comunica,	Reporte,	Entrevista,	Extra FROM SeguimientoAL ' + 
    'WHERE Id_Seguimiento = @Id_Seguimiento;',

    deleteSeguimientoAl: 'delete from SeguimientoAL WHERE	Id_Seguimiento = @Id_Seguimiento',

    addNewSeguimientoAl: 'INSERT INTO SeguimientoAL (F_PositivoAL, F_medico, Fecha,	Form_Comunica, Reporte, Entrevista, Extra)' + 
    ' VALUES  ( @F_PositivoAL, @F_medico, @Fecha, @Form_Comunica, @Reporte, @Entrevista, @Extra);',
}