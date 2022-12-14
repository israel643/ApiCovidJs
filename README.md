# ApiCovidJs

## About 🧾
El objetivo del producto 2 es mostrar la implementación de Web Api que tenga acceso a
una base de datos SQL Server, y mediante métodos de acción de la Web Api se puedan
realizar consultas e inserciones a las diferentes tablas de la base de datos.

Una vez implementada la Web Api, se debe de crear una aplicación Web HTML/CSS/JS, que
pueda consumir e interactuar con los métodos de acción de la Web Api mediante FETCH.

La base de datos es un poco grande porque se trató de modelar el seguimiento de contagios
COVID de alumnos y profesores en la UTP, sin embargo, para no generar un proyecto
demasiado grande, se van a dividir en 4 casos las tablas más relevantes del modelo, es decir,
en la misma base de datos podrán trabajar diferentes alumnos de acuerdo a la asignación
de un caso.

El producto 2 lo pueden realizar de forma individual o en equipos de hasta 2 personas,
aunque se haga una asignación individual, quienes me notifiquen que van a trabajar en
equipo, se enfocarán en un solo caso (el cual yo voy a definir).

La revisión del producto será de forma presencial en el laboratorio, y si trabajan en equipo
deberán sustentar que los dos integrantes conocen todo el código, tanto de la Web Api
como de la aplicación Web.

Para todas las tablas asignadas en cada caso se deberá realizar las funciones de:

- Inserción (considere que el usuario no debe de aprenderse ids de llaves foráneas,
y que sea fácil para el usuario realizar la inserción)
- Consulta directa (tal como están los datos en la tabla)
- Consulta para el usuario (una consulta en donde no salgan ids o llaves foráneas,
sino que salga información entendible para el usuario)


## Technologies

| name| version| link|
|----|-------|----|
|Express ⚛️| 4.18.1 |<https://expressjs.com/>|
|Babel 🌐| -- |<https://babeljs.io/>|
|Node Js 🫑| 16.14.0|<https://nodejs.org/es/>|

## How do Install?
1. Necesitamos instalar las siguentes dependencias con el comando:

```
    npm install  
```

2. Para ejecutar el servidor necesitamos el comando: 
```
    npm run dev  
```

## About Node



## License


