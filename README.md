# Entorno de trabajo para scripts en bash

## Descripción

Este proyecto ofrece un entorno de trabajo optimizado para el desarrollo de scripts en Bash, independientemente del sistema operativo utilizado. La idea es proporcionar una configuración que simplifique el proceso de creación, prueba y ejecución de scripts en Bash, eliminando las posibles complicaciones asociadas con las diferencias entre sistemas operativos.

## Características

- **Portabilidad:** Permite el desarrollo de scripts Bash que funcionan de manera consistente en diversas plataformas, como Linux, macOS y Windows.
- **Configuración predefinida:** Incluyendo una configuración predeterminada que facilita el inicio rápido del desarrollo sin la necesidad de configuraciones adicionales.
- **Estructura del proyecto:** Ofrece una estructura de proyecto organizada para la gestión de scripts y recursos asociados

## Requisitos Previos

Para comenzar a utilizar este entorno de trabajo, solo necesitas tener Docker instalado en tu sistema. El contenedor Docker proporciona un ambiente aislado y preconfigurado para el desarrollo de scripts en Bash.

## Configuración del Entorno

Sigue las siguientes instrucciones para configurar el entorno de desarrollo:

1. **Clona el Repositorio:**

```
git clone https://github.com/alufer8673/entorno_bash.git
cd entorno_bash
```

2. **Configura las variables de entorno:**
   Editar el archivo `.env` para ajustar las variables según tu preferencia

```
USER_ID=1001
GROUP_ID=1002
USER_NAME=user
GROUP_NAME=group
```
3. **Crea la carpeta ejercicios_bash**
**Nota:** Si estás en Linux debes hacer este paso.

```
mkdir ejercicios_bash
chmod 777 ejercicios_bash
```

4. **Inicia el entorno Docker:**

```
docker-compose up -d
```

## Uso

Accede al contenedor para interactuar con bash:

```
docker exec -it entorno_bash /bin/bash
```

## Almacenamiento de archivos

Todos los archivos que crees dentro del contenedor se guardarán automáticamente en la carpeta `ejercicios_bash` en tu sistema de archivos local. Lo que permite una fácil transferencia y persistencia de los datos entre el entorno de desarrollo y tu máquina host.

Cuando trabajas dentro del contenedor, la carpeta `/home/${USER_NAME}` del contenedor está vinculada a la carpeta `ejercicios_bash` en el directorio raíz del proyecto en tu máquina host. Esto significa que cualquier archivo que crees o modifiques dentro del contenedor estará reflejado en la carpeta `ejercicios_bash` en tu sistema de archivos local.

Asegúrate de revisar y gestionar tus archivos en la carpeta `ejercicios_bash` para mantener un seguimiento adecuado de tu trabajo y facilitar la persistencia de los datos.

¡Ahora estás listo para comenzar a desarrollar tus scripts en Bash sin preocuparte por las diferencias entre sistemas operativos!
