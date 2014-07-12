mozilla-syncserver-dockerfile
=============================

This is a dockerfile to build and run Mozilla SyncServer within a docker container

It is based on https://github.com/mozilla-services/syncserver install instructions.

This is the very first version of the build ... which does not allow (for now) the customization of the config file.

Running
-------
Basically, to run :
```
docker run -p 5000:5000 acaranta/mozilla-syncserver
```

If you want to fiddle with configuration, on your host :
```
mkdir -p /whateveryoulike/syncserver
wget https://raw.githubusercontent.com/mozilla-services/syncserver/master/syncserver.ini -O /whateveryoulike/syncserver/config.ini
#edit your config file
docker run -v /whateveryoulike/syncserver:/opt/syncserver -p 5000:5000 acaranta/mozilla-syncserver
```
