FROM node:alpine

WORKDIR /home/node

RUN apk update && apk add bash

############# Common Setting #############################
# UserName
ARG USERNAME=root

# RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
#     # && echo $SNIPPET >> "/root/.bashrc" \
#     && mkdir /commandhistory \
#     && touch /commandhistory/.bash_history \
#     && chown -R $USERNAME /commandhistory \
#     && echo $SNIPPET >> "/home/$USERNAME/.bashrc"
RUN mkdir -p /home/$USERNAME/.vscode-server/extensions \
    && chown -R $USERNAME \
    /home/$USERNAME/.vscode-server

# RUN chown -R $USERNAME /workspaces
# USER root

CMD /bin/ash -c "while sleep 10; do :; done"