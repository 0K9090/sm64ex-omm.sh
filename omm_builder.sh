#!/bin/bash

#
# Get the actual directory that omm_builder.sh is in
#

basedir=$(dirname "${0//\\//}")
cd "$basedir" || exit
stty -echo # Makes it so when you type it doesn't display the characters

#
# Repo links
#

OMM_REPOSITORY="sm64ex-omm"
OMM_REPOSITORY_URL="https://github.com/PeachyPeachSM64/${OMM_REPOSITORY}.git -b nightly"
OMM_BUILDER_VERSION_URL="https://raw.githubusercontent.com/0K9090/sm64ex-omm.sh/master/omm_builder.sh"
OMM_VERSION_URL="https://raw.githubusercontent.com/0K9090/sm64ex-omm.sh/master/omm.mk"
OMM_META_PATCH_URL="https://raw.githubusercontent.com/PeachyPeachSM64/${OMM_REPOSITORY}/master/patch/omm.patch"
OMM_PATCH_URL="https://raw.githubusercontent.com/PeachyPeachSM64/sm64ex-omm-resources/main/omm.patch.bin"
DYNOS_PATCH_URL="https://raw.githubusercontent.com/PeachyPeachSM64/sm64ex-omm-resources/main/dynos.patch"

#
# Data
#

#
# Colors
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

#
# Old logo
#

OMM_BUILDER_GUI_LOGO_0="                                    _                    "
OMM_BUILDER_GUI_LOGO_1="  ____ __    ___    __  _____      |_|_    _             "
OMM_BUILDER_GUI_LOGO_2=" / __ \| \  / | \  / |  | __ \ _  _ _| | _| | ___  _ __  "
OMM_BUILDER_GUI_LOGO_3="/ /  \ |  \/  |  \/  |  | |/ /| || | | |/   |/ _ \| '_/  "
OMM_BUILDER_GUI_LOGO_4="\ \__/ | |  | | |  | |  | |) \| \/ | | | (] |  __/| |    "
OMM_BUILDER_GUI_LOGO_5=" \____/|_|\/|_|_|\/|_|  |____/ \__/|_|_|\___|\___\|_|    "

#
# New logo
#

OMM_BUILDER_GUI_LOGO_0="                                          "
OMM_BUILDER_GUI_LOGO_1="  ____ __    ___    __            _       "
OMM_BUILDER_GUI_LOGO_2=" / __ \| \  / | \  / |      _____| |      "
OMM_BUILDER_GUI_LOGO_3="/ /  \ |  \/  |  \/  |  _  / ___/| |___   "
OMM_BUILDER_GUI_LOGO_4="\ \__/ | |  | | |  | | / \ \___ \|  _  |  "
OMM_BUILDER_GUI_LOGO_5=" \____/|_|\/|_|_|\/|_| \_/ /____/|_| |_|  "

#
# More definitions, some aren't used
#

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
OMM_SH_VERSION="1.0.6"

#
# Descriptions that you see at the bottom of the screen
#

OMM_REPO_DESCRIPTIONS=("  PC Port of Super Mario 64 with additional features. DynOS is available as a patch." "  Up-to-date PC Port of Super Mario 64 featuring enhancements and optimizations from HackerSM64." "  PC Port mod developed by TurnFlashed, S4ys and Fito. Features 10 new worlds and a total of 50 Moons." "  PC Port of Lugmillord's rom-hack, Super Mario 74. Features both Normal and Extreme Editions." "  PC Port of Skelux's rom-hack, Super Mario Star Road. Features the 120 main stars and 10 extra stars." "  PC Port of Kampel125's rom-hack, Super Mario 64: The Green Stars. Features 131 unique stars." "  Super Mario 64 with the look of '96 renders. Has DynOS built-in, a new audio system and playable Luigi and Wario.")
OMM_BUILD_DESCRIPTIONS_ERR=("  Compile the game with some customization." "PBE2" "PBE" "PBE" "PBE")
OMM_BUILD_DESCRIPTIONS=("  Compile the game with some customization." "  Launch the compiled game." "  Clear the build/us_pc directory." "  Reset the game directory to its initial state, i.e. without patches applied." "  Delete the game directory and all its content.")
OMM_OPTIONS_DESCRIPTIONS=("  Building process duration. The faster, the more power-consuming." "  Backend used to render the game." "  Patch the latest version of DynOS to enable Model Packs support as well as an enhanced options menu." "  Game-changing modifications. Not all patches are compatible, so expect errors with some of them." "  Replace the game's original textures by custom ones." "  Currently unavailable." "  Currently unavailable." "  Currently unavailable." "  Compile the game.")

#
# List of the game and directory names
#

OMM_REPO_NAMES=("Super Mario 64 ex-nightly" "Super Mario 64 ex-alo" "Super Mario 64 Moonshine" "Super Mario 74" "Super Mario Star Road" "Super Mario 64: The Green Stars" "Render96")
OMM_REPO_ABBR=("smex" "xalo" "smms" "sm74" "smsr" "smgs" "r96x")

#
# Dependencies
#

OMM_DEPENDS=("make" "git" "zip" "unzip" "7z" "cc" "gcc" "g++" "cpp" "patch")

#
# Some menu stuff
#

OMM_BUILD_SPEEDS=("Slow${BGC_LCYAN}                                                                                     " "Fast${BGC_LCYAN}                                                                                     " "Faster${BGC_LCYAN}                                                                                   " "Fastest${BGC_LCYAN}                                                                                  ")
OMM_BUILD_SPEEDS_U=("Slow                                                                                     " "Fast                                                                                     " "Faster                                                                                   " "Fastest                                                                                  ")
OMM_RENDER_API_S=("OpenGL 2.1${BGC_LCYAN}                                                                               " "DirectX 11${BGC_LCYAN}                                                                               ")
OMM_RENDER_API_UNS=("OpenGL 2.1                                                                               " "DirectX 11                                                                               ")
OMM_DYNOS_TOGGLE_S=("${BGC_LRED}Disabled${BGC_LCYAN}                                                                                 " "${BGC_LGREEN}Enabled${BGC_LCYAN}                                                                                  ")
OMM_DYNOS_TOGGLE_S2=("${BGC_LRED}Disabled${BGC_LCYAN}" "${BGC_LGREEN}Enabled${BGC_LCYAN}")
OMM_DYNOS_TOGGLE_UNS=("${COL_RED}Disabled                                                                                 " "${COL_GREEN}Enabled                                                                                  ")
OMM_DYNOS_TOGGLE_UNS2=("${COL_RED}Disabled" "${COL_GREEN}Enabled")
MENU_GAME_NAMES=("     Super Mario 64 ex-nightly        " "     Super Mario 64 ex-alo            " "     Super Mario 64 Moonshine         " "     Super Mario 74                   " "     Super Mario Star Road            " "     Super Mario 64: The Green Stars  " "     Render96                         ")

#
# PC-Port Repo links
#

