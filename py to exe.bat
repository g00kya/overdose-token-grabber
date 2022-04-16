@echo off
color D
echo   ______     ______     __  __     __  __     ______    
echo  /\  ___\   /\  __ \   /\ \/ /    /\ \_\ \   /\  __ \   
echo  \ \ \__ \  \ \ \/\ \  \ \  _"-.  \ \____ \  \ \  __ \  
echo   \ \_____\  \ \_____\  \ \_\ \_\  \/\_____\  \ \_\ \_\ 
echo    \/_____/   \/_____/   \/_/\/_/   \/_____/   \/_/\/_/ 
echo.
echo                               github:  github.com/g00kya
echo                               discord: gokya#8667
echo.
set /p a="Enter the output name : "
if [%a%]==[] ( 
    echo.
    echo enter a name
    pause
    EXIT /B 1
) 
if [%a%] NEQ [] (
    echo.
    echo Name is: %a%
    pyinstaller --clean --onefile --noconsole -i NONE -n %a% main.py
    rmdir /s /q __pycache__
    rmdir /s /q build
    del /f / s /q %a%.spec
    echo.
    echo generated exe as %a%.exe in the dist folder
    echo.
    pause
    EXIT /B 1
)