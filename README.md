mozilla-syncserver-dockerfile
=============================

This is a dockerfile to build and run Mozilla SyncServer within a docker container

It is based on https://github.com/mozilla-services/syncserver install instructions.

This is the very first version of the build ... which does not allow (for now) the customization of the config file.

to run :
```
docker run -p 5000:5000 acaranta/mozilla-syncserver
```
