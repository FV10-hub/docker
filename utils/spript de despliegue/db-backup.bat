@echo off
set PGPASSWORD=manager

REM Generar nombre de archivo con fecha y hora
for /f "tokens=1-3 delims=/ " %%a in ('date /t') do (
    set "fecha=%%c_%%b_%%a"
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set "hora=%%a_%%b"
)

REM Ejecutar respaldo en formato SQL
"C:\Program Files\PostgreSQL\15\bin\pg_dump" -U postgres -d db_lubri_campeon -Fc -b -v -f "D:\Sistema\Backup\backup.dump"

REM nos movemos a la ruta del .sql
cd "D:\Sistema\Backup"

REM Comprimir el archivo de respaldo en formato .rar
"C:\Program Files (x86)\WinRAR\WinRAR.exe" a "D:\Sistema\Backup\backup_%fecha%_%hora%.rar" "backup.dump"

REM Eliminar el archivo de respaldo sin comprimir
del "D:\Sistema\Backup\backup.dump"
