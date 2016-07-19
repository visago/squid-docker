# Squid Docker version

Run with the following

```
docker run -d --name=squid -v /opt/squid:/opt/squid -p 3128:3128 visago/squid
```

Set HTTP_PROXY to http://hostname:3128/
