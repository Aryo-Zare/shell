

# install torch

#==================================
# Hugging-face

# installation :
# CLI :  https://huggingface.co/docs/huggingface_hub/en/installation#install-with-conda
# transformers : https://huggingface.co/docs/transformers/en/installation#conda

# (env_6) C:\code\sam3>

# provide the token.
# screeshots in : F:\OneDrive - Uniklinik RWTH Aachen\dl\segmentation\hugging-face
hf auth login  

hf auth whoami
    ✓ Logged in
    user: Aryo-Zare
    orgs: rwthaachen

hf update

#==================================
# install SAM-3

# windows 
# clone the repo in a local folder. 
cd C:\code

# this will create a folder ( sam3 ) inside : C:\code .
# note : you need to do this only once :
    # this independent from environemtn change, since you are not cloning it inside a particular environment folder.
    # if you change to another environemtn, on;y run the below commands.
git clone https://github.com/facebookresearch/sam3.git


# get into that folder ( you were already inside C/code ).
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
#=========================================

# ubuntu

# select the ubuntu terminal.

# however, this may not be needed as :
    # Conda environments always live inside your conda installation directory : 
    # /home/aryo/miniconda3/

cd /home/Aryo
conda create -n u_1 python=3.12 


#=====

(u_1) Aryo@UK-2025720264:~$ pwd
    # /home/Aryo
(u_1) Aryo@UK-2025720264:~$ mkdir -p ~/projects

(u_1) Aryo@UK-2025720264:~$ tree -L 2
    # .
    # ├── Miniconda3-latest-Linux-x86_64.sh
    # ├── miniconda3
    # │   ├── LICENSE.txt
    # │   ├── _conda
    # │   ├── bin
    # │   ├── compiler_compat
    # │   ├── conda-meta
    # │   ├── condabin
    # │   ├── condarc.d
    # │   ├── envs
    # │   ├── etc
    # │   ├── include
    # │   ├── lib
    # │   ├── libexec
    # │   ├── man
    # │   ├── pkgs
    # │   ├── share
    # │   ├── shell
    # │   ├── ssl
    # │   ├── uninstall.sh
    # │   └── x86_64-conda-linux-gnu
    # └── projects


#=========================
# install SAM-3 .

cd ~

mkdir ~/models
mkdir ~/data

(base) Aryo@UK-2025720264:~$ tree -L 1
    # .
    # ├── Miniconda3-latest-Linux-x86_64.sh
    # ├── data
    # ├── miniconda3
    # ├── models
    # └── projects

conda activate u_1

cd ~/projects
git clone https://github.com/facebookresearch/sam3.git
cd sam3
pip install -e .

# or
    # git clone https://github.com/facebookresearch/sam3.git
    # pip install -e sam3

#===================================

cd ~/models

mkdir SAM-3.1
mkdir SAM_31


# rm = remove
# -r = recursive (delete the directory and everything inside it)
# i : asks for confirmation.
rm -ri SAM-3.1

(u_1) Aryo@UK-2025720264:~/models$ du -sh SAM_31
    # 5.0M    SAM_31

watch -n 5 'du -sh SAM_31'

#=========================================