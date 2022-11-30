export const queries = {
    //Query's de la tabla GrupoCuatrimestre
    getAllGrupsC: 'SELECT GC.Id_GruCuat, PE.ProgramaEd, Grupo.Grado, Grupo.Letra,cuatri.Periodo, GC.Turno, GC.Modalidad, GC.Extra FROM GrupoCuatrimestre GC INNER JOIN Grupo  ON GC.F_Grupo =  Grupo.Id_grupo  INNER JOIN Cuatrimestre cuatri ON GC.F_Cuatri= cuatri.id_Cuatrimestre INNER JOIN ProgramaEducativo PE ON GC.F_ProgEd =  PE.Id_pe ;',

    addNewGrupC: 'INSERT INTO GrupoCuatrimestre (F_ProgEd, F_Grupo, F_Cuatri, Turno, Modalidad, Extra) ' +
    'VALUES (@F_ProgEd, @F_Grupo, @F_Cuatri, @Turno, @Modalidad, @Extra);',

    getGrupById: 'SELECT GC.Id_GruCuat, PE.ProgramaEd, Grupo.Grado, Grupo.Letra,cuatri.Periodo, GC.Turno, GC.Modalidad, GC.Extra FROM GrupoCuatrimestre GC INNER JOIN Grupo  ON GC.F_Grupo =  Grupo.Id_grupo  INNER JOIN Cuatrimestre cuatri ON GC.F_Cuatri= cuatri.id_Cuatrimestre INNER JOIN ProgramaEducativo PE ON GC.F_ProgEd =  PE.Id_pe  WHERE Id_GruCuat = @Id_GruCuat;',

    deleteGrupsC: 'DELETE FROM GrupoCuatrimestre WHERE	Id_GruCuat = @Id_GruCuat',

    //Query's de la tabla PositivoAlumno
    getAllPositivoAlum: 'SELECT PosAl.ID_posAl, PosAl.FechaConfirmado, PosAl.Comprobacion, PosAl.Antecedentes, PosAl.Riesgo, PosAl.NumContagio, PosAl.Extra, Al.Matricula, Al.Nombre, Al.Ap_pat, Al.Ap_mat, Al.Genero FROM PositivoAlumno PosAl INNER JOIN Alumno Al ON PosAl.F_Alumno= Al.ID_Alumno ',

    getPositivosAlumByID: 'SELECT PosAl.ID_posAl, PosAl.FechaConfirmado, PosAl.Comprobacion, PosAl.Antecedentes, PosAl.Riesgo, PosAl.NumContagio, PosAl.Extra, Al.Matricula, Al.Nombre, Al.Ap_pat, Al.Ap_mat, Al.Genero FROM PositivoAlumno PosAl INNER JOIN Alumno Al ON PosAl.F_Alumno= Al.ID_Alumno WHERE ID_posAl = @ID_posAl;',

    deletePositivoAlum: 'DELETE FROM PositivoAlumno WHERE	ID_posAl = @ID_posAl',

    addNewPositivoAlumno: 'INSERT INTO PositivoAlumno ( FechaConfirmado, Comprobacion, Antecedentes, Riesgo, NumContagio, Extra, F_Alumno)' + 
    'VALUES (@FechaConfirmado, @Comprobacion, @Antecedentes, @Riesgo, @NumContagio, @Extra, @F_Alumno);',

    //Query's de la tabla SeguimientoAl

    getAllSeguimientoAl: 'SELECT SegAl.Id_Seguimiento, SegAl.Fecha, SegAl.Form_Comunica, SegAl.Reporte, SegAl.Entrevista, SegAl.Extra, PosAl.FechaConfirmado, PosAl.Riesgo, PosAl.NumContagio, Medico.Nombre, Medico.App, Medico.Apm, Medico.horario, Medico.especialidad FROM SeguimientoAL SegAl INNER JOIN PositivoAlumno PosAl ON SegAl.F_PositivoAL= PosAl.ID_posAl INNER JOIN Medico ON SegAl.F_medico= Medico.ID_Dr ;',

    getSeguimientoAlByID: 'SELECT SegAl.Id_Seguimiento, SegAl.Fecha, SegAl.Form_Comunica, SegAl.Reporte, SegAl.Entrevista, SegAl.Extra, PosAl.FechaConfirmado, PosAl.Riesgo, PosAl.NumContagio, Medico.Nombre, Medico.App, Medico.Apm, Medico.horario, Medico.especialidad FROM SeguimientoAL SegAl INNER JOIN PositivoAlumno PosAl ON SegAl.F_PositivoAL= PosAl.ID_posAl INNER JOIN Medico ON SegAl.F_medico= Medico.ID_Dr WHERE Id_Seguimiento = @Id_Seguimiento;',

    deleteSeguimientoAl: ' DELETE FROM SeguimientoAL WHERE	Id_Seguimiento = @Id_Seguimiento',

    addNewSeguimientoAl: 'INSERT INTO SeguimientoAL (F_PositivoAL, F_medico, Fecha,	Form_Comunica, Reporte, Entrevista, Extra)' + 
    ' VALUES  ( @F_PositivoAL, @F_medico, @Fecha, @Form_Comunica, @Reporte, @Entrevista, @Extra);',
}