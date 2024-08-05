FROM quay.io/jupyter/pytorch-notebook:cuda12-python-3.11.8

COPY environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml && \
    conda clean --all --yes && \
    rm /tmp/environment.yml
