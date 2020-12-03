# trapi-stub-gen
Docker container to facilitate creation of a TRAPI stub implementation using FastAPI

The container makes use of the [fastapi-code-generator](https://github.com/koxudaxi/fastapi-code-generator) to generate stub files for a FastAPI implementation of the [NCATS Translator Reasoner API](https://github.com/NCATSTranslator/ReasonerAPI).

### Requirements
* [Docker](https://www.docker.com/)

### Usage
* build the container
```bash
docker -t trapi-stub-gen .
```
* generate the stub files
  * `[OUTPUT-DIR]` is the absolute path to a directory on the host machine where the stub files will be output 
```bash
docker run --rm -v [OUTPUT-DIR]:/app trapi-stub-gen
```