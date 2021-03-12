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

## Dockerizando

Archivo Dockerfile

-   Crear imagen

```
docker build . -t apir:0.0.2
```

-   Listar imagenes docker

```
docker images
```

-   Ejecutar imagen

```
docker run --rm -p 8000:8000 apir:0.0.2
```

## Control de versiones

### 0.0.2

Ambiente dockerizado, se debe indicar el host en el archivo `main.R` para el correcto funcionamiento.

### 0.0.1

El archivo `plumber.R` contiene el diseño de la API usando comentarios `#*`. Define tres endpoints, `/echo` llamada por GET, `/plot` llamada GET, `/sum` llamada POST.

El archivo `main.R` contiene la configuración para la ejecución del archivo `plumber.R`.
Al ejecutar el archivo `main.R` se expone el puerto 8000.

```
curl "http://127.0.0.1:8000/echo?msg=hello"
```

Visitar la URL

```
url "http://127.0.0.1:8000/plot"
```

```
curl --data "a=4&b=3" "http://localhost:8000/sum"
```

```
curl -H "Content-Type: application/json" --data '{"a":4, "b":5}' http://localhost:8000/sum
```
