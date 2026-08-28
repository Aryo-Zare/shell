

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
# installing LoRA repo.

cd /C/code

git clone https://github.com/Sompote/SAM3_LoRA.git

conda activate env_6

# AI_dl__.docx  : cell-440
pip install peft pycocotools pyyaml tensorboard

pip install -e .

# error ipmporting pytorch after installing sompote ( pip install -e . )
    # AI_dl__.docx  :  cell-441 : cell-450
    # in summary, the root cause was numpy version upgrade.
        # downgrade the numpy versinos.
            # to do this, you may need to manually delete numpy folders from C:/.../...anaconda-packages / ... .

#==========================================================================
#==========================================================================
# running the LoRA :
    # conda terminal :
# you do not need to close SPYDER : restart its kernel, to remove all variables & processes.

# launch in anaconda-pwoershell ( not anaconda-cmd ).

conda activate env_6
cd C:\CODE\SAM3_LORA

python train_sam3_lora_native.py --config configs/META__Tuned-Full-Lora-Config.yaml

# CTRL + C : to quit.

#=====================
# tensor-board
(base) C:\Users\User>conda activate env_6
(env_6) C:\Users\User>tensorboard --logdir F:\temp\LoRA_output\logs
    # TensorFlow installation not found - running with reduced feature set.
    # Serving TensorBoard on localhost; to expose to the network, use a proxy or pass --bind_all
    # TensorBoard 2.21.0 at http://localhost:6006/ (Press CTRL+C to quit)

# Chrome  =>  http://localhost:6006/
    # refresh frequently ( after new trained epochs ).

#========================
# modifications of sompote-LoRA

# created : medical_losses.py  ( C:\code\SAM3_LoRA\sam3\train\loss\medical_losses.py )
# => linked (used) the above file in :  loss_fns.py ( modified )( C:\code\SAM3_LoRA\sam3\train\loss\loss_fns.py )
# modified : C:\code\SAM3_LoRA\train_sam3_lora_native.py

###################################################
# Sompote : pushing the already cloned repo, for the 1st time.

cd /C/code/SAM3_LoRA
git remote remove origin  # removes the original cloning URL ( sompote's original repo ).
git remote add origin https://github.com/Aryo-Zare/SAM3-Medical-LoRA.git


git add .

# multi-line commmit.
git commit -F- <<EOF
1. Added custom loss-functions to detect tortuous & long tubules.
2. Added a clean UTF-8 logger, and TensorBoard tracking.
3. Edited the YAML config.
EOF

#------------
# [main f131db4] 1. Added custom loss-functions to detect tortuous & long tubules. 2. Added a clean UTF-8 logger, and TensorBoard tracking. 3. Edited the YAML config.
#  6 files changed, 466 insertions(+), 37 deletions(-)
#  create mode 100644 configs/META__Tuned-Full-Lora-Config.yaml
#  create mode 100644 configs/tuned_full_lora_config.yaml
#  create mode 100644 sam3/train/loss/medical_losses.py
#  create mode 100644 sam3/train/loss/test_loss.py

git push -u origin main

###################################################
# model_evaluation
    #  evaluation-metrics

conda activate env_6

cd C:\code\SAM3_LoRA

# •	Anaconda Prompt , CMD, continuation char is ^ not \
# •	PowerShell = continuation char is `

python validate_sam3_lora.py ^
    --config configs/META__Tuned-Full-Lora-Config.yaml ^
    --weights "F:\temp\LoRA_output\2026-08-20\best_lora_weights.pt" ^
    --val_data_dir "F:\OneDrive - Uniklinik RWTH Aachen\dl\segmentation\SAM_3\LoRA\data\coco_dataset\test"

#========================
# save the evironment details.

conda activate env_6
cd C:\code\SAM3_LoRA\environment

# Why --no-builds? By default, Conda saves the exact OS-level hash of every package. 
# If you try to load that file on a different computer later, Conda might crash saying, "I can't find this exact hash." 
# Using --no-builds strips away those strict hashes, saving only the package names and versions (e.g., pytorch=2.1.0), 
# making it perfectly portable to any other Windows machine.
conda env export --no-builds > environment.yml
    # Your environment contains 53 packages installed via pip. Conda cannot reliably lock these packages for reproducible environments.

    # Detected packages:
    #   - absl-py==2.5.0
    #   - accelerate==1.14.0
    #   - annotated-types==0.8.0
    #   - antlr4-python3-runtime==4.9.3
    #   - decord==0.6.0
    #   - distro==1.9.0
    #   - einops==0.8.2
    #   - ftfy==6.1.1
    #   - grpcio==1.83.0
    #   - hf-transfer==0.1.9
    #   - hf-xet==1.6.0
    #   - httpcore2==2.12.0
    #   - httpx2==2.12.0
    #   - hydra-core==1.3.5
    #   - idna==3.19
    #   - imageio==2.37.4
    #   - iopath==0.1.10
    #   - jiter==0.16.0
    #   - lazy-loader==0.5
    #   - lightning-utilities==0.15.3
    #   - markdown==3.10.3
    #   - markupsafe==3.0.3
    #   - mpmath==1.3.0
    #   - networkx==3.6.1
    #   - ninja==1.13.0
    #   - numpy==1.26.4
    #   - omegaconf==2.3.1
    #   - open-clip-torch==3.3.0
    #   - openai==3.3.0
    #   - opencv-python==4.9.0.80
    #   - peft==0.20.0
    #   - portalocker==3.2.0
    #   - protobuf==7.35.1
    #   - pydantic==2.13.4
    #   - pydantic-core==2.46.4
    #   - sam3==0.1.0
    #   - sam3-lora==0.3.0
    #   - scikit-image==0.26.0
    #   - setuptools==70.2.0
    #   - submitit==1.5.4
    #   - sympy==1.14.0
    #   - tensorboard==2.21.0
    #   - tensorboard-data-server==0.7.2
    #   - tifffile==2024.2.12
    #   - timm==1.0.27
    #   - torch==2.12.0+cu132
    #   - torchmetrics==1.9.0
    #   - torchvision==0.27.0+cu132
    #   - triton-windows==3.7.0.post26
    #   - truststore==0.10.4
    #   - typing-inspection==0.4.4
    #   - wcwidth==0.7.0
    #   - werkzeug==3.1.8

    # Learn more: https://docs.conda.io/projects/conda/en/stable/user-guide/configuration/pip-interoperability.html
    #   warnings.warn(warning, CondaExportWarning)

pip freeze > requirements.txt

#==================