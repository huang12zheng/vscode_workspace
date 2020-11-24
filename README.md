# vscode_workspace
Use `extension Remote-Container` build a workspace, to save time

# ps
This git-workspace is just a base origin, which has some feature about as follow:

* save extension
```Dockerfile
RUN mkdir -p /home/$USERNAME/.vscode-server/extensions \
    && chown -R $USERNAME \
         /home/$USERNAME/.vscode-server
```

* save some file local
```yaml
services:
  builder:
    build: .
    volumes:
      - ./workspace:/home/node:delegated
```

* use /workspaces as a hostlocal to storage config
```
WORKDIR /workspaces
```
```json
"workspaceFolder": "/workspaces",
```

# Usage
### Please Change:

* name
[devcontainer.json](.devcontainer/devcontainer.json)
```json
"name": "Node.js & TypeScript",
```

* settings/bash
[devcontainer.json](.devcontainer/devcontainer.json)
```json
"settings": { 
		"terminal.integrated.shell.linux": "/bin/ash"
	},
```

* service

[devcontainer.json](.devcontainer/devcontainer.json)
```json
"service": "builder",
```

[docker-compose.yml](.devcontainer/docker-compose.yml)
```yaml
services:
  builder:
```

* username
[Dockerfile](.devcontainer/Dockerfile)
```dockerfile
ARG USERNAME=root
# RUN chown -R $USERNAME /workspaces
# USER root
```