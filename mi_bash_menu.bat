@echo off
:inicio
echo ==================================
echo      Bienvenido a Mi Bash Menu
echo ==================================
echo 1. Abrir Microsoft Word
echo 2. Abrir Microsoft Excel
echo 3. Abrir Página de la Universidad Javeriana Cali
echo 4. Abrir Página Favorita
echo 5. Reproducir Video Musical Favorito 1
echo 6. Reproducir Video Musical Favorito 2
echo 7. Salir
echo ==================================
set /p opcion=Elige una opcion (1-7): 

if "%opcion%"=="1" goto abrirWord
if "%opcion%"=="2" goto abrirExcel
if "%opcion%"=="3" goto abrirJaveriana
if "%opcion%"=="4" goto abrirFavorito
if "%opcion%"=="5" goto abrirFavorito1
if "%opcion%"=="6" goto abrirFavorito2
if "%opcion%"=="7" goto salir

echo Opción inválida, intenta de nuevo.
goto inicio

:abrirWord
echo Abriendo Word...
start winword
goto inicio

:abrirExcel
echo Abriendo Excel...
start excel
goto inicio

:abrirJaveriana
echo Abriendo Javeriana Cali...
start https://www.javerianacali.edu.co
goto inicio

:abrirFavorito
set /p pagina=¿A que página quieres ingresar? (sin www. ni .com): 
start https://www.%pagina%.com
goto inicio

:abrirFavorito1
echo Reproduciendo Video Musical Favorito 1...
start https://youtu.be/d020hcWA_Wg?si=Q4x4h5aIcaU4gWhE
goto inicio

:abrirFavorito2
echo Reproduciendo Video Musical Favorito 2...
start https://youtu.be/krA4QNOpFbU?si=ioWc5xcAyVvce30y
goto inicio

:salir
echo Has decidido salir del menú. Gracias por usar el Mini Menú.
exit
