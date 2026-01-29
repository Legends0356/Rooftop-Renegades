@echo off
title Rooftop Renegade
echo Launching Rooftop Renegade...
java --module-path "C:\Users\leona\VSCodeProjects\RooftopRenegades\openjfx-21.0.10_windows-x64_bin-sdk\javafx-sdk-21.0.10\lib" ^
     --add-modules javafx.controls,javafx.fxml,javafx.media,javafx.graphics ^
     -cp bin main.MainApplication
pause