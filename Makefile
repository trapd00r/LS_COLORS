FILE_NAME=lscolors
export XDG_DATA_HOME ?= $${$$HOME/.local/share}

clean:
	@command rm ${FILE_NAME}.sh 2>/dev/null || true
	@command rm ${FILE_NAME}.csh 2>/dev/null || true

generate: clean
	@dircolors -b LS_COLORS > ${FILE_NAME}.sh
	@dircolors -b LS_COLORS > ${FILE_NAME}.csh

install: generate
	@command cp ${FILE_NAME}.sh ${FILE_NAME}.csh ${XDG_DATA_HOME}
	@echo "To enable the colors, add the following line to your shell's start-up script:"
	@echo ""
	@echo "For Bourne shell (e.g. ~/.bashrc or ~/.zshrc):"
	@echo "   source ${XDG_DATA_HOME}/${FILE_NAME}.sh"
	@echo ""
	@echo "For C shell (e.g. ~/.cshrc):"
	@echo "   source ${XDG_DATA_HOME}/${FILE_NAME}.csh"
