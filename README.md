# vm-inside-docker
Run your VM inside a Docker Container.

## Correct Way to Run

```
$ docker run --privileged -it navjots35/vm-inside-docker:alpha bash
```

> `Container won't run if you use any other way`

### After running the container

* Create a Directory and cd into it.
```
mkdir vagrant-vm && cd vagrant-vm
```

* Initialize vagrant with an image/box
```
vagrant init generic/alpine37
```

* Spin up your VM
```
vagrant up
```

* SSH into it.
```
vagrant ssh
```

> Keep this in mind, this container uses `libvirt` so only boxes supported by libvirt can be used. Check more [Libvirt Vagrant Boxes](https://app.vagrantup.com/boxes/search?provider=libvirt)
