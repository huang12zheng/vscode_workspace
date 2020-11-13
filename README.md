# vscode_workspace
Use `extension Remote-Container` build a workspace, to save time

# Structure

```
.
├── Changelog.md
├── Dockerfile
├── commandhistory
├── config
├── └── .devcontainer.json
│   └── Dockerfile
├── docker-compose.yml
├── extensions
```

# file and explain
##  .devcontainer.json
1. use root docker-compose.yaml
  set "dockerComposeFile" && "service"
2. set "workspaceFolder"
3. avoid error when close one window
"shutdownAction":"none"
4. config extendsion
"extensions"

## extensions
cache extensions to save rebuild-time.
## Dockerfile
0. set image
```
FROM cirrusci/flutter:stable
```
1. save history command
```
RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
    && echo $SNIPPET >> "/root/.bashrc" \
    && mkdir /commandhistory \
    && touch /commandhistory/.bash_history
```
2. keep container alive
`CMD /bin/sh -c "while sleep 10; do :; done"`

## commandhistory
file about history-command


---

refer to [devcontainer](https://code.visualstudio.com/docs/remote/containers-advanced#_connecting-to-multiple-containers-at-once)
