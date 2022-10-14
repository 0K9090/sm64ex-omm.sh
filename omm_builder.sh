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

# Old logo

OMM_BUILDER_GUI_LOGO_0="                                    _                    "
OMM_BUILDER_GUI_LOGO_1="  ____ __    ___    __  _____      |_|_    _             "
OMM_BUILDER_GUI_LOGO_2=" / __ \| \  / | \  / |  | __ \ _  _ _| | _| | ___  _ __  "
OMM_BUILDER_GUI_LOGO_3="/ /  \ |  \/  |  \/  |  | |/ /| || | | |/   |/ _ \| '_/  "
OMM_BUILDER_GUI_LOGO_4="\ \__/ | |  | | |  | |  | |) \| \/ | | | (] |  __/| |    "
OMM_BUILDER_GUI_LOGO_5=" \____/|_|\/|_|_|\/|_|  |____/ \__/|_|_|\___|\___\|_|    "

# New logo

OMM_BUILDER_GUI_LOGO_0="                                          "
OMM_BUILDER_GUI_LOGO_1="  ____ __    ___    __            _       "
OMM_BUILDER_GUI_LOGO_2=" / __ \| \  / | \  / |      _____| |      "
OMM_BUILDER_GUI_LOGO_3="/ /  \ |  \/  |  \/  |  _  / ___/| |___   "
OMM_BUILDER_GUI_LOGO_4="\ \__/ | |  | | |  | | / \ \___ \|  _  |  "
OMM_BUILDER_GUI_LOGO_5=" \____/|_|\/|_|_|\/|_| \_/ /____/|_| |_|  "

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

OMM_REPO_DESCRIPTIONS=("  PC Port of Super Mario 64 with additional features. DynOS is available as a patch." "  Up-to-date PC Port of Super Mario 64 featuring enhancements and optimizations from HackerSM64." "  PC Port mod developed by TurnFlashed, S4ys and Fito. Features 10 new worlds and a total of 50 Moons." "  PC Port of Lugmillord's rom-hack, Super Mario 74. Features both Normal and Extreme Editions." "  PC Port of Skelux's rom-hack, Super Mario Star Road. Features the 120 main stars and 10 extra stars." "  PC Port of Kampel125's rom-hack, Super Mario 64: The Green Stars. Features 131 unique stars." "  Super Mario 64 with the look of '96 renders. Has DynOS built-in, a new audio system and playable Luigi and Wario.")
OMM_REPO_NAMES=("Super Mario 64 ex-nightly" "Super Mario 64 ex-alo" "Super Mario 64 Moonshine" "Super Mario 74" "Super Mario Star Road" "Super Mario 64: The Green Stars" "Render96")
OMM_REPO_ABBR=("smex" "xalo" "smms" "sm74" "smsr" "smgs" "r96x")
OMM_BUILD_DESCRIPTIONS_ERR=("  Compile the game with some customization." "PBE2" "PBE" "PBE" "PBE")
OMM_BUILD_DESCRIPTIONS=("  Compile the game with some customization." "  Launch the compiled game." "  Clear the build/us_pc directory." "  Reset the game directory to its initial state, i.e. without patches applied." "Delete the game directory and all its content.")
OMM_DEPENDS=("make" "git" "zip" "unzip" "7z" "cc" "gcc" "g++" "cpp")

