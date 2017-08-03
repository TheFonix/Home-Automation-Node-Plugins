read -p "Are you on Ubuntu 16.04 (y/n)?" CONT
if [ "$CONT" = "y" ]; then

echo "Making sure you have Git installed!"
  sudo apt-get install git

echo "Installing the MQTT Switcher"
  npm i -g homebridge-multi

echo "Installing the Dyson Switcher, this is a bit more complicated!"
  sleep 1
    npm i -g homebridge-dyson
      cd /usr/local/lib/node_modules/homebridge-dyson
        rm -rf *
          rm -rf .*
            git clone https://github.com/TheFonix/homebridge-dyson-nu.git .

echo "Installing Mqtt"
  npm i -g mqtt

echo "Installing RGB HTTP"
  npm i -g homebridge-better-http-rgb

echo "Installing HTTP switcher"
  npm i -g homebridge-http-multiswitch

echo "Install wake on lan application"
  npm install -g homebridge-wol

echo "Done"

else 

echo "Sorry this script was only created for Ubuntu 16.04, change your OS then try again! Sorry"

fi
