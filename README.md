# GVim-container

This repository provides a Dockerfile for GVim, the Graphical Version of the Vim (Vi IMproved) text editor.

The corresponding image is built on https://quay.io/.

## Usage with Apptainer to edit files on a remote host

From your local machine, login with `ssh -Y -J yourusername@intermediate-host ...`, where the `-Y` enables trusted X11 forwarding.

Pull the container image using:

```
apptainer pull docker://quay.io/jeani/gvim:latest
```

and run the container with binding to the folder where the file you want to edit is located (for instance the current directory), so that its content will be found inside the container at `/opt/uio` (you can use a different name for this folder, as long as it is not already used by the system):
```
apptainer shell --env DISPLAY=$DISPLAY --bind $PWD:/opt/uio gvim_latest.sif 
Singularity> cd /opt/uio/
Singularity> gvim test.txt
```

This should open this sort of window on your local machine:

![Screenshot](gvim.png)
