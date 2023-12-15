# Intro a back end (express y sql)

Este documento es una **sintesis de la kata** (clases, campus, tareas y proyectos) **más temas extra** (estrechamente relacionados) para brindar la **posibilidad** al estudiante **de ampliar** sus **conocimientos**.

Para su mejor aprovechamiento se recomienda **leerlo como una guía o temario** y **ampliar el contenido** con base en **investigación, autoestudio** y **ejercicios**.

**Estructura de carpetas sugerida**

- kata-1

  - g99-nombre-de-la-kata-1
  - g99-nombre-de-la-kata-1-juanito-banana
- kata-2

  - g99-nombre-de-la-kata-1
  - g99-nombre-de-la-kata-1-juanito-banana

## Temario

1. [Intro a base de datos](#intro-a-base-de-datos)
2. [Diseño de base de datos](#diseno-de-base-de-datos)
3. [PostgreSQL](#postgresql)
4. [API Rest](#api-rest)
5. [ExpressJS](#express)
6. [Deployments](#Deployments)
7. [Proyecto del módulo](#proyecto-del-módulo)
8. [Presentaciones](#presentaciones)
9. [Glosario](#glosario)
10. [Informacion y recursos extra](#informacion-y-recursos-extra)

### Intro a base de datos

working...

### Diseno base de datos

working...

#### Tips de diseño de una DB

1. Hacer una lista de las entidades fuertes de nuestro negocio.
2. Hacer una lista de las relaciones entre las entidades fuertes, incluso si una entidad tiene mas de una relación.
3. Representar en el modelo ER las entidades y relaciones del punto 1 y 2. Posteriormente agregar todos los atributos que considere necesarios (sin normalizar hasta que se este seguro con el cliente que es lo que se requiere).
4. Una vez aprobado el diagrama ER hacer una tabla con datos de prueba para c/entidad.
5. Aplicar las 3 primeras formas de la normalizacion (en orden) a los datos de prueba del punto 4.
6. A raiz del punto 5 salen nuevas tablas y nuevas relacionas, generar una nueva lista de ellas.
7. Hacer el diagrama relacional de acuerdo a las entidades y relaciones del punto 6.
8. Revisar el diagrama relacional con base en las formas normales y en el criterio propio de acuerdo a como funciona el negocio.
9. Realizar el DML y DDL en SQL.

### PostgreSQL

A continuación se muestra un breve de resumen de comandos postgres más útiles.

| Comando                                           | Descripcion                                 |
| ------------------------------------------------- | ------------------------------------------- |
| psql -h localhost -p 5433 -U postgres -p “pass” | Conexión a PostrgreSQL desde la terminal. |
| SELECT version();                                 | Ver la versión de PostrgreSQL.             |
| \\?                                               | Manual de comandos.                         |
| \h command                                       | Detalle de un comando.                      |
| \q                                                | Para salir de la terminal PostrgreSQL.      |
| \l                                                | Ver las base de datos.                      |
| \c name_db                                        | Seleccionar la DB a usar.                   |
| \dt                                               | Mostrar la lista de tablas.                 |
| \d name_table                                     | Mostrar los detalles de la tabla.           |
| \g                                                | Repetir el último comando.                 |
| \s                                                | Ver historial de comandos.                  |
| ctrl + L                                          | Limpiar consola.                            |

### Tipos de datos en PostgreSQL

working...

| Tipo de sentencia | Sentencia (query) |
| ----------------- | ----------------- |
|                   |                   |
|                   |                   |

### Queries de SQL

working...

| Tipo de sentencia | Sentencia (query) |
| ----------------- | ----------------- |
|                   |                   |
|                   |                   |

### API Rest

Información de expressJS en el [repo](https://github.com/montoyaguzman/api-rest).

### ExpressJS

Información de expressJS en el [repo](https://github.com/montoyaguzman/express-js).

### Deployments

La información teárica y práctica sobre deployments se encuentra ubicado en el siguiente [repo](https://github.com/montoyaguzman/deploys).

### Proyecto del módulo

Ir a la carpeta [4-proyecto](./4-proyecto/readme.md)

### Presentaciones

Se encuentran en la  [carpeta assets](./assets/) de este mismo repo.

### Glosario

El glosario se encuentra ubicado en el siguiente [repo](https://github.com/montoyaguzman/gloasario-techie)