GAME_REPOS=("https://github.com/sm64pc/sm64ex.git -b nightly" "https://github.com/AloXado320/sm64ex-alo.git -b master" "https://github.com/sm64pc/sm64ex.git -b nightly" "https://github.com/PeachyPeachSM64/sm64ex-omm.git -b sm74" "https://github.com/PeachyPeachSM64/sm64ex-omm.git -b smsr" "https://github.com/PeachyPeachSM64/sm64ex-omm.git -b smgs" "https://github.com/Render96/Render96ex.git -b tester")

#
# Some more data
#

GAME_COMMITS=("" "b9283d080d8f82befe3917a916843cbfb1399411" "" "" "" "" "")
MENU_SPEEDS=("   Slow                             " "   Fast                             " "   Faster                           " "   Fastest                          ")
MENU_API=("    OpenGL 2.1                       " "    DirectX 11                       ")

#
# Some make flags
#

OMM_MAKE_SPEEDS=("" " -j$(($(nproc) / 2))" " -j$(nproc)" " -j")
OMM_MAKE_RAPI=("RENDER_API=GL WINDOW_API=SDL2 AUDIO_API=SDL2 CONTROLLER_API=SDL2 GRUCODE=f3dex2e" "RENDER_API=D3D11 WINDOW_API=DXGI AUDIO_API=SDL2 CONTROLLER_API=SDL2 GRUCODE=f3dex2e")

#
# Get arguments provided
#

args="$*"

#
# Error script
#

raise_error() {
	echo -e "${COL_RED}<!> ERROR: ${1}${COL_DEFAULT}"
	echo -e "${COL_YELLOW}Press ENTER to quit.${COL_DEFAULT}"
	while :; do # don't stop until enter pressed
		read -rs -N 1 -t 1 key
		if ! [ "$key" == $"\e" ]; then
			if [ "$key" == $'\x0a' ]; then
				break
			fi
		fi
	done
	echo -e "\e[?25h\033[A"
	stty echo
	exit
}

#
# Check for missing dependencies
#

