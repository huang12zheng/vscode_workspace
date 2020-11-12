# Intro

Container would save time when you need to initialial workspace. In other word, you can use `extension Remote-Container` build a workspace, and commit it.

# Structure

```
├── flutter_plugin
│   ├── .devcontainer
│   │   ├── Dockerfile
│   │   └── devcontainer.json
│   ├── config.sh
│   └── push.sh
```

|  file | explain  |
|---|---|
| .devcontainer/devcontainer.json  |  config about workspace |
| config.sh | config about info of image which you would build |
| push.sh | to get a image |

# release

you can find image in hub.docker by hzgood

---

refer to [devcontainer](https://code.visualstudio.com/docs/remote/containers-advanced#_connecting-to-multiple-containers-at-once)