FROM cirrusci/flutter:stable
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer/

RUN which adb > readme.md
RUN which flutter >> readme.md

