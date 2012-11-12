An example of a what I believe to be a webmachine bug.

Reproduce:

  * `make && ./start.sh`
  * `curl -v http://localhost:8000`

The server will return an HTTP 500.
