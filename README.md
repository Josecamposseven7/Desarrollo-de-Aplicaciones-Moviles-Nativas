# Práctica 1: Instalación de Herramientas y Aplicación "Hola Mundo"

**Alumno:** Jose Emmanuel Campos Hurtado  
**Programa:** Ingeniería en Sistemas Computacionales  
**Unidad de Aprendizaje:** Desarrollo de aplicaciones móviles nativas  

## 1. Descripción e Instalación de Herramientas

A continuación, se describen las herramientas instaladas y el proceso realizado para cada una:

* **Android Studio:** Entorno de Desarrollo Integrado (IDE) oficial para Android. 
  * *Instalación:* Se descargó el instalador desde la página oficial, se ejecutó con la configuración estándar y se descargó el SDK junto con una imagen del sistema para el emulador (Virtual Device).
* **JDK (Amazon Corretto):** Kit de desarrollo de Java necesario para compilar el código.
  * *Instalación:* Se descargó el instalador de la versión 17 (o la utilizada), se ejecutó y se agregaron las variables de entorno `JAVA_HOME`.
* **Maven:** Herramienta para la gestión y construcción de dependencias.
  * *Instalación:* Se descargaron los binarios, se descomprimieron en una carpeta local y se agregó la ruta de la carpeta `bin` a la variable PATH del sistema.
* **Git y GitHub:** Sistema de control de versiones y plataforma de alojamiento de repositorios.
  * *Instalación:* Se instaló Git Bash, se configuró el usuario y correo global, y se vinculó con la cuenta creada en GitHub.
* **Flutter:** SDK de Google para desarrollo multiplataforma.
  * *Instalación:* Se descargó el SDK, se ubicó en el disco local, se agregó al PATH y se ejecutó `flutter doctor` para instalar dependencias faltantes (como las licencias de Android).
* **Node.js:** Entorno de ejecución de JavaScript.
  * *Instalación:* Se instaló la versión LTS desde su página oficial dejando las opciones por defecto.
* **Docker:** Plataforma para contenedores.
  * *Instalación:* Se instaló Docker Desktop, requiriendo habilitar la virtualización (WSL2/Hyper-V) en el sistema.

> ## Tabla de Herramientas Instaladas

| Herramienta | Versión Instalada | Sistema Operativo |
| :--- | :--- | :--- |
| **Android Studio** | [25.0.2+-15348964-b329.117 amd64
VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o.] | [Windows 11] |
| **JDK (Amazon Corretto)** | [javac 26.0.2.1+1-7] | [Windows 11] |
| **Maven** | [Apache Maven 3.9.16 ] | [Windows 11] |
| **Git** | [git version 2.55.0.windows.5] | [Windows 11] |
| **Flutter** | [Flutter Channel stable, 3.47.2, on Microsoft Windows [Versi¢n 10.0.26200.9278]] | [Windows 11] |
| **Node.js** | [v24.20.0] | [Windows 11] |
| **Docker** | [Docker version 29.7.2] | [Windows 11] |

### Capturas del proceso de configuración
<img width="697" height="94" alt="Captura de pantalla 2026-09-03 064351" src="https://github.com/user-attachments/assets/e2e6bc9d-ab63-48d3-af58-c3c851b94a3c" />
<img width="869" height="134" alt="Captura de pantalla 2026-09-03 064420" src="https://github.com/user-attachments/assets/c497278b-baa6-453b-bc0f-ff5fb6ba2873" />
<img width="265" height="50" alt="Captura de pantalla 2026-09-03 065118" src="https://github.com/user-attachments/assets/2f2988ff-bf28-4d54-bd27-8c69f2d04350" />
<img width="902" height="222" alt="Captura de pantalla 2026-09-03 064541" src="https://github.com/user-attachments/assets/8672440e-88e5-4569-982c-547f41387750" />
<img width="214" height="51" alt="Captura de pantalla 2026-09-03 064555" src="https://github.com/user-attachments/assets/f1384369-71a2-4a5c-8a46-875878910e58" />
<img width="352" height="48" alt="Captura de pantalla 2026-09-03 064607" src="https://github.com/user-attachments/assets/03d49660-e143-4423-b706-14872c0fe732" />

## Emulador Hello Android
<img width="1919" height="1079" alt="Captura de pantalla 2026-09-03 065443" src="https://github.com/user-attachments/assets/37ace817-0104-41d5-afed-8a1af87c4943" />

## 2. Proyectos Desarrollados y Ejecución

Se desarrollaron tres versiones de una aplicación "Hola Mundo" utilizando diferentes paradigmas:

### A. Versión 1: Android Nativo con Views (XML)
* **Descripción:** Aplicación construida usando el enfoque tradicional de Android, donde la interfaz se diseña en archivos XML y la lógica reside en clases Kotlin/Java.
* **Cómo ejecutar:** Abrir la carpeta `hola_mundo_xml` en Android Studio, esperar la sincronización de Gradle, seleccionar el emulador y presionar el botón "Run" (Shift + F10).

### B. Versión 2: Android Nativo con Jetpack Compose
* **Descripción:** Aplicación creada con el nuevo enfoque declarativo de Android. La interfaz se construye utilizando funciones puras de Kotlin (Composables) sin necesidad de XML.
* **Cómo ejecutar:** Abrir la carpeta `hola_mundo_compose` en Android Studio, sincronizar Gradle y ejecutar en el emulador.

### C. Versión 3: Flutter
* **Descripción:** Aplicación construida con el SDK de Flutter y el lenguaje Dart, estructurada a través de un árbol de Widgets.
* **Cómo ejecutar:** Abrir una terminal en la carpeta `hola_mundo_flutter`, ejecutar `flutter pub get` para descargar dependencias y luego `flutter run` teniendo el emulador abierto.

## 3. Dificultades Encontradas y Soluciones

* **Dificultad 1:** *[Ejemplo: Problemas con las variables de entorno PATH para Flutter y Maven]*
  * **Solución:** *[Ejemplo: Se verificó la ruta exacta en las propiedades del sistema y se reinició la terminal para que aplicaran los cambios.]*
* **Dificultad 2:** *[Ejemplo: El emulador de Android Studio no arrancaba por falta de virtualización]*
  * **Solución:** *[Ejemplo: Se ingresó a la BIOS del equipo para habilitar Intel VT-x / AMD-V.]*
*(Nota: Edita esta sección con los problemas reales que tuviste).*

## 4. Conclusiones y Comparativa de Enfoques

Durante el desarrollo de esta práctica, se observaron claras diferencias entre los tres enfoques de desarrollo:

1. **Views (XML):** Aunque es el estándar clásico, requiere cambiar constantemente entre archivos de diseño y código fuente, lo que puede alargar el tiempo de desarrollo.
2. **Jetpack Compose:** Resultó ser mucho más rápido y moderno. Al tener todo centralizado en Kotlin, la lectura del código es más intuitiva y la creación de la interfaz requiere menos líneas de código.
3. **Flutter:** Destaca por su sistema de recarga en caliente (Hot Reload) y su estructura anidada de Widgets. Su mayor fortaleza es que este mismo código serviría para iOS, aunque requiere aprender la sintaxis específica de Dart.

**Conclusion:** La configuración inicial del entorno es el paso más crítico del desarrollo móvil, ya que dependencias como Java, Gradle y el SDK de Android deben estar perfectamente enlazadas para que los tres enfoques puedan coexistir y compilar sin errores.
