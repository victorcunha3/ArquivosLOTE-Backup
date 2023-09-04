@echo off

if NOT EXIST "C:\Users\Aprendiz\Desktop\teste\js" (
    echo a pasta raiz não foi encontrada.
    EXIT /B
)

IF NOT EXIST "C:\Users\Aprendiz\Desktop\teste\backup" (
    echo a pasta direção não existe
    MKDIR "C:\Users\Aprendiz\Desktop\teste\backup"
    echo pasta criada e realizando backup...
    xcopy "C:\Users\Aprendiz\Desktop\teste\js" "C:\Users\Aprendiz\Desktop\teste\backup" /e /c /i /h /y
    EXIT /B
)

echo realizando backup...
xcopy "C:\Users\Aprendiz\Desktop\teste\js" "C:\Users\Aprendiz\Desktop\teste\backup" /e /c /i /h /y

if %errorlevel% equ 0 (
    echo Backup concluído com sucesso.
) else (
    echo Ocorreu um erro durante o backup.
)

pause