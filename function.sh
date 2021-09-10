set -eu
# root directory of this repository
DOTFILES_ROOT=$(git rev-parse --show-toplevel)
# root directories
root_directories(){
    local target_list=()
    local directory
    # home
    target_list+=("home")
    # msys
    if [ -n "${MSYSTEM-}" ]; then
        target_list+=("msys")
    fi
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
    root_directories \
        | xargs -I{} find {} -mindepth 1 -type f -not -name ".gitkeep"
}
# directory list
dir_list(){
    root_directories \
        | xargs -I{} find {} -mindepth 1 -type d
}
# convert source -> destination
to_destination()
{
    local source=$1
    echo "${source}" \
        | sed -e "s@${DOTFILES_ROOT}/[^/]\+/@${HOME}/@"
}
# execute command
execute(){
    echo "$@"
    $@; echo $?
}
# create symlink
link_dotfiles(){
    local dir
    for dir in $(dir_list)
    do
        local destination=$(to_destination ${dir})
        if [ ! -d ${destination} ]; then
            execute mkdir -p ${destination}
        fi
    done
    local file
    for file in $(file_list)
    do
        local destination=$(to_destination ${file})
        execute ln -s -f ${file} ${destination}
    done
}
# copy
copy_dotfiles(){
    local dir
    for dir in $(dir_list)
    do
        local destination=$(to_destination ${dir})
        if [ ! -d ${destination} ]; then
            execute mkdir -p ${destination}
        fi
    done
    local file
    for file in $(file_list)
    do
        local destination=$(to_destination ${file})
        execute cp -f -v ${file} ${destination}
    done
}
# clean
clean_dotfiles(){
    local file
    for file in $(file_list)
    do
        local destination=$(to_destination ${file})
        if [ -e ${destination} ]; then
            execute rm -v ${destination}
        fi
    done
    local dir
    for dir in $(dir_list | tac)
    do
        local destination=$(to_destination ${dir})
        if [ -e ${destination} ]  && [ -z "$(ls -A ${destination})" ]; then
            execute rmdir -v ${destination}
        fi
    done
}
