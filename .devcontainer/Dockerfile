# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.148.1/containers/typescript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version: 14, 12, 10
FROM node:alpine

# VOLUME [ "/workspaces" ]
WORKDIR /workspaces

RUN npm config set registry https://registry.npm.taobao.org

# RUN npm install -g yo generator-code 

# RUN chown node:node /workspaces
RUN chown node:node /usr/local/lib/node_modules/



############# Common Setting #############################
ARG USERNAME=node

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.ash_history" \
    # && echo $SNIPPET >> "/root/.bashrc" \
    && mkdir /commandhistory \
    && touch /commandhistory/.ash_history \
    && chown -R $USERNAME /commandhistory \
    && echo $SNIPPET >> "/home/$USERNAME/.ashrc"
RUN mkdir -p /home/$USERNAME/.vscode-server/extensions \
    && chown -R $USERNAME \
         /home/$USERNAME/.vscode-server
USER node

CMD /bin/sh -c "while sleep 10; do :; done"