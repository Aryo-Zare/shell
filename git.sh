


########################
# trend & backup.

cd /C/code/composition
cd /C/code/cq

cd /C/code/DL
cd /C/code/SAM3_LoRA

cd /C/code/emka
cd /C/code/General
cd /C/code/kidney
cd /C/code/math
cd /C/code/miscellaneous
cd /C/code/shell
cd /C/code/telemetry
cd /C/code/VISION

###################################################

# for a new repo.
git init

git add .

git add <filename.py>

git commit -m "compare : original SAM-3 versus LoRA"

# for a new repo.
git remote add origin https://github.com/Aryo-Zare/emka.git

# for a new repo.
git push -u origin main

git push

###################################################

cd /C/code

git clone https://github.com/Aryo-Zare/cq.git
git clone https://github.com/Aryo-Zare/EMKA.git


# git clone https://github.com/Aryo-Zare/kidney.git


###################################################

# configure log-in !
    # was initially triggered probably after a conda update.
    # needs subsequent confirmation in a browser or via a code.

git config --global user.name "Aryo Zare"
git config --global user.email "aryozz@gmail.com"

###################################################

dir /C/code

###################################################

git --version
git update-git-for-windows

###################################################

cd /<local_rep>
git pull

#########################

# bfore pulling, if you mistakenly type : git add . : 
    # git thinks something has changed in your local directory => conflict => will not pull.
    # to undo this mistake :

# removes git.sh from the staging area (git add . put it there)
git restore --staged git.sh

# discards local modifications in the working directory
git restore git.sh

# now Git can fast-forward and pull the remote commit
git pull

# example output :
    # User@UK-2025720264 MINGW64 /C/code/telemetry (main)
    # $ git pull
    # remote: Enumerating objects: 41, done.
    # remote: Counting objects: 100% (41/41), done.
    # remote: Compressing objects: 100% (22/22), done.
    # remote: Total 39 (delta 21), reused 34 (delta 16), pack-reused 0 (from 0)
    # Unpacking objects: 100% (39/39), 35.28 KiB | 722.00 KiB/s, done.
    # From https://github.com/Aryo-Zare/telemetry
    #    01a4da6..5a99a3e  main       -> origin/main
    # Updating 01a4da6..5a99a3e
    # Fast-forward
    #  error_telemetry.py    | 165 ++++++++++++++
    #  explore_telemetry.py  | 247 +++++++++++++++++++++
    #  file_dataframe.py     |  67 ++++++
    #  joint_plot.py         | 110 ++++++++++
    #  pulse.py              | 329 ++++++++++++++++++++++++++++
    #  shift.py              | 128 +++++++++++
    #  telemetry.py          | 291 ++++++++++++++++++++-----
    #  telemetry_terminal.py | 588 ++++++++++++++++++++++++++++++++++++++++++++++++++
    #  8 files changed, 1872 insertions(+), 53 deletions(-)
    #  create mode 100644 error_telemetry.py
    #  create mode 100644 explore_telemetry.py
    #  create mode 100644 file_dataframe.py
    #  create mode 100644 joint_plot.py
    #  create mode 100644 pulse.py
    #  create mode 100644 shift.py
    #  create mode 100644 telemetry_terminal.py


###################################################

# git remote URL name change !

User@UK-2025720264 MINGW64 /C/code/emka (main)
$ git remote -v
origin  https://github.com/Aryo-Zare/EMKA.git (fetch)
origin  https://github.com/Aryo-Zare/EMKA.git (push)

User@UK-2025720264 MINGW64 /C/code/emka (main)
$ git remote set-url origin https://github.com/Aryo-Zare/emka.git

User@UK-2025720264 MINGW64 /C/code/emka (main)
$ git remote -v
origin  https://github.com/Aryo-Zare/emka.git (fetch)
origin  https://github.com/Aryo-Zare/emka.git (push)



