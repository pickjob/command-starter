# 
# 编译 && 加载
# 
ZSH_PLUGIN_FILE=()
ZSH_PLUGIN_DIRECTORY=()

# 遍历 ZSH_PLUGINS
for PLUGIN_DIR in "${ZSH_PLUGINS[@]}"/*(/); do
    # print "plugin dir ${PLUGIN_DIR}"
    ZSH_PLUGIN_DIRECTORY+=${PLUGIN_DIR}
    PLUGIN_NAME=${PLUGIN_DIR:t}
    # print "plugin name ${PLUGIN_NAME}"
    if [[ -s "${PLUGIN_DIR}/${PLUGIN_NAME}.zsh" ]]; then
        PLUGIN_FILE="${PLUGIN_DIR}/${PLUGIN_NAME}.zsh"
        # print "plugin file ${PLUGIN_FILE}"
        ZSH_PLUGIN_FILE+=${PLUGIN_FILE}
    elif [[ -s "${PLUGIN_DIR}/${PLUGIN_NAME}.plugin.zsh" ]]; then
        PLUGIN_FILE="${PLUGIN_DIR}/${PLUGIN_NAME}.plugin.zsh"
        # print "plugin file ${PLUGIN_FILE}"
        ZSH_PLUGIN_FILE+=${PLUGIN_FILE}
    elif [[ -s "${PLUGIN_DIR}/${PLUGIN_NAME}.zsh-theme" ]]; then
        PLUGIN_FILE="${PLUGIN_DIR}/${PLUGIN_NAME}.zsh-theme"
        # print "plugin file ${PLUGIN_FILE}"
        ZSH_PLUGIN_FILE+=${PLUGIN_FILE}
    fi
done

# 编译脚本
_compile() {
    while (( $# )); do
        if [[ -s $1 # 文件 存在
            && $1 != *.zwc # 文件不是 zwc结尾 
            && ( ! -s ${1}.zwc || $1 -nt ${1}.zwc ) # 不存在 文件.zwc 或则 文件.zwc 晚于 文件修改时间
            ]]; then
            builtin zcompile -Uz "$1"
        fi
        shift
    done
}

for d in "${ZSH_PLUGIN_DIRECTORY[@]}"; do
    for f in "${d}"/**/*.zsh(.N); do
        # print "compile ${f}"
        _compile "${f}"
    done
    for f in "${d}"/**/*.zsh-theme(.N); do
        # print "compile ${f}"
        _compile "${f}"
    done
done

# 
# 编译自定义函数
# 
EXTRA_FUNC=${ZDOTDIR}/functions
for f in "${EXTRA_FUNC}"/*(.N); do
    # print "compile ${f}"
    _compile "${f}"
done
fpath=( "${EXTRA_FUNC}" "${fpath[@]}")
autoload -Uz ${EXTRA_FUNC}/^*.zshenv(.)

# 加载插件脚本
for f in "${ZSH_PLUGIN_FILE[@]}"; do
    # print "source ${f}"
    source "${f}"
done

# 补全初始化
autoload -Uz compinit; compinit