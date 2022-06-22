FROM jupyter/datascience-notebook
LABEL maintainer="Bram Enning"


# Zet timezone en installeer packages op OS
ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y graphviz


RUN ["mkdir", "notebooks"]
COPY environment.yml environment.yml 

RUN mamba env create -f environment.yml

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "analytics", "/bin/bash", "-c"]


CMD ["/opt/jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

# Jupyter and Tensorboard po rts
EXPOSE 8888

# Store notebooks in this mounted directory
VOLUME /notebooks

#CMD ["/run_jupyter.sh"]