dependcheck() {
	miss=0
	for i in {1..9}; do
		cdc="${OMM_DEPENDS[$(expr $i - 1)]}"
		echo -e "Checking dependency: '$cdc'... \033[A"
		dcc=$(echo "$cdc" | wc -m)
		check=$(whereis "$cdc" | wc -m)
		if ! [ "$check" == "$(expr $dcc + 1)" ]; then
			echo -e "Checking dependency: '$cdc'... ${COL_GREEN}OK${COL_DEFAULT}"
		else
			miss=1
			echo -e "Checking dependency: '$cdc'... ${COL_RED}MISSING${COL_DEFAULT}"
		fi
	done
	if [ $miss == 1 ]; then
		echo "Found missing dependencies. Installing now..."
		pacman -Syu --needed --noconfirm zip unzip p7zip make git mingw-w64-i686-gcc mingw-w64-x86_64-gcc mingw-w64-i686-glew mingw-w64-x86_64-glew mingw-w64-i686-SDL2 mingw-w64-i686-SDL mingw-w64-x86_64-SDL2 mingw-w64-x86_64-SDL python3
		miss=0
		for i in {1..9}; do
			cdc="${OMM_DEPENDS[$(expr $i - 1)]}"
			echo -e "Checking dependency: '$cdc'... \033[A"
			dcc=$(echo "$cdc" | wc -m)
			check=$(whereis "$cdc" | wc -m)
			if ! [ "$check" == "$(expr $dcc + 1)" ]; then
				echo -e "Checking dependency: '$cdc'... ${COL_GREEN}OK${COL_DEFAULT}"
			else
				miss=1
				echo -e "Checking dependency: '$cdc'... ${COL_RED}MISSING${COL_DEFAULT}"
			fi
		done
		if [ $miss == 1 ]; then
			echo -e "${COL_RED}ERROR: FAILED TO INSTALL NEEDED DEPENDENCIES.${COL_DEFAULT}"
		fi
	fi
}

