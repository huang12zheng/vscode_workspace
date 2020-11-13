# Note: You can use any Debian/Ubuntu based image you want. 
FROM ubuntu

# keep history
RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
    && echo $SNIPPET >> "/root/.bashrc" \
    && mkdir /commandhistory \
    && touch /commandhistory/.bash_history

# Avoiding extension reinstalls on container rebuild
RUN mkdir -p /home/$USERNAME/.vscode-server/extensions
        # /home/$USERNAME/.vscode-server-insiders/extensions \
    # && chown -R $USERNAME \
        # /home/$USERNAME/.vscode-server \
        # /home/$USERNAME/.vscode-server-insiders