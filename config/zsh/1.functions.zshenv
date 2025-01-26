# 加载其他zshenv
for ZSHENV_FILE in ${ZDOTDIR}/functions/*.zshenv(onN); do
    source "${ZSHENV_FILE}"
done