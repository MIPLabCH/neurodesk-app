FROM vnmd/neurodesktop:2024-05-25
# Set the working directory
WORKDIR /home/jovyan
  
# Example of installing a package with conda
RUN conda clean --all --yes
RUN conda install -y mamba -n base -c  conda-forge
RUN mamba install -y numpy scipy pandas tqdm dipy mne-nirs jupyterlab pyabel mne-bids openneuro-py tqdm pygsp tensorly fslpy fsleyes
RUN pip install antspyx fury ipyvtklink
  
# Start the container with an interactive shell
CMD ["bash"]
