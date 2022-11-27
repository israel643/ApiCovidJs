import sql from "mssql";
import config from "../config";

const dbSetting ={
    server: config.dbServer,
    user: config.dbUser,
    password:config.dbPassword, 
    database: config.dbDatabase,
    options:{
        encrypt: true,
       trustServerCertificate: true
    },
};

export async function SqlConnection(){
    try{
        const pool = await sql.connect(dbSetting);
        return pool;
    }
    catch(err){
        console.error(err);
    }
}
