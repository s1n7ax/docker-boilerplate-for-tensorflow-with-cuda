FROM tensorflow/tensorflow:latest-gpu

RUN pip install --no-cache-dir \
  jupyterlab==4.0.10 \
  jupyterlab-lsp==5.0.2 \
  jedi-language-server==0.41.2

ENTRYPOINT [ "bash", "-c", "jupyter-lab --allow-root --ip=0.0.0.0" ]
