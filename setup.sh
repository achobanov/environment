#
cd bash
./setup.sh
cd ..

cd git
./setup.sh
echo git setup complete!
cd ..

cd rb-tray
./setup.bat
echo waiting for rb-tray to startup..
sleep 5
cd ..
echo rb-tray setup complete!

cd monitors
./setup.bat
cd ..
echo monitors input-switch setup complete!

cd duckdns-updater
./setup.bat
echo DuckDNS-Updater setup complete!
cd ..