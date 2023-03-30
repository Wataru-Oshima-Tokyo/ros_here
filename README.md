# ROS_HERE
## How to build docker image and install commands

```
cd ~/ros_here/<the version you want to use>
./build_docker.sh && \
./ez_bin_install
```

## How to use
Go to the working space for ros pacakges (ex. cd ~/ros2_ws/src/ros_central_servers)
and use the command
```
<your env name>_here  (ex. humble_here)
``` 

Your packages are mounted on the docker workspace called /external <br>
after bulding the packages, you can use them 

## If you have packages you always want to use when you get into the env
Go to the directory when the build script automatically created  
```
~/.ros_here_persist/<your env name>_ws/src
```
clone ros packages you want
```
git clone <packages you want>  (ex. git clone -b main-ros2 https://github.com/TechShare-inc/techshare-ros-pkg)
```

go to the working space (ex. cd ~/ros2_ws/src/ros_central_servers)<br>
and dive into the docker env
```
<your env name>_here  (ex. humble_here)
```

Now you will see the packages you cloned in the local host in /global_ws/src <br>
so you can build it
```
cd /gloabal_ws && \
colcon build --symlink-install
echo "/global_ws/install/setup.bash" > ~/.bashrc
```

### Now every time you are in the docker env, the pacages you build can be used.


