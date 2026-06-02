

conda env list

###########################

conda create -n env_1  python spyder numpy pandas scipy scikit-learn statsmodels openpyxl matplotlib seaborn


#======================
# order

opencv    torch   huggingface
conda install numpy pandas scipy scikit-learn statsmodels matplotlib seaborn openpyxl
conda install spyder

#============================

# install a specific version of python.
conda create -n env_6 python=3.12 

conda activate env_2


# you should be inside the environment of interest.
# the path has spaces : wrapping it inside single quotes doesns't work !
conda env export > "F:\OneDrive - Uniklinik RWTH Aachen\dl\OpenSlide.yml"


# return back to the base environment.
conda deactivate

# delete an environment.
conda env remove -n env_3

#############################


#######################☺

conda install anaconda::statsmodels
conda install anaconda::openpyxl

###########

python --version

conda search python

conda update python

###############


conda update -n base -c defaults conda
