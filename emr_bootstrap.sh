#!/bin/bash -xe

wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
    && /bin/bash ~/miniconda.sh -b -p $HOME/conda

echo -e '\nexport PATH=$HOME/conda/bin:$PATH' >> $HOME/.bashrc && source $HOME/.bashrc

conda install -y ipython

export PYSPARK_PYTHON=/home/hadoop/conda/bin/ipython
export PYSPARK_DRIVER_PYTHON=/home/hadoop/conda/bin/ipython


conda install -y anaconda nltk  
conda install -y -c conda-forge fuzzywuzzy
conda install -y -c conda-forge python-levenshtein 
	

	
