export const queries = {
    getAllGrupsC: 'SELECT Turno, Modalidad, Extra FROM GrupoCuatrimestre',

    addNewGrupC: 'INSERT INTO GrupoCuatrimestre (F_ProgEd, F_Grupo, F_Cuatri, Turno, Modalidad, Extra) ' +
    'VALUES (@F_ProgEd, @F_Grupo, @F_Cuatri, @Turno, @Modalidad, @Extra);',

    getGrupById: 'SELECT * FROM GrupoCuatrimestre WHERE Id_GruCuat = @Id_GruCuat',

    deleteGrupsC: 'DELETE FROM GrupoCuatrimestre WHERE	Id_GruCuat = @Id_GruCuat'
    
}