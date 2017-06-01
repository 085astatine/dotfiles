set -eu
# root directory of this repository
DOTFILES_ROOT=$(git rev-parse --show-toplevel)
# target directories
target_directories(){
    local target_list=()
    local directory
    # home
    target_list+=("home")
    echo "${target_list[@]}" \
        | tr -s '[:space:]' '\n' \
        | sort \
        | sed -e "/^$/d" -e "s@^@${DOTFILES_ROOT}/@" \
        | while read directory
            do
                if [ -d ${directory} ]; then
                    echo ${directory}
                fi
            done
}
# file list
file_list(){
    target_directories \
        | xargs -I{} find {} -maxdepth 1 -type f
}
# directory list
dir_list(){
    target_directories \
        | xargs -I{} find {} -mindepth 1  -maxdepth 1 -type d
}
# execute command
execute(){
    echo "$@"
    $@; echo $?
}
# create symlink
link_dotfiles(){
    local file
    for file in $(file_list)
    do
        local destination=${HOME}/$(basename ${file})
        execute ln -s -f ${file} ${destination}
    done
    local dir
    for dir in $(dir_list)
    do
        execute ln -s -f ${dir} ${HOME}
    done
}
# copy
copy_dotfiles(){
    local file
    for file in $(file_list)
    do
        local destination=${HOME}/$(basename ${file})
        execute cp -f -v ${file} ${destination}
    done
    local dir
    for dir in $(dir_list)
    do
        local destination=${HOME}/$(basename ${dir})
        execute cp -r -f -v ${dir} ${destination}
    done
}
# clean
clean_dotfiles(){
    local file
    for file in $(file_list)
    do
        local destination=${HOME}/$(basename ${file})
        if [ -e ${destination} ]; then
            execute rm -v ${destination}
        fi
    done
    local dir
    for dir in $(dir_list)
    do
        local destination=${HOME}/$(basename ${dir})
        if [ -L ${destination} ]; then
            execute rm -v ${destination}
        elif [ -e ${destination} ]; then
            execute rm -r -v ${destination}
        fi
    done
}
