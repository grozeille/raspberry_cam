sudo apt-get install postfix
sudo apt-get install luvcview
sudo apt-get install subversion libv4l-dev libjpeg8-dev imagemagick
sudo ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h
svn co https://svn.code.sf.net/p/mjpg-streamer/code/
cd code/mjpg-streamer
make USE_LIBV4L2=true clean all
sudo make DESTDIR=/usr install
sudo cp ../../mjpg_streamer.sh /etc/init.d/mjpg_streamer.sh
sudo chmod +x /etc/init.d/mjpg_streamer.sh
sudo update-rc.d mjpg_streamer.sh defaults

#sudo /etc/init.d/mjpg_streamer.sh start
#sudo /etc/init.d/mjpg_streamer.sh stop

# curl http://localhost:8080/?action=stream
