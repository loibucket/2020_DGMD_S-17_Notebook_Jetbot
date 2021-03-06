git clone https://github.com/Pyrestone/jetson-fan-ctl
cd jetson-fan-ctl
sh install.sh

:'
#works for pwm fan only (4pin)

sudo nano /etc/automagic-fan/config.json
sudo systemctl enable automagic-fan
sudo systemctl disable automagic-fan
sudo systemctl status automagic-fan 
sudo systemctl restart automagic-fan 
sudo systemctl is-enabled automagic-fan

#modify rc.local only if automagic-fan does not start on boot
sudo nano /etc/rc.local
sudo chmod u+x rc.local
sudo systemctl status rc-local
sudo systemctl is-enabled rc-local

#!/bin/bash
sleep 10
sudo /usr/bin/jetson_clocks
sudo sh -c "echo 255 > /sys/devices/pwm-fan/target_pwm"

https://github.com/Pyrestone/jetson-fan-ctl
'