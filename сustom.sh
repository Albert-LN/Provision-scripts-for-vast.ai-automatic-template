#!/bin/bash
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow - values must be quoted and separated by newlines or spaces.

DISK_GB_REQUIRED=30

MAMBA_PACKAGES=(
    #"package1"
    #"package2=version"
  )
  
PIP_PACKAGES=(
    "bitsandbytes==0.41.2.post2"
  )

EXTENSIONS=(
    "https://github.com/d8ahazard/sd_dreambooth_extension"
    "https://github.com/deforum-art/sd-webui-deforum"
    "https://github.com/ototadana/sd-face-editor"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    "https://github.com/hako-mikan/sd-webui-regional-prompter"
    "https://github.com/fkunn1326/openpose-editor"
    "https://github.com/Gourieff/sd-webui-reactor" 
    "https://github.com/Iyashinouta/sd-model-downloader.git" # Model Downloader
    "https://github.com/Mikubill/sd-webui-controlnet|10bd9b25f62deab9acb256301bbf3363c42645e7" # Controlnet
    "https://github.com/adieyal/sd-dynamic-prompts|3a6b6ec62bfc71e8b658a561c91627b1bab52fb8" # DynPrompts 
    "https://github.com/Coyote-A/ultimate-upscale-for-automatic1111|728ffcec7fa69c83b9e653bf5b96932acdce750f" # Ultimate Upscale
    "https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111.git|70ca3c773199130462b6651364dbd133041be73a" # Multidiffusion
    "https://github.com/zanllp/sd-webui-infinite-image-browsing|859b28e45e382aca71e8ca7ee24f9b5d267524ac" # Infinite Image browser 
    "https://github.com/kohya-ss/sd-webui-additional-networks|3a6b6ec62bfc71e8b658a561c91627b1bab52fb8" # Additional networks
)

CHECKPOINT_MODELS=(
    #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    #"https://civitai.com/api/download/models/4007?type=Model&format=SafeTensor&size=full&fp=fp16" # Protogen v2.2
    #"https://civitai.com/api/download/models/57618?type=Model&format=SafeTensor&size=pruned&fp=fp32" # Counterfeit v3.0
    #"https://civitai.com/api/download/models/363767?type=Model&format=SafeTensor&size=full&fp=fp16" # HelloYoung 2.5d
    #"https://civitai.com/api/download/models/245691?type=Model&format=SafeTensor&size=pruned&fp=fp16" #B lazingDrive v12g
    #"https://civitai.com/api/download/models/524032?type=Model&format=SafeTensor&size=full&fp=fp16" # XL Realistic Stock Photo
    #"https://civitai.com/api/download/models/288982?type=Model&format=SafeTensor&size=full&fp=fp16" # XL Juggernaut XL
    #"https://civitai.com/api/download/models/304060?type=Model&format=SafeTensor&size=full&fp=fp16" # XL Proteus
    #"https://civitai.com/api/download/models/293405?type=Model&format=SafeTensor&size=pruned&fp=fp16" # XL blue_pencil-XL
    #"https://huggingface.co/dataautogpt3/dpo-sdxl-merged/tree/main" # XL DPO 

)

LORA_MODELS=(
    #"https://civitai.com/api/download/models/16576"
)

VAE_MODELS=(
    "https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
    "https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/VAEs/orangemix.vae.pt" # OrangeMix
    "https://civitai.com/api/download/models/363767?type=VAE&format=SafeTensor" # for HelloYoung 2.5d
    "https://civitai.com/api/download/models/245691?type=VAE&format=PickleTensor" # for #BlazingDrive v12g
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    source /opt/ai-dock/etc/environment.sh
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_mamba_packages
    provisioning_get_pip_packages
    provisioning_get_extensions
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    
     
    PLATFORM_FLAGS=""
    if [[ $XPU_TARGET = "CPU" ]]; then
        PLATFORM_FLAGS="--use-cpu all --skip-torch-cuda-test --no-half"
    fi
    PROVISIONING_FLAGS="--skip-python-version-check --no-download-sd-model --do-not-download-clip --port 11404 --exit"
    FLAGS_COMBINED="${PLATFORM_FLAGS} $(cat /etc/a1111_webui_flags.conf) ${PROVISIONING_FLAGS}"
    


    # Start and exit because webui will probably require a restart
    cd /opt/stable-diffusion-webui && \
    micromamba run -n webui -e LD_PRELOAD=libtcmalloc.so python launch.py \
        ${FLAGS_COMBINED}
    
    provisioning_download_config_files
    provisioning_print_end
}

function provisioning_get_mamba_packages() {
    if [[ -n $MAMBA_PACKAGES ]]; then
        $MAMBA_INSTALL -n webui ${MAMBA_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
        micromamba run -n webui $PIP_INSTALL ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_extensions() {
    for repo in "${EXTENSIONS[@]}"; do
        # Извлекаем URL и коммит, если указан
        url="${repo%%|*}"
        commit="${repo##*|}"

        # Если коммит не указан, то переменная commit будет равна url
        if [[ "$commit" == "$url" ]]; then
            commit=""
        fi

        dir="${url##*/}"
        path="/opt/stable-diffusion-webui/extensions/${dir}"
        requirements="${path}/requirements.txt"

        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} == "true" ]]; then
                printf "Updating extension: %s...\n" "${url}"
                ( cd "$path" && git pull )
                if [[ -n $commit ]]; then
                    printf "Resetting to commit: %s...\n" "${commit}"
                    ( cd "$path" && git reset --hard "$commit" )
                fi
                if [[ -e $requirements ]]; then
                    micromamba -n webui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading extension: %s...\n" "${url}"
            git clone "${url}" "${path}" --recursive
            if [[ -n $commit ]]; then
                printf "Resetting to commit: %s...\n" "${commit}"
                ( cd "$path" && git reset --hard "$commit" )
            fi
            if [[ -e $requirements ]]; then
                micromamba -n webui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_set_webui_version() {
    cd /opt/stable-diffusion-webui
    git reset --hard 4afaaf8a020c1df457bcf7250cb1c7f609699fa7 # 1.6
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

# Function to download config files and replace existing ones
function provisioning_download_config_files() {
    config_dir="${WORKSPACE}/storage/stable_diffusion/"
    mkdir -p "$config_dir"
    
    # URLs of the config files
    config_files=(
        "https://raw.githubusercontent.com/Albert-LN/Provision-scripts-for-vast.ai-automatic-template/main/config.json"
        "https://raw.githubusercontent.com/Albert-LN/Provision-scripts-for-vast.ai-automatic-template/main/ui-config.json"
    )
    
    printf "Downloading config files to %s...\n" "$config_dir"
    for url in "${config_files[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${config_dir}"
        printf "\n"
    done
}

provisioning_start
 