put video and script in this route
/home/user/.config/.sysvideo/videoplayback.mp4
/home/user/.config/.sysvideo/your.sh

ejecutar para permiso y tarea programada
chmod +x /home/user/.config/.sysvideo/your.sh
crontab -e

add this para ejecutar (cada 15 min)
*/15 * * * * DISPLAY=:0 /home/user/.config/.sysvideo/your.sh

ejecutar para detener
crontab -l | grep -v 'your.sh' | crontab -
rm -rf /home/user/.config/.sysvideo
