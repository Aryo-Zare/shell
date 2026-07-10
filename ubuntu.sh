
pwd

root@UK-2025720264:~# id Aryo
    # uid=1000(Aryo) gid=1000(Aryo) groups=1000(Aryo)

root@UK-2025720264:~# ls -ld /home/Aryo
# drwxr-x--- 3 Aryo Aryo 4096 Jun  3 16:05 /home/Aryo

Aryo@UK-2025720264:~$ pwd
# /home/Aryo

# In a root user the prompt would look like :
# Root@,,,

lsb_release -a


tree -L 1

tree /mnt/f/'OneDrive - Uniklinik RWTH Aachen'/DL -L 2

#=========================

cd ~

mkdir ~/models

#==========================
# size

du -sh /home/Aryo/models/SAM-3.1_2
    # 3.3G    /home/Aryo/models/SAM-3.1_2     

du -sh /home/Aryo/models/SAM-3.1_2/*
    # 8.0K    /home/Aryo/models/SAM-3.1_2/LICENSE                                                                                                                  
    # 4.0K    /home/Aryo/models/SAM-3.1_2/README.md                                                                                                                
    # 104K    /home/Aryo/models/SAM-3.1_2/assets                                                                                                                   
    # 28K     /home/Aryo/models/SAM-3.1_2/config.json                                                                                                              
    # 516K    /home/Aryo/models/SAM-3.1_2/merges.txt                                                                                                               
    # 4.0K    /home/Aryo/models/SAM-3.1_2/processor_config.json                                                                                                    
    # 3.3G    /home/Aryo/models/SAM-3.1_2/sam3.1_multiplex.pt    

#=========================

(base) Aryo@UK-2025720264:~$ ls -lah ~/.cache/huggingface
    # total 24K
    # drwx------  4 Aryo Aryo 4.0K Jun  9 11:10 .
    # drwx------ 13 Aryo Aryo 4.0K Jun 10 07:06 ..
    # -rw-r--r--  1 Aryo Aryo    0 Jun  8 13:41 .check_for_update_done
    # drwxr-xr-x  3 Aryo Aryo 4.0K Jun  9 11:10 hub
    # -rw-------  1 Aryo Aryo   60 Jun  8 13:42 stored_tokens
    # -rw-------  1 Aryo Aryo   37 Jun  8 13:42 token
    # drwxr-xr-x  4 Aryo Aryo 4.0K Jun  9 11:10 xet
    # (base) Aryo@UK-2025720264:~$


(base) Aryo@UK-2025720264:~$ du -sh ~/.cache/huggingface
    # 240K    /home/Aryo/.cache/huggingface

(base) Aryo@UK-2025720264:~$ du -sh ~/.cache/huggingface/*
    # 16K     /home/Aryo/.cache/huggingface/hub
    # 4.0K    /home/Aryo/.cache/huggingface/stored_tokens
    # 4.0K    /home/Aryo/.cache/huggingface/token
    # 212K    /home/Aryo/.cache/huggingface/xet


#==========================
# cache

(base) Aryo@UK-2025720264:~/models$ cd ~
(base) Aryo@UK-2025720264:~$ tree -L 1
    # .
    # ├── Miniconda3-latest-Linux-x86_64.sh
    # ├── data
    # ├── miniconda3
    # ├── models
    # └── projects

    # 5 directories, 1 file


(base) Aryo@UK-2025720264:~$ ls -lah ~/.cache/huggingface
    # total 24K
    # drwx------  4 Aryo Aryo 4.0K Jun  9 11:10 .
    # drwx------ 13 Aryo Aryo 4.0K Jun 10 07:06 ..
    # -rw-r--r--  1 Aryo Aryo    0 Jun  8 13:41 .check_for_update_done
    # drwxr-xr-x  3 Aryo Aryo 4.0K Jun  9 11:10 hub
    # -rw-------  1 Aryo Aryo   60 Jun  8 13:42 stored_tokens
    # -rw-------  1 Aryo Aryo   37 Jun  8 13:42 token
    # drwxr-xr-x  4 Aryo Aryo 4.0K Jun  9 11:10 xet

(base) Aryo@UK-2025720264:~$ du -sh ~/.cache/huggingface
    # 240K    /home/Aryo/.cache/huggingface

(base) Aryo@UK-2025720264:~$ du -sh ~/.cache/huggingface/*
    # 16K     /home/Aryo/.cache/huggingface/hub
    # 4.0K    /home/Aryo/.cache/huggingface/stored_tokens
    # 4.0K    /home/Aryo/.cache/huggingface/token
    # 212K    /home/Aryo/.cache/huggingface/xet


(base) Aryo@UK-2025720264:~$ find ~/.cache/huggingface -iname "*sam3*"
    # /home/Aryo/.cache/huggingface/hub/models--facebook--sam3.1

(base) Aryo@UK-2025720264:~$ rm -rf ~/.cache/huggingface/hub/models--facebook--sam3.1

# bad : this also deleted the token !
(base) Aryo@UK-2025720264:~$ rm -rf ~/.cache/huggingface   


# you must enter u_1
(base) Aryo@UK-2025720264:~$ hf auth whoami
    # Command 'hf' not found, but can be installed with:
    # sudo apt install python3-huggingface-hub


(base) Aryo@UK-2025720264:~$ conda activate u_1
(u_1) Aryo@UK-2025720264:~$ hf auth whoami
    # Error: Not logged in


(u_1) Aryo@UK-2025720264:~$ hf auth login

    #     _|    _|  _|    _|    _|_|_|    _|_|_|  _|_|_|  _|      _|    _|_|_|      _|_|_|_|    _|_|      _|_|_|  _|_|_|_|
    #     _|    _|  _|    _|  _|        _|          _|    _|_|    _|  _|            _|        _|    _|  _|        _|
    #     _|_|_|_|  _|    _|  _|  _|_|  _|  _|_|    _|    _|  _|  _|  _|  _|_|      _|_|_|    _|_|_|_|  _|        _|_|_|
    #     _|    _|  _|    _|  _|    _|  _|    _|    _|    _|    _|_|  _|    _|      _|        _|    _|  _|        _|
    #     _|    _|    _|_|      _|_|_|    _|_|_|  _|_|_|  _|      _|    _|_|_|      _|        _|    _|    _|_|_|  _|_|_|_|

    #     To log in, `huggingface_hub` requires a token generated from https://huggingface.co/settings/tokens .
    # Enter your token (input will not be visible):
    # Add token as git credential? [y/N]: n
    # Token is valid (permission: read).
    # The token `DELL-18` has been saved to /home/Aryo/.cache/huggingface/stored_tokens
    # Your token has been saved to /home/Aryo/.cache/huggingface/token
    # Login successful.
    # The current active token is: `DELL-18`


(u_1) Aryo@UK-2025720264:~$ hf auth whoami
    # ✓ Logged in
    #   user: Aryo-Zare
    #   orgs: rwthaachen

(u_1) Aryo@UK-2025720264:~$ find ~/.cache/huggingface -name "*.incomplete"
(u_1) Aryo@UK-2025720264:~$ find ~/.cache/huggingface -name "*.incomplete" -exec ls -lh {} \;
(u_1) Aryo@UK-2025720264:~$

#===========================

(u_1) Aryo@UK-2025720264:~$ wget --spider "https://huggingface.co/facebook/sam3.1/resolve/main/sam3.1_multiplex.pt"
    # Spider mode enabled. Check if remote file exists.
    # --2026-06-10 08:04:03--  https://huggingface.co/facebook/sam3.1/resolve/main/sam3.1_multiplex.pt
    # Resolving huggingface.co (huggingface.co)... 18.172.112.49, 18.172.112.77, 18.172.112.75, ...
    # Connecting to huggingface.co (huggingface.co)|18.172.112.49|:443... connected.
    # HTTP request sent, awaiting response... 401 Unauthorized

Username/Password Authentication Failed.
    # (u_1) Aryo@UK-2025720264:~$ curl -I "https://huggingface.co/facebook/sam3.1/resolve/main/sam3.1_multiplex.pt"
    # HTTP/2 401
    # content-type: text/plain; charset=utf-8
    # content-length: 123
    # date: Wed, 10 Jun 2026 06:05:08 GMT
    # etag: W/"7b-/G/Qyv99jo+3WP/wvrDk8jMPQ1U"
    # x-powered-by: huggingface-moon
    # x-request-id: Root=1-6a28fe94-485a78235e62236262ffd67b
    # ratelimit: "resolvers";r=2999;t=260
    # ratelimit-policy: "fixed window";"resolvers";q=3000;w=300
    # cross-origin-opener-policy: same-origin
    # referrer-policy: strict-origin-when-cross-origin
    # access-control-max-age: 86400
    # access-control-allow-origin: https://huggingface.co
    # vary: Origin
    # access-control-expose-headers: X-Repo-Commit,X-Request-Id,X-Error-Code,X-Error-Message,X-Total-Count,ETag,Link,Accept-Ranges,Content-Range,X-Linked-Size,X-Linked-ETag,X-Xet-Hash
    # x-error-code: GatedRepo
    # x-error-message: Access to model facebook/sam3.1 is restricted. You must have access to it and be authenticated to access it. Please log in.
    # www-authenticate: Bearer realm="Authentication required", charset="UTF-8"
    # x-cache: Error from cloudfront
    # via: 1.1 9b70adf7c49e859435e96eb0fc35c216.cloudfront.net (CloudFront)
    # x-amz-cf-pop: FRA60-P9
    # x-amz-cf-id: qVpAey7cBpDDTBARSKDsvvQHeIa2BIGkmb3dJ7lYekbsXkFA9ZHVqQ==

#==================

(u_1) Aryo@UK-2025720264:~$ find ~/.cache/huggingface -type f | xargs ls -lh
-rw-r--r-- 1 Aryo Aryo    0 Jun 10 07:32 /home/Aryo/.cache/huggingface/.check_for_update_done
-rw------- 1 Aryo Aryo   60 Jun 10 07:33 /home/Aryo/.cache/huggingface/stored_tokens
-rw------- 1 Aryo Aryo   37 Jun 10 07:33 /home/Aryo/.cache/huggingface/token
-rw-r--r-- 1 Aryo Aryo 401K Jun 10 08:17 /home/Aryo/.cache/huggingface/xet/logs/xet_20260610T073652061+0200_921.log


(u_1) Aryo@UK-2025720264:~$ watch -n 10 '
find ~/.cache/huggingface -type f -exec ls -lh {} \;
'


#====================