dependcheck() {
	miss=0
	dcc=$(echo "python" | wc -m)
	check=$(whereis "python" | wc -m)
	if ! [ "$check" == "$((dcc + 1))" ]; then
		py_verbase=$(python -V)
		i=6
		while :; do
			((i++))
			pyverchar=${py_verbase:$i:1}
			if [ "h$pyverchar" == "h" ]; then
				break
			fi
			py_ver+=$pyverchar
		done
		echo "Python version: $py_ver"
	else
		miss=1
		echo "Python not found."
	fi
	py_ver="$(echo "$py_ver" | tr -d '.')"
	if ! [ "$py_ver" -lt 3900 ]; then
		raise_error "Python v3.9 or later is required."
	fi
	for i in {1..10}; do
		cdc="${OMM_DEPENDS[$((i - 1))]}"
		echo -e "Checking dependency: '$cdc'... \033[A"
		dcc=${#cdc}
		check=$(whereis "$cdc" | wc -m)
		if ! [ "$check" == "$((dcc + 1))" ]; then
			echo -e "Checking dependency: '$cdc'... ${COL_GREEN}OK${COL_DEFAULT}"
		else
			miss=1
			echo -e "Checking dependency: '$cdc'... ${COL_RED}MISSING${COL_DEFAULT}"
		fi
	done
	if [ $miss == 1 ]; then
		raise_error "Missing dependency. To fix it:\n[Windows] Download and run the 'OMM Builder Setup Script'.\n[Linux] Run the command 'sudo apt install patch build-essential git python3 libglew-dev libsdl2-dev zip p7zip*'."
	fi
}

#
# Get native executable
#

get_exe() {
	if [ -f sm64.us.f3dex2e.exe ]; then
		exe_type=1
	elif [ -f sm64.us.f3dex2e ]; then
		exe_type=2
	else
		raise_error "Game executable not found."
	fi
}

#
# Start the selected game
#

run_game() {
	echo "--- Starting ${NAME}..."
	get_exe
	if [ $exe_type == 1 ]; then
		chmod 755 sm64.us.f3dex2e.exe
		./sm64.us.f3dex2e.exe
	else
		chmod 755 sm64.us.f3dex2e
		./sm64.us.f3dex2e
	fi
	echo -e "\e[?25h\033[A"
	stty echo
	exit # when done, exit
}

#
# Get the key pressed, then react accordingly
#

getinput() {
	if [[ "${OMM_BUILDER_GUI_KEY_UP}" == *"$1"* ]]; then
		if [ "$selected" -gt 1 ]; then
			((selected--))
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_DOWN}" == *"$1"* ]]; then
		if [ "$screenid" == 1 ]; then
			if [ "$selected" -lt 7 ]; then
				((selected++))
			fi
		elif [ "$screenid" == 2 ]; then
			if [ "$selected" -lt 5 ]; then
				((selected++))
			fi
		elif [ "$screenid" == 3 ]; then
			if [ "$selected" -lt 9 ]; then
				((selected++))
			fi
		elif [ "$screenid" == "patch" ]; then
			if [ "$selected" -lt "$patchcount" ]; then
				((selected++))
			fi
		elif [ "$screenid" == "text" ]; then
			if [ "$selected" -lt "$textcount" ]; then
				((selected++))
			fi
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_BACK}" == *"$1"* ]]; then
		if [ "$screenid" == "patch" ] || [ "$screenid" == "text" ]; then
			screenid=3
		else
			((screenid--))
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_ENTER}" == *"$1"* ]]; then
		if [ $screenid == 3 ]; then
			if [ "$selected" == 9 ]; then
				screenid="make"
			elif [ "$selected" == 1 ]; then
				if [ "$lra" -lt 4 ]; then
					((lra++))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lra=1
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$selected" == 2 ]; then
				if [ "$lrb" -lt 2 ]; then
					((lrb++))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lrb=1
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$selected" == 3 ]; then
				if [ "$lrc" -lt 2 ]; then
					((lrc++))
				else
					lrc=1
				fi
			elif [ "$selected" == 4 ]; then
				if [ "$patchcount" -gt 0 ]; then
					screenid="patch"
				fi
			elif [ "$selected" == 5 ]; then
				if [ "$textcount" -gt 0 ]; then
					screenid="text"
				fi
			else
				if [ "$cant" == 0 ] || [ h"$cant" == h ]; then
					((screenid++))
				fi
			fi
		elif [ "$screenid" == 2 ]; then
			if ! [ "$rerr" == 1 ]; then
				if [ "$selected" == 2 ]; then
					cd repos/"$ABBR"/build/us_pc || exit
					clear
					run_game
				else
					if [ "$cant" == 0 ] || [ h"$cant" == h ]; then
						if [ "$screenid" == 2 ]; then
							if [ "$selected" == 5 ]; then
								clear
								echo "--- Deleting ${NAME}..."
								rm -rf repos/"${ABBR}"
								echo "Done."
								echo -e "\e[?25h\033[A"
								stty echo
								exit
							elif [ "$selected" == 3 ]; then
								screenid="clear"
							elif [ "$selected" == 4 ]; then
								screenid="reset"
							else
								((screenid++))
							fi
						elif [ "$screenid" == 3 ]; then
							if [ "$selected" == 4 ]; then
								if ! [ "$patchcount" == 0 ]; then
									screenid="patch"
								fi
							elif [ "$selected" == 5 ]; then
								if ! [ "$textcount" == 0 ]; then
									screenid="text"
								fi
							fi
						else
							((screenid++))
						fi
					fi
				fi
			else
				if [ "$cant" == 0 ] || [ h"$cant" == h ]; then
					if [ "$screenid" == 2 ]; then
						if [ "$selected" == 5 ]; then
							clear
							echo "--- Deleting ${NAME}..."
							rm -rf repos/"${ABBR}"
							echo "Done."
							echo -e "\e[?25h\033[A"
							stty echo
							exit
						elif [ "$selected" == 3 ]; then
							screenid="clear"
						elif [ "$selected" == 4 ]; then
							screenid="reset"
						else
							((screenid++))
						fi
					else
						((screenid++))
					fi
				fi
			fi
		elif [ "$screenid" == patch ]; then
			if [ "${OMM_PATCHES_ENABLED[$((selected - 1))]}" == 0 ]; then
				OMM_PATCHES_ENABLED[$((selected - 1))]="1"
			else
				OMM_PATCHES_ENABLED[$((selected - 1))]="0"
			fi
		elif [ "$screenid" == text ]; then
			if [ "${OMM_TEXTURES_ENABLED[$((selected - 1))]}" == 0 ]; then
				OMM_TEXTURES_ENABLED[$((selected - 1))]="1"
			else
				OMM_TEXTURES_ENABLED[$((selected - 1))]="0"
			fi
		else
			if [ "$cant" == 0 ] || [ h"$cant" == h ]; then
				if [ "$screenid" == 2 ]; then
					if [ "$selected" == 5 ]; then
						clear
						echo "--- Deleting ${NAME}..."
						rm -rf repos/"${ABBR}"
						echo "Done."
						echo -e "\e[?25h\033[A"
						stty echo
						exit
					else
						((screenid++))
					fi
				else
					((screenid++))
				fi
			fi
		fi
	elif [ "$screenid" == 0 ]; then
		echo -e "\e[?25h\033[A"
		stty echo
		clear
		exit
	elif [[ "${OMM_BUILDER_GUI_KEY_DIGIT}" == *"$1"* ]]; then
		if [ "$screenid" == 1 ]; then
			if [ "$1" -lt 8 ]; then
				selected=$1
				((screenid++))
			fi
		elif [ "$screenid" == 2 ]; then
			if [ "$1" == 1 ]; then
				((screenid++))
			else
				if ! [ "$rerr" == 1 ]; then
					if [ "$1" == 2 ]; then
						cd repos/"$ABBR"/build/us_pc || exit
						clear
						run_game
					else
						if [ "$cant" == 0 ] || [ h"$cant" == h ]; then
							if [ "$1" == 5 ]; then
								clear
								echo "--- Deleting ${NAME}..."
								rm -rf repos/"${ABBR}"
								echo "Done."
								echo -e "\e[?25h\033[A"
								stty echo
								exit
							elif [ "$1" == 3 ]; then
								screenid="clear"
							elif [ "$1" == 4 ]; then
								screenid="reset"
							else
								((screenid++))
							fi
						fi
					fi
				else
					if [ "$cant" == 0 ] || [ h"$cant" == h ]; then
						if [ "$1" == 5 ]; then
							clear
							echo "--- Deleting ${NAME}..."
							rm -rf repos/"${ABBR}"
							echo "Done."
							echo -e "\e[?25h\033[A"
							stty echo
							exit
						elif [ "$1" == 3 ]; then
							screenid="clear"
						elif [ "$1" == 4 ]; then
							screenid="reset"
						else
							((screenid++))
						fi
					fi
				fi
			fi
		elif [ "$screenid" == 3 ]; then
			if [ "$1" == 1 ]; then
				if [ $lra -lt 4 ]; then
					((lra++))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lra=1
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$1" == 2 ]; then
				if [ $lrb -lt 2 ]; then
					((lrb++))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lrb=1
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$1" == 3 ]; then
				if [ $lrc -lt 2 ]; then
					((lrc++))
				else
					lrc=1
				fi
			else
				if [ "$1" == 9 ]; then
					screenid="make"
				elif [ "$1" == 4 ]; then
					if [ "$patchcount" -gt 0 ]; then
						screenid="patch"
					fi
				elif [ "$1" == 5 ]; then
					if [ "$textcount" -gt 0 ]; then
						screenid="text"
					fi
				else
					((screenid++))
				fi
			fi
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_LEFT}" == *"$1"* ]]; then
		if [ "$screenid" == 3 ]; then
			if [ "$selected" == 1 ]; then
				if [ $lra -gt 1 ]; then
					((lra--))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lra=4
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$selected" == 2 ]; then
				if [ $lrb -gt 1 ]; then
					((lrb--))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lrb=2
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$selected" == 3 ]; then
				if [ $lrc -gt 1 ]; then
					((lrc--))
				fi
			fi
		elif [ "$screenid" == patch ]; then
			if [ ${OMM_PATCHES_ENABLED[$((selected - 1))]} == 1 ]; then
				OMM_PATCHES_ENABLED[$((selected - 1))]="0"
			fi
		elif [ "$screenid" == text ]; then
			if [ ${OMM_TEXTURES_ENABLED[$((selected - 1))]} == 1 ]; then
				OMM_TEXTURES_ENABLED[$((selected - 1))]="0"
			fi
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_RIGHT}" == *"$1"* ]]; then
		if [ "$screenid" == 3 ]; then
			if [ "$selected" == 1 ]; then
				if [ $lra -lt 4 ]; then
					((lra++))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lra=1
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$selected" == 2 ]; then
				if [ $lrb -lt 2 ]; then
					((lrb++))
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				else
					lrb=1
					echologo
					echo
					echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
				fi
			elif [ "$selected" == 3 ]; then
				if [ $lrc -lt 2 ]; then
					((lrc++))
				fi
			fi
		elif [ "$screenid" == patch ]; then
			if [ ${OMM_PATCHES_ENABLED[$((selected - 1))]} == 0 ]; then
				OMM_PATCHES_ENABLED[$((selected - 1))]="1"
			fi
		elif [ "$screenid" == text ]; then
			if [ ${OMM_TEXTURES_ENABLED[$((selected - 1))]} == 0 ]; then
				OMM_TEXTURES_ENABLED[$((selected - 1))]="1"
			fi
		fi
	fi
}

#
# Get list of custom patches, then generate the menus for it
#

