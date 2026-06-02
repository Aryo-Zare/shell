

# install torch

#==================================
# Hugging-face

# installation :
# CLI :  https://huggingface.co/docs/huggingface_hub/en/installation#install-with-conda
# transformers : https://huggingface.co/docs/transformers/en/installation#conda

# (env_6) C:\code\sam3>
hf auth whoami
    ✓ Logged in
    user: Aryo-Zare
    orgs: rwthaachen

hf update

#==================================
# install SAM-3

cd C:\code

# this will create a folder ( sam3 ) inside : C:\code .
# note : you need to do this only once :
    # this independent from environemtn change, since you are not cloning it inside a particular environment folder.
    # if you change to another environemtn, on;y run the below commands.
git clone https://github.com/facebookresearch/sam3.git


# get into that folder
cd sam3

# this fetches the repo fom the local folder ( instead of the internet ) 
    # & will install it in the active conda environemtn.
pip install -e .

#==============================
# install the conventional analytic pakcages.

# I exclluded numpy, since numpy was already installed with a downgraded version by sam-3.
conda install pandas scipy scikit-learn statsmodels matplotlib seaborn openpyxl
conda install spyder

#==================================
# extra packages

pip install einops ninja
pip install triton-windows
conda install conda-forge::pycocotools

#=================================
# export

conda env export > "F:\OneDrive - Uniklinik RWTH Aachen\dl\segmentation\SAM_3\env_6.yml"

# probably useless.
conda env export --from-history > "F:\OneDrive - Uniklinik RWTH Aachen\dl\segmentation\SAM_3\env_6_history.yml"

# This captures exact pip package versions too.
    # since conda may not be able to.
pip freeze > "F:\OneDrive - Uniklinik RWTH Aachen\dl\segmentation\SAM_3\env_6__requirements_pip.txt"

#=========================================