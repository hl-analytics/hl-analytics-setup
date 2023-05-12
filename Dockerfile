# Choose your desired base image
FROM jupyter/minimal-notebook:latest

# name your environment (must be the same as in environment.yml)
ARG conda_env=analytics

# alternatively, you can comment out the lines above and uncomment those below
# if you'd prefer to use a YAML file present in the docker build context

COPY --chown=${NB_UID}:${NB_GID} environment.yml "/home/${NB_USER}/tmp/"

RUN cd "/home/${NB_USER}/tmp/" && \
    mamba env create -p "${CONDA_DIR}/envs/${conda_env}" -f environment.yml && \
    mamba clean --all -f -y

# create Python kernel and link it to jupyter
RUN "${CONDA_DIR}/envs/${conda_env}/bin/python" -m ipykernel install --user --name="${conda_env}" && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# if you want this environment to be the default one, uncomment the following line:
RUN echo "conda activate ${conda_env}" >> "${HOME}/.bashrc"