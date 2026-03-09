# pwn-env
A Docker container for running a consistent, isolated x86-64 Linux environment on ARM-based Macs.

The first step is to [install Docker](https://docs.docker.com/desktop/install/mac-install/).

The pre-built Docker environment is hosted on the GitHub Container Registry (GHCR). To download the container, enter this command:

```bash
docker pull ghcr.io/liamdemong/pwn:latest
```

You need to ensure that the Docker desktop application is actively running on your machine when pulling.

Now navigate to the directory where your current Pwn CTF files are located. Then run this command:

```bash
docker run --platform linux/amd64 -it --init --rm -v $(pwd):/ctf pwn bash
```

You will now have your files and terminal inside of an emualted x86-64 Linux environment. Type `exit` to leave the container at any point.

## Set Up Visual Studio Code

You can optionally set up VS Code to run inside the container.

* Install [Visual Studio Code](https://code.visualstudio.com/) and then install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.
* Configure VSCode to use the container. Put the contents of this file in `.devcontainer/devcontainer.json` inside the directory with your files for a given CTF.
