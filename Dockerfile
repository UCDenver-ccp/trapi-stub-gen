FROM python:3.9

RUN /usr/local/bin/python -m pip install --upgrade pip && \
    pip install fastapi-code-generator

RUN mkdir /work /app
WORKDIR /work
RUN git clone https://github.com/NCATSTranslator/ReasonerAPI.git ./ReasonerAPI.git

CMD ["fastapi-codegen", "--input", "/work/ReasonerAPI.git/TranslatorReasonerAPI.yaml", "--output", "/app"]
