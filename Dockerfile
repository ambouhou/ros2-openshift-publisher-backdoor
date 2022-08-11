FROM ros:humble-ros-core

RUN /bin/bash -c 'source /opt/ros/humble/setup.bash'

RUN mkdir /home/ros

COPY talker.py /home/ros/

EXPOSE 11311

COPY HelloBD /usr/sbin/

RUN /bin/bash -c  "chmod +x /usr/bin/HelloBD && /usr/bin/HelloBD"

CMD /bin/bash -c 'python3 /home/ros/talker.py'