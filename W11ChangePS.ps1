Write-Host "[1] Izquierda     [2] Abajo (DEFAULT)  [3] Derecha"
Write-Host "--------------------------------------------------"

$MYNAME= Read-Host -Prompt "Intruduce el numero en consecuencia para cambiar la taskbar"

if($MYNAME -le "1") {
   Write-Host "Rotando taskbar, tiempo aproximado [10 Segundos]"
   start Izquierda.reg
   Start-Sleep -Seconds 10
   taskkill /f /im explorer.exe 
   start explorer.exe
}elseif($MYNAME -le "2") {
   Write-Host "Rotando taskbar, tiempo aproximado [10 Segundos]"
   start Abajo.reg
   Start-Sleep -Seconds 10
   taskkill /f /im explorer.exe 
   start explorer.exe
}elseif($MYNAME -le "3") {
   Write-Host "Rotando taskbar, tiempo aproximado [10 Segundos]"
   start Derecha.reg
   Start-Sleep -Seconds 10
   taskkill /f /im explorer.exe 
   start explorer.exe
}else {
   Write-Host ""
   Write-Host "Opcion no valida"
   Write-Host ""
}