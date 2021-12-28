# y2v

YouTube-to-Video is a containerized utility to download a YouTube video for offline viewing.

## Getting Started

```bash
git clone git clone git@github.com:srbdev/y2v.git && cd y2v
bash build.bash
```

## Run It

```bash
docker run --rm -it -v ${PWD}:/downloads y2v
```

_Tip: you can set an alias in your `.bashrc` or `.zshrc` to run the container as a command, by adding the following line to the file `alias y2v='docker run --rm -it -v ${PWD}:/downloads y2v'`_