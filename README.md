# DHBW_SR_Remote

## Manual

Order für das Repository erstellen: *#*``` mkdir remote_container``` und anschließend: *#*```cd remote/container ```

Clone the repository: *#*``` git clone http://github.com/lschirmbrand/DHBW_SR_Remote ```

Navigate to the docker: *#*``` cd DHBW_SR_Remote ```

Build the docker image: *#*``` docker build -t remotecontainer . ```

Run the docker image: *#*``` docker build -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix remotecontainer bash```

If neccerssary, open new docker terminal: *#*```docker exec -it \<CONTAINERNICKNAME\> bash```