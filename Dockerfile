FROM condaforge/mambaforge
LABEL maintainer="Bram Enning"

RUN ["mkdir", "notebooks"]
COPY environment_docker.yml environment.yml 
#RUN conda config --add channels conda-forge
#RUN conda config --set channel_priority 'strict'
#RUN conda install -n base -c conda-forge mamba
RUN mamba env create -f environment.yml

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "analytics", "/bin/bash", "-c"]


CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

# Jupyter and Tensorboard po rts
EXPOSE 8888

# Store notebooks in this mounted directory
VOLUME /notebooks

#CMD ["/run_jupyter.sh"]