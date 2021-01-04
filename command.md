
# docer
## container

```sh
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```
## Images

- Remove all the none images

```sh
docker images | grep none | awk '{ print $3; }' | xargs docker rmi
```

# Glink

- Get glink:

```sh
wget --no-check-certificate -qO /usr/local/bin/gdlink 'https://www.moerats.com/usr/shell/gdlink.sh' && chmod a+x /usr/local/bin/gdlink
```

- Download use wget:

E.g.,

```sh
gdlink 'https://drive.google.com/open?id=0B8SvBXZ3I5QMcUduTMJEanRkMzQ' |xargs -n1 wget -c -O ./download
```

Refer: https://www.cnblogs.com/weifeng1463/p/10967644.html
