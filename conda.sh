

conda env list

###########################

conda create -n e_1  python spyder numpy pandas scipy scikit-learn statsmodels openpyxl matplotlib seaborn


#======================
# installing all packaes from 1 channel ( conda-forge ).
    # for installing openCV : to avoid dll error.
    # F:\OneDrive - Uniklinik RWTH Aachen\IT\error__env   \  erro_env__.docx

conda create -n env_9 -c conda-forge python=3.11 spyder opencv

#============================

# install a specific version of python.
conda create -n env_6 python=3.12 

conda activate env_2


# you should be inside the environment of interest.
# the path has spaces : wrapping it inside single quotes doesn't work !
conda env export > "F:\OneDrive - Uniklinik RWTH Aachen\dl\OpenSlide.yml"


# return back to the base environment.
conda deactivate

# delete an environment.
conda env remove -n env_3

#############################

# channels & priority

conda config --show channels
conda config --show channel_priority

# set conda-forge as the priority channel :

conda config --add channels conda-forge
conda config --set channel_priority strict

#######################☺

conda install anaconda::statsmodels
conda install anaconda::openpyxl

###########

python --version

conda search python

conda update python

###############


conda update -n base -c defaults conda

###################

# detrimental :
    # this is not actually renaming : this copies or clones the packages from the old to a new folder !!
    # packages may crash !
    conda rename  

    # this will reset the font-color, ... to default !!
    conda --reset

###############

# return to th base environment.
conda deactivate  

############

# search the package contents.
conda search -c conda-forge pyqt

# install qt version-6 : from the main channel : overriding the strict channel priorities.
# this will gurantee dark bar on top of spyde window. 
conda install -c defaults qt-main=6 pyqt=6 --override-channels

# to check qt version  =>  module.py

############