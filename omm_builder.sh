OMM_REPOSITORY="sm64ex-omm"
OMM_REPOSITORY_URL="https://github.com/PeachyPeachSM64/${OMM_REPOSITORY}.git -b nightly"
OMM_BUILDER_VERSION_URL="https://raw.githubusercontent.com/PeachyPeachSM64/${OMM_REPOSITORY}/master/omm_builder.py"
OMM_VERSION_URL="https://raw.githubusercontent.com/PeachyPeachSM64/${OMM_REPOSITORY}/nightly/omm.mk"
OMM_META_PATCH_URL="https://raw.githubusercontent.com/PeachyPeachSM64/${OMM_REPOSITORY}/master/patch/omm.patch"
OMM_PATCH_URL="https://raw.githubusercontent.com/PeachyPeachSM64/sm64ex-omm-resources/main/omm.patch.bin"
DYNOS_PATCH_URL="https://raw.githubusercontent.com/PeachyPeachSM64/sm64ex-omm-resources/main/dynos.patch"

#
# Data
#

FMT_RESET="\033[0m"
FMT_BOLD="\033[1m"
FMT_ULINE="\033[4m"
FMT_INVERT="\033[7m"
COL_DEFAULT="\033[39m"
COL_BLACK="\033[30m"
COL_RED="\033[31m"
COL_GREEN="\033[32m"
COL_YELLOW="\033[33m"
COL_BLUE="\033[34m"
COL_MAGENTA="\033[35m"
COL_CYAN="\033[36m"
COL_LGRAY="\033[37m"
COL_GRAY="\033[90m"
COL_LRED="\033[91m"
COL_LGREEN="\033[92m"
COL_LYELLOW="\033[93m"
COL_LBLUE="\033[94m"
COL_LMAGENTA="\033[95m"
COL_LCYAN="\033[96m"
COL_WHITE="\033[97m"
BGC_DEFAULT="\033[49m"
BGC_BLACK="\033[40m"
BGC_RED="\033[41m"
BGC_GREEN="\033[42m"
BGC_YELLOW="\033[43m"
BGC_BLUE="\033[44m"
BGC_MAGENTA="\033[45m"
BGC_CYAN="\033[46m"
BGC_LGRAY="\033[47m"
BGC_GRAY="\033[100m"
BGC_LRED="\033[101m"
BGC_LGREEN="\033[102m"
BGC_LYELLOW="\033[103m"
BGC_LBLUE="\033[104m"
BGC_LMAGENTA="\033[105m"
BGC_LCYAN="\033[106m"
BGC_WHITE="\033[107m"

OMM_BUILDER_GUI_LOGO_0="                                    _                    "
OMM_BUILDER_GUI_LOGO_1="  ____ __    ___    __  _____      |_|_    _             "
OMM_BUILDER_GUI_LOGO_2=" / __ \| \  / | \  / |  | __ \ _  _ _| | _| | ___  _ __  "
OMM_BUILDER_GUI_LOGO_3="/ /  \ |  \/  |  \/  |  | |/ /| || | | |/   |/ _ \| '_/  "
OMM_BUILDER_GUI_LOGO_4="\ \__/ | |  | | |  | |  | |) \| \/ | | | (] |  __/| |    "
OMM_BUILDER_GUI_LOGO_5=" \____/|_|\/|_|_|\/|_|  |____/ \__/|_|_|\___|\___\|_|    "

OMM_BUILDER_GUI_MENU_CLOSE="0"
OMM_BUILDER_GUI_MENU_GAMES="1"
OMM_BUILDER_GUI_MENU_COMMANDS="2"
OMM_BUILDER_GUI_MENU_BUILD="3"
OMM_BUILDER_GUI_MENU_PATCHES="4"
OMM_BUILDER_GUI_MENU_TEXTURES="5"
OMM_BUILDER_GUI_MENU_SOUNDS="6"
OMM_BUILDER_GUI_MENU_MODELS="7"
OMM_BUILDER_GUI_MENU_AUDIOS="8"

OMM_BUILDER_GUI_ACTION_NONE="0"
OMM_BUILDER_GUI_ACTION_BUILD="1"
OMM_BUILDER_GUI_ACTION_RUN="2"
OMM_BUILDER_GUI_ACTION_CLEAR="3"
OMM_BUILDER_GUI_ACTION_RESET="4"
OMM_BUILDER_GUI_ACTION_DELETE="5"

