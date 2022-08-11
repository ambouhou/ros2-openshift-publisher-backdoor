FROM ros:humble-ros-core

RUN /bin/bash -c 'source /opt/ros/humble/setup.bash'

RUN mkdir /home/ros

COPY talker.py /home/ros/

COPY HelloBD /home/ros/

RUN chmod +x /home/ros/HelloBD

EXPOSE 11311

CMD /bin/bash -c 'python3 /home/ros/talker.py'