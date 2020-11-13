# Note: You can use any Debian/Ubuntu based image you want. 
FROM ubuntu

# keep history
RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
    && echo $SNIPPET >> "/root/.bashrc" \
    && mkdir /commandhistory \
    && touch /commandhistory/.bash_history

CMD /bin/sh -c "while sleep 10; do :; done"