getinput() {
	if [ $1 == e ] || [ $1 == E ]; then
		if [ $selected -gt 1 ]; then
			((selected--))
		fi
	elif [ $1 == d ] || [ $1 == D ]; then
		if [ $screenid == 1 ]; then
			if [ $selected -lt 7 ]; then
				((selected++))
			fi
		elif [ $screenid == 2 ]; then
			if [ $selected -lt 5 ]; then
				((selected++))
			fi
		fi
	elif [ $1 == x ] || [ $1 == X ]; then
		((screenid--))
	elif [ $1 == c ] || [ $1 == C ]; then
		((screenid++))
	elif [ $screenid == 0 ]; then
		echo -e "\e[?25h"
		stty echo
		clear
		exit
	elif [ $1 == 1 ] || [ $1 == 2 ] || [ $1 == 3 ] || [ $1 == 4 ] || [ $1 == 5 ] || [ $1 == 6 ] || [ $1 == 7 ] || [ $1 == 8 ] || [ $1 == 9 ]; then
		if [ $screenid == 1 ]; then
			if [ $1 -lt 8 ]; then
				selected=$1
				((screenid++))
			fi
		elif [ $screenid == 2 ]; then
			if [ $1 -lt 6 ]; then
				selected=$1
				((screenid++))
			fi
		fi
	fi
}
dependcheck
OMM_PATCH_VERSION="7.3.2" # Local version
if ! [ "h$1" == "h-nvc" ]; then
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
fi
stty -echo
printf '\e[8;27;120t' #resize to 27 rows and 120 cols
echo -e "\e[?25l"
clear
screenid=1
echologo() {
	clear
	echo
	echo -e "  ${COL_LYELLOW}Builder Ver   ${COL_WHITE}${OMM_BUILDER_VERSION}                            ${COL_LMAGENTA}<E>${COL_DEFAULT}  Up     ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_0}${FMT_RESET}${COL_DEFAULT}"
	echo -e "  ${COL_LYELLOW}OMM Version   ${COL_WHITE}${OMM_PATCH_VERSION}                            ${COL_LMAGENTA}<D>${COL_DEFAULT}  Down   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_1}${FMT_RESET}${COL_DEFAULT}"
	echo -e "  ${COL_LYELLOW}.sh Version   ${COL_WHITE}${OMM_SH_VERSION}                            ${COL_LMAGENTA}<S>${COL_DEFAULT}  Left   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_2}${FMT_RESET}${COL_DEFAULT}"
	echo -e "                                                 ${COL_LMAGENTA}<F>${COL_DEFAULT}  Right  ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_3}${FMT_RESET}${COL_DEFAULT}"
	echo -e "                                                 ${COL_LMAGENTA}<C>${COL_DEFAULT}  Select ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_4}${FMT_RESET}${COL_DEFAULT}"
	echo -e "                                                 ${COL_LMAGENTA}<X>${COL_DEFAULT}  Back   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_5}${FMT_RESET}${COL_DEFAULT}"
	echo
}
menu() {
	if [ $screenid == 0 ]; then
		clear
		echo -e "\e[?25h"
		stty echo
		exit
	elif [ $screenid == 1 ]; then
		echologo
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
			echo -e "                                                                                                                        \033[A"
			read -sn 1 -p "${OMM_REPO_DESCRIPTIONS[$(expr $selected - 1)]}" MENU_INPUT
			getinput $MENU_INPUT
			ABBR="${OMM_REPO_ABBR[$(expr $selected - 1)]}"
			NAME="${OMM_REPO_NAMES[$(expr $selected - 1)]}"
			if ! [ $screenid == 1 ]; then
				break
			fi
		done
	elif [ $screenid == 2 ]; then
		selected=1
		echologo
		echo
		echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Commands (${COL_DEFAULT}${FMT_BOLD}5${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}---------------------------------------------------+${FMT_RESET}"
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
		rerr=1
		if [ -d repos ]; then
			cd repos
			if [ -d $ABBR ]; then
				err=0
				cd $ABBR
				if [ -f build/us_pc/sm64.us.f3dex2e.exe ]; then
					rerr=0
				fi
			else
				err=1
			fi
		else
			err=1
		fi
		while :; do
			if [ $selected == 1 ]; then
				echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<1>  Build                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<1>  Build                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ $rerr == 1 ]; then
				if [ $selected == 2 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${BGC_GRAY}${COL_BLACK}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			else
				if [ $err == 0 ]; then
					if [ $selected == 2 ]; then
						echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
					else
						echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
					fi
				else
					if [ $selected == 2 ]; then
						echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${BGC_GRAY}${COL_BLACK}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
					else
						echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
					fi
				fi
			fi
			if [ $err == 0 ]; then
				if [ $selected == 3 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<3>  Clear                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<3>  Clear                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				if [ $selected == 4 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<4>  Reset                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<4>  Reset                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				if [ $selected == 5 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<5>  Delete                                                                                                        ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<5>  Delete                                                                                                        ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				DESC="${OMM_BUILD_DESCRIPTIONS[$(expr $selected - 1)]}"
			else
				if [ $selected == 3 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_GRAY}${COL_BLACK}<3>  Clear                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<3>  Clear                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				if [ $selected == 4 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_GRAY}${COL_BLACK}<4>  Reset                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<4>  Reset                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				if [ $selected == 5 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_GRAY}${COL_BLACK}<5>  Delete                                                                                                        ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<5>  Delete                                                                                                        ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				DESC="${OMM_BUILD_DESCRIPTIONS_ERR[$(expr $selected - 1)]}"
			fi
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e "${COL_LCYAN}${FMT_BOLD} +--------------------------------------------------------------------------------------------------------------------+ ${FMT_RESET}"
			echo -e "                                                                                                                        \033[A"
			if [ $selected == 2 ]; then
				if [ $rerr == 1 ]; then
					DESC="  ${COL_RED}Cannot run $NAME. The game must be built first.${COL_DEFAULT}"
					echo -e "${DESC}\033[A"
					read -sn 1 MENU_INPUT
				else
					read -sn 1 -ep "${OMM_BUILD_DESCRIPTIONS[$(expr $selected - 1)]}" MENU_INPUT
				fi
			else
				if [ "$DESC" == "PBE2" ]; then
					DESC="  ${COL_RED}Cannot run $NAME. The game must be built first.${COL_DEFAULT}"
					echo -e "${DESC}\033[A"
					read -sn 1 MENU_INPUT
				elif [ "$DESC" == "PBE" ]; then
					DESC="  ${COL_RED}The directory '$ABBR' does not exist. Build $NAME to create it.${COL_DEFAULT}"
					echo -e "${DESC}\033[A"
					read -sn 1 MENU_INPUT
				else
					read -sn 1 -ep "${OMM_BUILD_DESCRIPTIONS[$(expr $selected - 1)]}" MENU_INPUT
				fi
			fi
			getinput $MENU_INPUT
			if ! [ $screenid == 2 ]; then
				break
			fi
		done
	else
		clear
		echo -e "\e[?25h"
		stty echo
		exit
	fi
	menu
}

menu #call the menu function
