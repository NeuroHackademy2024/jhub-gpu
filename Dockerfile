FROM quay.io/jupyter/pytorch-notebook:cuda12-python-3.11.8

COPY --chown=1000:1000 environment.yml /tmp/environment.yml
RUN conda env update -f /tmp/environment.yml && \
    conda clean --all --yes && \
    rm /tmp/environment.yml

COPY --chown=1000:1000 requirements.txt /tmp/requirements.txt
RUN pip install --no-cache -r /tmp/requirements.txt