getcustom() {
	cd custom || exit
	if [ -f patches ]; then
		rm patches
	fi
	if [ -f textures ]; then
		rm textures
	fi
	find ./*.patch 2>/dev/null >>patches
	patchcount=$(sed -n '$=' patches)
	if [ "h$patchcount" == "h" ]; then
		patchcount=0
	fi
	if [ "$patchcount" -gt 15 ]; then
		rm patches
		raise_error "Amount of patches in the custom directory is limited to 15 so far. Please remove some."
	fi
	OMM_PATCHES_LIST=()
	OMM_PATCHES_ENABLED=()
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$patchcount" ]; then
			break
		fi
		OMM_PATCHES_LIST+=("$(sed "$i"'!d' patches | sed 's,./,,g')")
		OMM_PATCHES_ENABLED+=("0")
	done
	rm patches
	ls -1d ./*/ 2>/dev/null >>textures
	textcount=$(sed -n '$=' textures)
	if [ "h$textcount" == "h" ]; then
		textcount=0
	fi
	if [ "$textcount" -gt 15 ]; then
		rm textures
		raise_error "Amount of textures in the custom directory is limited to 15 so far. Please remove some."
	fi
	OMM_TEXTURES_LIST=()
	OMM_TEXTURES_ENABLED=()
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$textcount" ]; then
			break
		fi
		if [ -d "$(sed "$i"'!d' textures)/gfx" ]; then
			OMM_TEXTURES_LIST+=("$(sed "$i"'!d' textures)")
		fi
		OMM_TEXTURES_ENABLED+=("0")
	done
	rm textures
	if [ -f list ]; then
		rm list
	fi
	ls -1d ./*/ 2>/dev/null >>list
	i=0
	tpc=0
	spc=0
	while :; do
		((i++))
		if [ "h$(sed -n '$=' list)" == "h" ]; then
			break
		fi
		if [ "$i" -gt "$(sed -n '$=' list)" ]; then
			break
		fi
		line=$(sed "$i"'!d' list)
		cd "$line" || exit
		if [ -d gfx ]; then
			((tpc++))
		elif [ -f sound/sound_data.tbl ]; then
			((spc++))
		fi
		cd ../
	done
	rm list
	cd ../

	#
	# Patches
	#

	i=0 # start generating the patches menu
	lc=0
	while :; do
		((i++))
		if [ "$i" -gt "$patchcount" ]; then
			break
		fi
		charcount=$((${#OMM_PATCHES_LIST[$((i - 1))]} - 1))
		if [ "$charcount" -gt $lc ]; then
			lc=$charcount
		fi
	done
	lines=" ${COL_LCYAN}${FMT_BOLD}| ${BGC_LCYAN}     "
	lineus=" ${COL_LCYAN}${FMT_BOLD}|      "
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
		lineus+=" "
	done
	lines+="        ${FMT_RESET}${COL_BLACK}${OMM_DYNOS_TOGGLE_S2[0]}"
	lineus+="        ${FMT_RESET}${OMM_DYNOS_TOGGLE_UNS2[0]}"
	real=$(echo -e "$lines")
	lc="$((118 - $((${#real} - 36))))"
	lc2="$lc"
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
	done
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc2" ]; then
			break
		fi
		lineus+=" "
	done
	lines+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	lineus+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	selected=0
	while :; do
		((selected++))
		if [ "$selected" -gt "$patchcount" ]; then
			break
		fi
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$patchcount" ]; then
				break
			fi
			pte=
			pte2=
			if [ "$i" == 1 ]; then
				pte+="\033[16A\r"
				pte2+="\033[16A\r"
			fi
			pte+="${lines}\033[2C"
			pte+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<${i}>  ${OMM_PATCHES_LIST[$((i - 1))]}${FMT_RESET}"
			parrs+=("${pte}")
			pte2+="${lineus}\033[2C"
			pte2+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<${i}>  ${OMM_PATCHES_LIST[$((i - 1))]}${FMT_RESET}"
			parrus+=("${pte2}")
		done
		pomle=
		pte=
		j="$((16 - i))"
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$j" ]; then
				break
			fi
			pte+="\n ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		done
		pomle="${pte}"
	done
	i=0
	lc=0
	while :; do
		((i++))
		if [ "$i" -gt "$patchcount" ]; then
			break
		fi
		charcount=$((${#OMM_PATCHES_LIST[$((i - 1))]} - 1))
		if [ "$charcount" -gt $lc ]; then
			lc=$charcount
		fi
	done
	lines=" ${COL_LCYAN}${FMT_BOLD}| ${BGC_LCYAN}     "
	lineus=" ${COL_LCYAN}${FMT_BOLD}|      "
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
		lineus+=" "
	done
	lines+="        ${FMT_RESET}${COL_BLACK}${OMM_DYNOS_TOGGLE_S2[1]}"
	lineus+="        ${FMT_RESET}${OMM_DYNOS_TOGGLE_UNS2[1]}"
	real=$(echo -e "$lines")
	lc="$((118 - $((${#real} - 36))))"
	lc2="$lc"
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
	done
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc2" ]; then
			break
		fi
		lineus+=" "
	done
	lines+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	lineus+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	selected=0
	while :; do
		((selected++))
		if [ "$selected" -gt "$patchcount" ]; then
			break
		fi
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$patchcount" ]; then
				break
			fi
			pte=
			pte2=
			if [ "$i" == 1 ]; then
				pte+="\033[16A\r"
				pte2+="\033[16A\r"
			fi
			pte+="${lines}\033[2C"
			pte+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<${i}>  ${OMM_PATCHES_LIST[$((i - 1))]}${FMT_RESET}"
			parrtes+=("${pte}")
			pte2+="${lineus}\033[2C"
			pte2+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<${i}>  ${OMM_PATCHES_LIST[$((i - 1))]}${FMT_RESET}"
			parrteus+=("${pte2}")
		done
		pomle=
		pte=
		j="$((16 - i))"
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$j" ]; then
				break
			fi
			pte+="\n ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		done
		pomle="${pte}"
	done

	#
	# Texture packs
	#

	i=0
	lc=0
	while :; do
		((i++))
		if [ "$i" -gt "$textcount" ]; then
			break
		fi
		charcount=$((${#OMM_TEXTURES_LIST[$((i - 1))]} - 1))
		if [ "$charcount" -gt $lc ]; then
			lc=$charcount
		fi
	done
	lines=" ${COL_LCYAN}${FMT_BOLD}| ${BGC_LCYAN}     "
	lineus=" ${COL_LCYAN}${FMT_BOLD}|      "
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
		lineus+=" "
	done
	lines+="        ${FMT_RESET}${COL_BLACK}${OMM_DYNOS_TOGGLE_S2[0]}"
	lineus+="        ${FMT_RESET}${OMM_DYNOS_TOGGLE_UNS2[0]}"
	real=$(echo -e "$lines")
	lc="$((118 - $((${#real} - 36))))"
	lc2="$lc"
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
	done
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc2" ]; then
			break
		fi
		lineus+=" "
	done
	lines+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	lineus+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	selected=0
	while :; do
		((selected++))
		if [ "$selected" -gt "$textcount" ]; then
			break
		fi
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$textcount" ]; then
				break
			fi
			pte=
			pte2=
			if [ "$i" == 1 ]; then
				pte+="\033[16A\r"
				pte2+="\033[16A\r"
			fi
			pte+="${lines}\033[2C"
			pte+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<${i}>  ${OMM_TEXTURES_LIST[$((i - 1))]}${FMT_RESET}"
			parrs2+=("${pte}")
			pte2+="${lineus}\033[2C"
			pte2+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<${i}>  ${OMM_TEXTURES_LIST[$((i - 1))]}${FMT_RESET}"
			parrus2+=("${pte2}")
		done
		pomle2=
		pte=
		j="$((16 - i))"
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$j" ]; then
				break
			fi
			pte+="\n ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		done
		pomle2="${pte}"
	done
	i=0
	lc=0
	while :; do
		((i++))
		if [ "$i" -gt "$textcount" ]; then
			break
		fi
		charcount=$((${#OMM_TEXTURES_LIST[$((i - 1))]} - 1))
		if [ "$charcount" -gt $lc ]; then
			lc=$charcount
		fi
	done
	lines=" ${COL_LCYAN}${FMT_BOLD}| ${BGC_LCYAN}     "
	lineus=" ${COL_LCYAN}${FMT_BOLD}|      "
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
		lineus+=" "
	done
	lines+="        ${FMT_RESET}${COL_BLACK}${OMM_DYNOS_TOGGLE_S2[1]}"
	lineus+="        ${FMT_RESET}${OMM_DYNOS_TOGGLE_UNS2[1]}"
	real=$(echo -e "$lines")
	lc="$((118 - $((${#real} - 36))))"
	lc2="$lc"
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc" ]; then
			break
		fi
		lines+=" "
	done
	i=0
	while :; do
		((i++))
		if [ "$i" -gt "$lc2" ]; then
			break
		fi
		lineus+=" "
	done
	lines+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	lineus+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	selected=0
	while :; do
		((selected++))
		if [ "$selected" -gt "$textcount" ]; then
			break
		fi
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$textcount" ]; then
				break
			fi
			pte=
			pte2=
			if [ "$i" == 1 ]; then
				pte+="\033[16A\r"
				pte2+="\033[16A\r"
			fi
			pte+="${lines}\033[2C"
			pte+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<${i}>  ${OMM_TEXTURES_LIST[$((i - 1))]}${FMT_RESET}"
			parrtes2+=("${pte}")
			pte2+="${lineus}\033[2C"
			pte2+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<${i}>  ${OMM_TEXTURES_LIST[$((i - 1))]}${FMT_RESET}"
			parrteus2+=("${pte2}")
		done
		pomle2=
		pte=
		j="$((16 - i))"
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$j" ]; then
				break
			fi
			pte+="\n ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		done
		pomle2="${pte}"
	done
}

echo -e "\e[?25l\033[A" # Hide cursor
dependcheck

#
# Check builder version
#

if ! [[ "${args}" == *"--no-version-check"* ]]; then
	wget --no-check-certificate --no-cache --no-cookies ${OMM_BUILDER_VERSION_URL} -O omm_builder.version -q || rm -f omm_builder.version
	if [ -f omm_builder.version ]; then
		if ! [ "$(cat omm_builder.sh)" == "$(cat omm_builder.version)" ]; then
			echo "Your OMM builder is not up-to-date."
			echo "Do you want to download and install the latest version? [y/n]"
			read -rsn 1 yn
			if [ "h$yn" == hy ] || [ "h$yn" == hY ]; then
				echo "Updating OMM builder..."
				git config pull.rebase true
				git checkout master -q
				git pull -q
				echo "Done."
			fi
		fi
		rm omm_builder.version
	fi
fi
OMM_PATCH_VERSION="7.3.2"
OMM_SH_LOCAL_VERSION="1.0.5" # Local version
OMM_PATCH_DIRNAME="omm.7.3.2.3"
outdate=0

#
# Check version
#

if ! [[ "$args" == *"--no-version-check"* ]]; then
	echo "--- Checking OMM.sh version..."
	OMM_SH_VERSION=""
	if [ -f omm.version ]; then
		rm omm.version
	fi
	wget --no-check-certificate --no-cache --no-cookies "${OMM_VERSION_URL}" -O omm.version -q || rm -f omm.version
	if [ -f omm.version ]; then
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
			OMM_SH_VERSION+=$char
		done
		line=$(sed '36!d' omm.version)
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
			OMM_PATCH_REVISION+=$char
		done
		if ! [ "${OMM_PATCH_DIRNAME}" == "omm.${OMM_PATCH_VERSION}.${OMM_PATCH_REVISION}" ]; then
			outdate=1
		fi
		OMM_PATCH_DIRNAME="omm.${OMM_PATCH_VERSION}.${OMM_PATCH_REVISION}"
		echo "Version: ${OMM_PATCH_VERSION}"
		echo ".sh Version: ${OMM_SH_LOCAL_VERSION}"
		echo "Revision: ${OMM_PATCH_REVISION}"
		echo "Directory: ${OMM_PATCH_DIRNAME}"
		rm omm.version
	else
		echo "Unable to retrieve remote OMM version number."
		echo "Using local OMM patch..."
		if ! [ -d "${OMM_PATCH_DIRNAME}" ]; then
			raise_error "Cannot find any OMM patch."
		fi
	fi
fi

#
# extract zip files
#

echo "--- Extracting zip archives..."
cd custom || exit
if [ -f archives ]; then
	rm archives
fi
find ./*.7z ./*.zip ./*.gz ./*.tar ./*.rar 2>/dev/null >>archives
i=0
if ! [ "h$(cat archives)" == "h" ]; then
	while :; do
		((i++))
		line="$(sed "$i"'!d' archives)"
		if [ "$i" -gt "$(sed -n '$=' archives)" ] || [ "h$line" == "h" ]; then
			break
		fi
		j=0
		charc=
		while :; do
			((j++))
			charc+=${line:$((j - 1)):1}
			if [ "${line:$j:1}" == "." ]; then
				break
			fi
		done
		if ! [ -d "$charc" ]; then
			7z x "$line" -o"$charc" >/dev/null 2>&1
		fi
	done
fi
rm archives
cd ../

#
# Run the script to get the custom assets/patches
#

echo "--- Initializing..."
getcustom
printf '\e[8;27;120t' # resize to 27 rows and 120 cols
clear
screenid=1

#
# Outputs the OMM.sh logo.
#

echologo() {
	e1="                                                 "
	e2="                                                 "
	e3="                                                 "
	if ! [ $screenid == 1 ]; then
		e1="  ${COL_LYELLOW}Game Name${COL_WHITE}${MENU_GAME_NAMES[$((NAMEN - 1))]}"
	fi
	if [ $screenid == 3 ] || [ "$screenid" == "patch" ]; then
		e2="  ${COL_LYELLOW}Build Speed${COL_WHITE}${MENU_SPEEDS[$((lra - 1))]}"
		e3="  ${COL_LYELLOW}Render API${COL_WHITE}${MENU_API[$((lrb - 1))]}"
	fi
	clear
	echo
	echo -e "  ${COL_LYELLOW}Builder Ver   ${COL_WHITE}${OMM_BUILDER_VERSION}                            ${COL_LMAGENTA}<E>${COL_DEFAULT}  Up     ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_0}${FMT_RESET}${COL_DEFAULT}"
	echo -e "  ${COL_LYELLOW}OMM Version   ${COL_WHITE}${OMM_PATCH_VERSION}                            ${COL_LMAGENTA}<D>${COL_DEFAULT}  Down   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_1}${FMT_RESET}${COL_DEFAULT}"
	echo -e "  ${COL_LYELLOW}.sh Version   ${COL_WHITE}${OMM_SH_VERSION}                            ${COL_LMAGENTA}<S>${COL_DEFAULT}  Left   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_2}${FMT_RESET}${COL_DEFAULT}"
	echo -e "${e1}${COL_LMAGENTA}<F>${COL_DEFAULT}  Right  ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_3}${FMT_RESET}${COL_DEFAULT}"
	echo -e "${e2}${COL_LMAGENTA}<C>${COL_DEFAULT}  Select ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_4}${FMT_RESET}${COL_DEFAULT}"
	echo -e "${e3}${COL_LMAGENTA}<X>${COL_DEFAULT}  Back   ${COL_LYELLOW}${FMT_BOLD}${OMM_BUILDER_GUI_LOGO_5}${FMT_RESET}${COL_DEFAULT}"
	echo
}

#
# Menu scripts
#

menu() {
	cant=0
	if [ $screenid == 0 ]; then
		clear
		echo -e "\e[?25h\033[A" # Show cursor
		stty echo               # Characters you type are displayed in the terminal again
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
			read -rsn 1 -p "${OMM_REPO_DESCRIPTIONS[$((selected - 1))]}" MENU_INPUT
			getinput "$MENU_INPUT"
			ABBR="${OMM_REPO_ABBR[$((selected - 1))]}"
			NAME="${OMM_REPO_NAMES[$((selected - 1))]}"
			REPO="${GAME_REPOS[$((selected - 1))]}"
			COMMIT="${GAME_COMMITS[$((selected - 1))]}"
			NAMEN=$selected
			if ! [ $screenid == 1 ]; then
				break
			fi
		done
	elif [ $screenid == 2 ]; then
		f=0
		selected=1
		echologo
		echo
		echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Commands (${COL_DEFAULT}${FMT_BOLD}5${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}--------------------------------------------------+${FMT_RESET}"
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
			cd repos || exit
			if [ -d "$ABBR" ]; then
				err=0
				if [ -f "$ABBR"/build/us_pc/sm64.us.f3dex2e.exe ]; then
					rerr=0
				fi
			else
				err=1
			fi
			cd ../
		else
			err=1
		fi
		while :; do
			cant=0
			if [ -f baserom.us.z64 ]; then
				if [ $selected == 1 ]; then
					echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<1>  Build                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<1>  Build                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			else
				if [ $selected == 1 ]; then
					cant=1
					echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<1>  Build                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<1>  Build                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			fi
			if [ $rerr == 1 ]; then
				if [ $selected == 2 ]; then
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${COL_GRAY}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
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
						echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<2>  Run                                                                                                           ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
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
				DESC="${OMM_BUILD_DESCRIPTIONS[$((selected - 1))]}"
			else
				if [ $selected == 3 ]; then
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<3>  Clear                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<3>  Clear                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				if [ $selected == 4 ]; then
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<4>  Reset                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<4>  Reset                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				if [ $selected == 5 ]; then
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<5>  Delete                                                                                                        ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<5>  Delete                                                                                                        ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
				DESC="${OMM_BUILD_DESCRIPTIONS_ERR[$((selected - 1))]}"
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
					read -rsn 1 MENU_INPUT
				else
					read -rsn 1 -ep "${OMM_BUILD_DESCRIPTIONS[$((selected - 1))]}" MENU_INPUT
				fi
			else
				if [ "$DESC" == "PBE2" ]; then
					DESC="  ${COL_RED}Cannot run $NAME. The game must be built first.${COL_DEFAULT}"
					echo -e "${DESC}\033[A"
					read -rsn 1 MENU_INPUT
				elif [ "$DESC" == "PBE" ]; then
					DESC="  ${COL_RED}The directory '$ABBR' does not exist. Build $NAME to create it.${COL_DEFAULT}"
					echo -e "${DESC}\033[A"
					read -rsn 1 MENU_INPUT
				else
					if [ $selected == 1 ]; then
						if ! [ -f baserom.us.z64 ]; then
							DESC="  ${COL_RED}Cannot build ${NAME} without the original Super Mario 64 US rom.${COL_DEFAULT}"
							echo -e "${DESC}\033[A"
							read -rsn 1 MENU_INPUT
						else
							read -rsn 1 -p "${OMM_BUILD_DESCRIPTIONS[$((selected - 1))]}" MENU_INPUT
						fi
					else
						read -rsn 1 -p "${OMM_BUILD_DESCRIPTIONS[$((selected - 1))]}" MENU_INPUT
					fi
				fi
			fi
			getinput "$MENU_INPUT"
			if ! [ $screenid == 2 ]; then
				break
			fi
		done
	elif [ $screenid == 3 ]; then
		j="${#OMM_PATCHES_ENABLED[@]}"
		i=0
		enabled=0
		while :; do
			((i++))
			if [ "$i" -gt $j ]; then
				break
			fi
			item="${OMM_PATCHES_ENABLED[$((i - 1))]}"
			if [ $item == 1 ]; then
				((enabled++))
			fi
		done
		j="${#OMM_TEXTURES_ENABLED[@]}"
		i=0
		enabledd=0
		while :; do
			((i++))
			if [ "$i" -gt $j ]; then
				break
			fi
			item="${OMM_TEXTURES_ENABLED[$((i - 1))]}"
			if [ $item == 1 ]; then
				((enabledd++))
			fi
		done
		selected=1
		if [ $f == 0 ]; then
			lra=3
			lrb=1
			lrc=1
			f=1
		fi
		echologo
		echo
		echo -e "\033[A\r${COL_LCYAN}${FMT_BOLD} +----------------------------------------------------${FMT_RESET}${COL_LCYAN} Build (${COL_DEFAULT}${FMT_BOLD}9${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}-----------------------------------------------------+${FMT_RESET}"
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
		while :; do
			cant=0
			if [ $selected == 1 ]; then
				echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<1>  Build Speed          ${BGC_WHITE}${OMM_BUILD_SPEEDS[$((lra - 1))]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<1>  Build Speed          ${COL_DEFAULT}${OMM_BUILD_SPEEDS_U[$((lra - 1))]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ $selected == 2 ]; then
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<2>  Render API           ${BGC_WHITE}${OMM_RENDER_API_S[$((lrb - 1))]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<2>  Render API           ${COL_DEFAULT}${OMM_RENDER_API_UNS[$((lrb - 1))]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ "${NAME}" == "Render96" ]; then
				if [ $selected == 3 ]; then
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<3>  DynOS                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<3>  DynOS                                                                                                         ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			else
				if [ $selected == 3 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<3>  DynOS                ${OMM_DYNOS_TOGGLE_S[$((lrc - 1))]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<3>  DynOS                ${OMM_DYNOS_TOGGLE_UNS[$((lrc - 1))]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			fi
			patchcant=0
			if [ "$patchcount" -gt 0 ]; then
				if [ $selected == 4 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<4>  Patches              ${enabled}/${patchcount}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<4>  Patches              ${enabled}/${patchcount}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			else
				if [ $selected == 4 ]; then
					patchcant=1
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<4>  Patches                                                                                                       ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<4>  Patches                                                                                                       ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			fi
			textcant=0
			if [ "$textcount" -gt 0 ]; then
				if [ $selected == 5 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<5>  Texture Packs        ${enabledd}/${tpc}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<5>  Texture Packs        ${enabledd}/${tpc}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			else
				if [ $selected == 5 ]; then
					textcant=1
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<5>  Texture Packs                                                                                                 ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<5>  Texture Packs                                                                                                 ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			fi
			if [ $selected == 6 ]; then
				cant=1
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<6>  Sound Packs          (Currently Unavailable)                                                                  ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<6>  Sound Packs          (Currently Unavailable)                                                                  ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ $selected == 7 ]; then
				cant=1
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<7>  Model Packs          (Currently Unavailable)                                                                  ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<7>  Model Packs          (Currently Unavailable)                                                                  ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ $selected == 8 ]; then
				cant=1
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<8>  Audio Packs          (Currently Unavailable)                                                                  ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<8>  Audio Packs          (Currently Unavailable)                                                                  ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ $selected == 9 ]; then
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<9>  Build and Run                                                                                                 ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<9>  Build and Run                                                                                                 ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e " ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
			echo -e "${COL_LCYAN}${FMT_BOLD} +--------------------------------------------------------------------------------------------------------------------+ ${FMT_RESET}"
			echo -e "                                                                                                                        \033[A"
			if [ $patchcant == 1 ]; then
				echo -e "${COL_RED}  There is no available element in Patches.${COL_DEFAULT}\033[A"
				read -rsn 1 MENU_INPUT
			elif [ $textcant == 1 ]; then
				echo -e "${COL_RED}  There is no available element in Texture Packs.${COL_DEFAULT}\033[A"
				read -rsn 1 MENU_INPUT
			elif [ "${NAME}" == "Render96" ] && [ $selected == 3 ]; then
				echo -e "${COL_RED}  DynOS cannot be patched to Render96.${COL_DEFAULT}\033[A"
				read -rsn 1 MENU_INPUT
			else
				read -rsn 1 -p "${OMM_OPTIONS_DESCRIPTIONS[$((selected - 1))]}" MENU_INPUT
			fi
			getinput "$MENU_INPUT"
			if ! [ $screenid == 3 ]; then
				break
			fi
		done
	elif [ "$screenid" == "make" ]; then
		clear
		echo "--- Building ${NAME}..."
		echo "--- Checking OMM patch (1/3)..."
		if ! [[ "$args" == *"-l"* ]]; then
			if ! [ $outdate == 0 ]; then
				echo "Removing old OMM patches..."
				ls -1d ./*/ 2>/dev/null >>lsist
				i=0
				while :; do
					((i++))
					line=$(sed "$i"'!d' lsist)
					if [ "$i" -gt "$(sed -n '$=' lsist)" ]; then
						break
					fi
					if [[ $line == *"omm."* ]]; then
						rm -rf "$line"
					fi
				done
				echo "Creating ${OMM_PATCH_DIRNAME} from the latest version..."
				git clone -q --single-branch "${OMM_REPOSITORY_URL}" "${OMM_PATCH_DIRNAME}"
				if ! [ -d "$OMM_PATCH_DIRNAME" ]; then
					raise_error "Cannot clone the git repository: ${OMM_REPOSITORY_URL}"
				fi
			elif ! [ -d "${OMM_PATCH_DIRNAME}" ]; then
				echo "Removing old OMM patches..."
				ls -1d ./*/ 2>/dev/null >>lsist
				i=0
				while :; do
					((i++))
					line=$(sed "$i"'!d' lsist)
					if [ "$i" -gt "$(sed -n '$=' lsist)" ]; then
						break
					fi
					if [[ $line == *"omm."* ]]; then
						rm -rf "$line"
					fi
				done
				echo "Creating ${OMM_PATCH_DIRNAME} from the latest version..."
				git clone -q --single-branch "${OMM_REPOSITORY_URL}" "${OMM_PATCH_DIRNAME}"
				if ! [ -d "$OMM_PATCH_DIRNAME" ]; then
					raise_error "Cannot clone the git repository: ${OMM_REPOSITORY_URL}"
				fi
			fi
		else
			echo "--- Using local OMM patch..."
			if ! [ -d "${OMM_PATCH_DIRNAME}" ]; then
				raise_error "No OMM patch available."
			fi
		fi
		echo "--- Checking OMM patch (2/3)..."
		rm -rf "${OMM_PATCH_DIRNAME}"/.git
		rm -rf "${OMM_PATCH_DIRNAME}"/.github
		rm -rf "${OMM_PATCH_DIRNAME}"/.vscode
		cd "${OMM_PATCH_DIRNAME}" || exit
		if [ -f ../list ]; then
			rm ../list
		fi
		ls -a1 >>../list
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$(sed -n '$=' ../list)" ]; then
				break
			fi
			line=$(sed "$i"'!d' ../list)
			if ! [ -d "$line" ]; then
				if ! [[ "$line" == *"omm"* ]]; then
					rm -rf "$line"
				fi
			fi
		done
		rm ../list
		cd ../
		freshclone=0
		if ! [ -d repos/"${ABBR}" ]; then
			if ! [ -d repos ]; then
				mkdir repos
			fi
			echo "--- Cloning ${NAME} repository..."
			git clone --single-branch ${REPO} repos/${ABBR}
			if ! [ -d repos/"${ABBR}" ]; then
				raise_error "Cannot clone the git repository: ${ABBR}"
			fi
			freshclone=1
		fi
		cd repos/"${ABBR}" || exit
		echo "--- Checking OMM patch (3/3)..."
		if [ 1 == 0 ]; then # Here because
			if ! [ $freshclone == 1 ] && ! [ -f enhancements/"${OMM_PATCH_DIRNAME}".patched ]; then
				echo "--- Resetting ${NAME}..."
				git config pull.rebase true
				git reset -q --hard
				git clean -q -fdx
				git pull -q
				git reset -q --hard "${COMMIT}"
			fi
		fi
		if [ "${NAME}" == "Super Mario 64 Moonshine" ]; then
			echo >>enhancements/moonshine.patched
		fi
		echo "--- Eliminating bad files..."
		ls -1 >>filelist
		i=0
		while :; do
			((i++))
			if [ "$i" -gt "$(sed -n '$=' filelist)" ]; then
				break
			fi
			cline=$(sed "$i"'!d' filelist)
			if [[ "$cline" == *".png.png"* ]]; then
				rm "$cline"
			fi
		done
		rm filelist
		DYNOSARG=
		if [ $lrc == 2 ]; then
			DYNOSARG=" dynos"
			echo "--- Applying DynOS patch..."
			if ! [ -f dynos.patch ]; then
				wget --no-check-certificate --no-cache --no-cookies ${DYNOS_PATCH_URL} -O dynos.patch -q || rm -f dynos.patch
			fi
			if [ -f dynos.patch ]; then
				patch -p1 -t <"dynos.patch"
				cd enhancements || exit
				echo >>"${OMM_PATCH_DIRNAME}".patched
				cd ../
				rm dynos.patch
			fi
		fi
		if [ "$enabled" -gt 0 ]; then
			echo "--- Applying patches..."
			i=0
			j="${#OMM_PATCHES_ENABLED[@]}"
			while :; do
				((i++))
				if [ "$i" -gt $j ]; then
					break
				fi
				item="${OMM_PATCHES_ENABLED[$((i - 1))]}"
				patch="${OMM_PATCHES_LIST[$((i - 1))]}"
				if [ $item == 1 ]; then
					patch -p1 -t <../../custom/"${patch}"
					cd enhancements || exit
					echo >>"${patch}ed"
					cd ../
				fi
			done
		fi
		echo "--- Applying OMM patch..."
		cp -rf ../../"${OMM_PATCH_DIRNAME}"/. .
		if ! [ -f Makefile ]; then
			raise_error "Missing Makefile."
		fi
		echo "python3 omm_patcher.py -p ${ABBR}${DYNOSARG}"
		python3 omm_patcher.py -p "${ABBR}${DYNOSARG}"
		echo >>enhancements/"${OMM_PATCH_DIRNAME}".patched
		echo "--- Building game..."
		cp -f ../../baserom.us.z64 baserom.us.z64
		echo "make${OMM_MAKE_SPEEDS[$((lra - 1))]} OMM_BUILDER=1 VERSION=us ${OMM_MAKE_RAPI[$((lrb - 1))]}"
		make${OMM_MAKE_SPEEDS[$((lra - 1))]} OMM_BUILDER=1 VERSION=us ${OMM_MAKE_RAPI[$((lrb - 1))]} | tee ../../"${ABBR}".logs.txt
		chmod 755 -f -R ./build/us_pc/res
		chmod 755 -f -R ./build/us_pc/dynos
		cd build/us_pc || exit
		run_game
	elif [ "$screenid" == "patch" ]; then
		selected=1
		while :; do
			i=0
			buffer=
			while :; do
				((i++))
				if [ "$i" -gt "$patchcount" ]; then
					break
				fi
				if ! [ "$i" == 1 ]; then
					buffer+="\n"
				fi
				if [ ${OMM_PATCHES_ENABLED[$((i - 1))]} == 0 ]; then
					if [ $selected == "$i" ]; then
						buffer+="${parrs[$((i - 1))]}"
					else
						buffer+="${parrus[$((i - 1))]}"
					fi
				else
					if [ $selected == "$i" ]; then
						buffer+="${parrtes[$((i - 1))]}"
					else
						buffer+="${parrteus[$((i - 1))]}"
					fi
				fi
			done
			echologo
			echo -e "${COL_LCYAN}${FMT_BOLD} +---------------------------------------------------${FMT_RESET}${COL_LCYAN} Patches (${COL_DEFAULT}${FMT_BOLD}${patchcount}${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}----------------------------------------------------+${FMT_RESET}"
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
			echo -e "${buffer}"
			echo -e "\033[A${pomle}"
			echo -e "${COL_LCYAN}${FMT_BOLD} +--------------------------------------------------------------------------------------------------------------------+ ${FMT_RESET}"
			echo -e "\033[A"
			read -rsn 1 MENU_INPUT
			getinput "$MENU_INPUT"
			if ! [ $screenid == patch ]; then
				break
			fi
		done
	elif [ "$screenid" == "text" ]; then
		selected=1
		while :; do
			i=0
			buffer=
			while :; do
				((i++))
				if [ "$i" -gt "$textcount" ]; then
					break
				fi
				if ! [ "$i" == 1 ]; then
					buffer+="\n"
				fi
				if [ ${OMM_TEXTURES_ENABLED[$((i - 1))]} == 0 ]; then
					if [ $selected == "$i" ]; then
						buffer+="${parrs2[$((i - 1))]}"
					else
						buffer+="${parrus2[$((i - 1))]}"
					fi
				else
					if [ $selected == "$i" ]; then
						buffer+="${parrtes2[$((i - 1))]}"
					else
						buffer+="${parrteus2[$((i - 1))]}"
					fi
				fi
			done
			echologo
			echo -e "${COL_LCYAN}${FMT_BOLD} +------------------------------------------------${FMT_RESET}${COL_LCYAN}- Texture Packs (${COL_DEFAULT}${FMT_BOLD}${textcount}${FMT_RESET}${COL_LCYAN}) ${FMT_BOLD}------------------------------------------------+${FMT_RESET}"
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
			echo -e "${buffer}"
			echo -e "\033[A${pomle2}"
			echo -e "${COL_LCYAN}${FMT_BOLD} +--------------------------------------------------------------------------------------------------------------------+ ${FMT_RESET}"
			echo -e "\033[A"
			read -rsn 1 MENU_INPUT
			getinput "$MENU_INPUT"
			if ! [ $screenid == patch ]; then
				break
			fi
		done
	elif [ "$screenid" == "clear" ]; then
		clear
		echo "--- Clearing ${NAME} build directory..."
		rm -rf repos/"${ABBR}"/build
		echo "Done."
		echo -e "\e[?25h\033[A"
		stty echo
		exit
	elif [ "$screenid" == "reset" ]; then
		clear
		echo "--- Resetting ${NAME}..."
		git config pull.rebase true
		git reset -q --hard
		git clean -q -fdx
		git pull -q
		git reset -q --hard "${COMMIT}"
		echo "Done."
	else
		clear
		echo -e "\e[?25h\033[A"
		stty echo
		exit
	fi
	menu
}

menu #call the menu function
