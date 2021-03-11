# R_API

Desarrollo de una API REST utilizando lenguaje R y el paquete Plumber

## Primeros pasos

-   Preparar entorno local de desarrollo

    -   Instalar SDK - Software Delevop Kit o Kit de desarrollo según sistema operativo, esto para que el lenguaje pueda ser interpretado en nuestro entorno [R-Project](https://cran.r-project.org/)

    -   Instalar IDE - Integrated Develop Environment o Entorno de desarrollo integrado, que nos permite escribir el código con algunas ayudas en la interfaz para ejecutar sin tener que hacer todo a través de comandos [R Studio desktop](https://rstudio.com/products/rstudio/download/)

Una vez instalado lo anterior, tenemos un entorno local listo para desarrollar en R y ejecutar el codigo para probar.

Para el desarrollo de la API REST (envio y recepción de datos a traves de llamadas HTTP), se utiliza el paquete de R llamado **Plumber** que se instala mediante `install.packages("plumber", repo="http://cran.rstudio.com/")`

> Otra forma de setear los repositorios para obtener los paquetes que se desean instalar es mediante
>
> ```r
> options(repos="https://cran.rstudio.com")
> install.packages("plumber")
> ```