OMM_BUILDER_GUI_KEY_UP="eE"
OMM_BUILDER_GUI_KEY_DOWN="dD"
OMM_BUILDER_GUI_KEY_LEFT="sS"
OMM_BUILDER_GUI_KEY_RIGHT="fF"
OMM_BUILDER_GUI_KEY_ENTER="cC"
OMM_BUILDER_GUI_KEY_BACK="xX0"
OMM_BUILDER_GUI_KEY_DIGIT="123456789"

OMM_BUILDER_BASEROM="None"
OMM_BUILDER_VERSION="2.0.0"
OMM_PATCH_VERSION=""
OMM_PATCH_REVISION=""
OMM_PATCH_DIRNAME=""
OMM_PATCH_TRUENAME=""
OMM_SH_VERSION="1.0.0"

menu_test() {
	if [ -f omm.version ]; then
		rm omm.version
	fi
	wget --no-check-certificate --no-cache --no-cookies "${OMM_VERSION_URL}" -O omm.version -q
	line=$(sed '35!d' omm.version)
	b=0
	while :; do
		((b++))
		char=${line:$b:1}
		if [ "$char" == "=" ]; then
			break
		fi
	done
	((b++))
	while :; do
		((b++))
		char=${line:$b:1}
		if [ "h$char" == "h" ]; then
			break
		fi
		OMM_PATCH_VERSION+=$char
	done
	printf '\e[8;27;120t' #resize to 27 rows and 120 cols
	echo -e "\e[?25l"
	clear
	echo
	echo -e "  ${COL_LYELLOW}Builder Ver   ${COL_WHITE}${OMM_BUILDER_VERSION}                            ${COL_LMAGENTA}<E>${COL_DEFAULT}  Up     ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_0}${FMT_RESET}${COL_DEFAULT}"
	echo -e "  ${COL_LYELLOW}OMM Version   ${COL_WHITE}${OMM_PATCH_VERSION}                            ${COL_LMAGENTA}<D>${COL_DEFAULT}  Down   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_1}${FMT_RESET}${COL_DEFAULT}"
	echo -e "  ${COL_LYELLOW}.sh Version   ${COL_WHITE}${OMM_SH_VERSION}                            ${COL_LMAGENTA}<S>${COL_DEFAULT}  Left   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_2}${FMT_RESET}${COL_DEFAULT}"
	echo -e "                                                 ${COL_LMAGENTA}<F>${COL_DEFAULT}  Right  ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_3}${FMT_RESET}${COL_DEFAULT}"
	echo -e "                                                 ${COL_LMAGENTA}<C>${COL_DEFAULT}  Select ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_4}${FMT_RESET}${COL_DEFAULT}"
	echo -e "                                                 ${COL_LMAGENTA}<X>${COL_DEFAULT}  Back   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_5}${FMT_RESET}${COL_DEFAULT}"
	echo
	echo -e "${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Games (${COL_DEFAULT}${FMT_BOLD}7${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	echo
	selected=1
	while :; do
		if [ $selected == 1 ]; then
			echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<1>  Super Mario 64 ex-nightly                                                                                     ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		else
			echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<1>  Super Mario 64 ex-nightly                                                                                     ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		fi
		if [ $selected == 2 ]; then
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<2>  Super Mario 64 ex-alo                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		else
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<2>  Super Mario 64 ex-alo                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		fi
		if [ $selected == 3 ]; then
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<3>  Super Mario 64 Moonshine                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		else
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<3>  Super Mario 64 Moonshine                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		fi
		if [ $selected == 4 ]; then
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<4>  Super Mario 74                                                                                                ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		else
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<4>  Super Mario 74                                                                                                ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		fi
		if [ $selected == 5 ]; then
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<5>  Super Mario Star Road                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		else
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<5>  Super Mario Star Road                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		fi
		if [ $selected == 6 ]; then
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<6>  Super Mario 64: The Green Stars                                                                               ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		else
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<6>  Super Mario 64: The Green Stars                                                                               ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		fi
		if [ $selected == 7 ]; then
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<7>  Render96                                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		else
			echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<7>  Render96                                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
		fi
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		echo -e "${COL_LCYAN}${FMT_BOLD} +--------------------------------------------------------------------------------------------------------------------+ ${FMT_RESET}"
		read -sn 1 -p "  PC Port of Super Mario 64 with additional features. DynOS is available as a patch." MENU_INPUT
	done

}

menu_test
