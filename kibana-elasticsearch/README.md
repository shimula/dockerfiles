Kibana+Elasticsearch Sample
=====

Sample "Kibana + Elasticsearch + Nginx" using Docker.

# Usage

To build the image

```
docker build -t <TAG> .
```

To run the container, do the following

```
docker run -t -i -p 10080:80 <TAG>
```

To view the top page of Kibana, go to `http://localhost:10080/` in your browser.

Then, if you connect directly to the elasticsearch, go to `/es/`.

```
curl -X GET http://localhost:10080/es/
```