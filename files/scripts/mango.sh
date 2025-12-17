chmod 755 /etc/mango/autostart.sh
echo "Ensure autostart.sh is executable"
for u in $(awk -F: '$3 >= 1000 {print $1}' /etc/passwd); do
    chmod 755 /var/home/$u/.config/mango/autostart.sh
done
