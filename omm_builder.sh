OMM_REPOSITORY="sm64ex-omm"
OMM_REPOSITORY_URL="https://github.com/PeachyPeachSM64/${OMM_REPOSITORY}.git -b nightly"
OMM_BUILDER_VERSION_URL="https://raw.githubusercontent.com/PeachyPeachSM64/${OMM_REPOSITORY}/master/omm_builder.py"
OMM_VERSION_URL="https://raw.githubusercontent.com/0K9090/sm64ex-omm.sh/master/omm.mk"
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
OMM_SH_VERSION="1.0.4"

OMM_REPO_DESCRIPTIONS=("  PC Port of Super Mario 64 with additional features. DynOS is available as a patch." "  Up-to-date PC Port of Super Mario 64 featuring enhancements and optimizations from HackerSM64." "  PC Port mod developed by TurnFlashed, S4ys and Fito. Features 10 new worlds and a total of 50 Moons." "  PC Port of Lugmillord's rom-hack, Super Mario 74. Features both Normal and Extreme Editions." "  PC Port of Skelux's rom-hack, Super Mario Star Road. Features the 120 main stars and 10 extra stars." "  PC Port of Kampel125's rom-hack, Super Mario 64: The Green Stars. Features 131 unique stars." "  Super Mario 64 with the look of '96 renders. Has DynOS built-in, a new audio system and playable Luigi and Wario.")
OMM_REPO_NAMES=("Super Mario 64 ex-nightly" "Super Mario 64 ex-alo" "Super Mario 64 Moonshine" "Super Mario 74" "Super Mario Star Road" "Super Mario 64: The Green Stars" "Render96")
OMM_REPO_ABBR=("smex" "xalo" "smms" "sm74" "smsr" "smgs" "r96x")
OMM_BUILD_DESCRIPTIONS_ERR=("  Compile the game with some customization." "PBE2" "PBE" "PBE" "PBE")
OMM_BUILD_DESCRIPTIONS=("  Compile the game with some customization." "  Launch the compiled game." "  Clear the build/us_pc directory." "  Reset the game directory to its initial state, i.e. without patches applied." "  Delete the game directory and all its content.")
OMM_DEPENDS=("make" "git" "zip" "unzip" "7z" "cc" "gcc" "g++" "cpp")
OMM_BUILD_SPEEDS=("Slow${BGC_LCYAN}                                                                                     " "Fast${BGC_LCYAN}                                                                                     " "Faster${BGC_LCYAN}                                                                                   " "Fastest${BGC_LCYAN}                                                                                  ")
OMM_BUILD_SPEEDS_U=("Slow                                                                                     " "Fast                                                                                     " "Faster                                                                                   " "Fastest                                                                                  ")
OMM_RENDER_API_S=("OpenGL 2.1${BGC_LCYAN}                                                                               " "DirectX 11${BGC_LCYAN}                                                                               ")
OMM_RENDER_API_UNS=("OpenGL 2.1                                                                               " "DirectX 11                                                                               ")
OMM_DYNOS_TOGGLE_S=("${BGC_LRED}Disabled${BGC_LCYAN}                                                                                 " "${BGC_LGREEN}Enabled${BGC_LCYAN}                                                                                  ")
OMM_DYNOS_TOGGLE_S2=("${BGC_LRED}Disabled${BGC_LCYAN}" "${BGC_LGREEN}Enabled${BGC_LCYAN}")
OMM_DYNOS_TOGGLE_UNS=("${COL_RED}Disabled                                                                                 " "${COL_GREEN}Enabled                                                                                  ")
OMM_DYNOS_TOGGLE_UNS2=("${COL_RED}Disabled" "${COL_GREEN}Enabled")
MENU_GAME_NAMES=("     Super Mario 64 ex-nightly        " "     Super Mario 64 ex-alo            " "     Super Mario 64 Moonshine         " "     Super Mario 74                   " "     Super Mario Star Road            " "     Super Mario 64: The Green Stars  " "     Render96                         ")
GAME_REPOS=("https://github.com/sm64pc/sm64ex.git -b nightly" "https://github.com/AloXado320/sm64ex-alo.git -b master" "https://github.com/sm64pc/sm64ex.git -b nightly" "https://github.com/PeachyPeachSM64/sm64ex-omm.git -b sm74" "https://github.com/PeachyPeachSM64/sm64ex-omm.git -b smsr" "https://github.com/PeachyPeachSM64/sm64ex-omm.git -b smgs" "https://github.com/Render96/Render96ex.git -b tester")
GAME_COMMITS=("" "b9283d080d8f82befe3917a916843cbfb1399411" "" "" "" "" "")
MENU_SPEEDS=("   Slow                             " "   Fast                             " "   Faster                           " "   Fastest                          ")
MENU_API=("    OpenGL 2.1                       " "    DirectX 11                       ")
OMM_OPTIONS_DESCRIPTIONS=("  Building process duration. The faster, the more power-consuming." "  Backend used to render the game." "  Patch the latest version of DynOS to enable Model Packs support as well as an enhanced options menu." "  Doesn't work yet." "  Doesn't work yet." "  Currently unavailable." "  Currently unavailable." "  Currently unavailable." "  Compile the game.")
OMM_MAKE_SPEEDS=("" " -j$(expr $(nproc) / 2)" " -j$(nproc)" " -j")
OMM_MAKE_RAPI=("RENDER_API=GL WINDOW_API=SDL2 AUDIO_API=SDL2 CONTROLLER_API=SDL2 GRUCODE=f3dex2e" "RENDER_API=D3D11 WINDOW_API=DXGI AUDIO_API=SDL2 CONTROLLER_API=SDL2 GRUCODE=f3dex2e")

args="$@"

raise_error() {
	echo -e "${COL_RED}<!> ERROR: ${1}${COL_DEFAULT}"
	echo -e "${COL_YELLOW}Press ENTER to quit.${COL_DEFAULT}"
	while :; do # don't stop until enter pressed
		read -s -N 1 -t 1 key
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

dependcheck() {
	miss=0
	dcc=$(echo "python" | wc -m)
	check=$(whereis "python" | wc -m)
	if ! [ "$check" == "$(expr $dcc + 1)" ]; then
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
	py_ver="$(echo $py_ver | tr -d '.')"
	if ! [ $py_ver -lt 3900 ]; then
		raise_error "Python v3.9 or later is required."
	fi
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
		raise_error "Missing dependency. To fix it:\n[Windows] Download and run the 'OMM Builder Setup Script'.\n[Linux] Run the command 'sudo apt install build-essential git python3 libglew-dev libsdl2-dev zip p7zip*'."
	fi
}

get_exe() {
	if [ -f sm64.us.f3dex2e.exe ]; then
		exe_type=1
	elif [ -f sm64.us.f3dex2e ]; then
		exe_type=2
	else
		raise_error "Game executable not found."
	fi
}

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

getinput() {
	if [[ "${OMM_BUILDER_GUI_KEY_UP}" == *"$1"* ]]; then
		if [ $selected -gt 1 ]; then
			((selected--))
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_DOWN}" == *"$1"* ]]; then
		if [ $screenid == 1 ]; then
			if [ $selected -lt 7 ]; then
				((selected++))
			fi
		elif [ $screenid == 2 ]; then
			if [ $selected -lt 5 ]; then
				((selected++))
			fi
		elif [ $screenid == 3 ]; then
			if [ $selected -lt 9 ]; then
				((selected++))
			fi
		elif [ "$screenid" == "patch" ]; then
			if [ $selected -lt $patchcount ]; then
				((selected++))
			fi
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_BACK}" == *"$1"* ]]; then
		if [ "$screenid" == "patch" ]; then
			screenid=3
		else
			((screenid--))
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_ENTER}" == *"$1"* ]]; then
		if [ $screenid == 3 ]; then
			if [ $selected == 9 ]; then
				screenid=make
			elif [ $selected == 1 ]; then
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
			elif [ $selected == 2 ]; then
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
			elif [ $selected == 3 ]; then
				if [ $lrc -lt 2 ]; then
					((lrc++))
				else
					lrc=1
				fi
			elif [ $selected == 4 ]; then
				screenid="patch"
			else
				if [ $cant == 0 ] || [ h$cant == h ]; then
					((screenid++))
				fi
			fi
		elif [ $screenid == 2 ]; then
			if ! [ $rerr == 1 ]; then
				if [ $selected == 2 ]; then
					cd repos/$ABBR/build/us_pc
					clear
					run_game
				else
					if [ $cant == 0 ] || [ h$cant == h ]; then
						if [ $screenid == 2 ]; then
							if [ $selected == 5 ]; then
								clear
								echo "--- Deleting ${NAME}..."
								rm -rf repos/${ABBR}
								echo "Done."
								echo -e "\e[?25h\033[A"
								stty echo
								exit
							elif [ $selected == 3 ]; then
								screenid="clear"
							elif [ $selected == 4 ]; then
								screenid="reset"
							else
								((screenid++))
							fi
						elif [ $screenid == 3 ]; then
							if [ $selected == 4 ]; then
								if ! [ $patchcount == 0 ]; then
									screenid=patch
								fi
							fi
						else
							((screenid++))
						fi
					fi
				fi
			else
				if [ $cant == 0 ] || [ h$cant == h ]; then
					if [ $screenid == 2 ]; then
						if [ $selected == 5 ]; then
							clear
							echo "--- Deleting ${NAME}..."
							rm -rf repos/${ABBR}
							echo "Done."
							echo -e "\e[?25h\033[A"
							stty echo
							exit
						elif [ $selected == 3 ]; then
							screenid="clear"
						elif [ $selected == 4 ]; then
							screenid="reset"
						else
							((screenid++))
						fi
					else
						((screenid++))
					fi
				fi
			fi
		elif [ $screenid == patch ]; then
			if [ ${OMM_PATCHES_ENABLED[$(expr $selected - 1)]} == 0 ]; then
				OMM_PATCHES_ENABLED[$(expr $selected - 1)]="1"
			else
				OMM_PATCHES_ENABLED[$(expr $selected - 1)]="0"
			fi
		else
			if [ $cant == 0 ] || [ h$cant == h ]; then
				if [ $screenid == 2 ]; then
					if [ $selected == 5 ]; then
						clear
						echo "--- Deleting ${NAME}..."
						rm -rf repos/${ABBR}
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
	elif [ $screenid == 0 ]; then
		echo -e "\e[?25h\033[A"
		stty echo
		clear
		exit
	elif [[ "${OMM_BUILDER_GUI_KEY_DIGIT}" == *"$1"* ]]; then
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
		elif [ $screenid == 3 ]; then
			if [ $1 == 1 ]; then
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
			elif [ $1 == 2 ]; then
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
			elif [ $1 == 3 ]; then
				if [ $lrc -lt 2 ]; then
					((lrc++))
				else
					lrc=1
				fi
			else
				selected=$1
				if [ $1 == 9 ]; then
					screenid=make
				elif [ $1 == 4 ]; then
					screenid=patch
				else
					((screenid++))
				fi
			fi
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_LEFT}" == *"$1"* ]]; then
		if [ $screenid == 3 ]; then
			if [ $selected == 1 ]; then
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
			elif [ $selected == 2 ]; then
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
			elif [ $selected == 3 ]; then
				if [ $lrc -gt 1 ]; then
					((lrc--))
				fi
			fi
		elif [ $screenid == patch ]; then
			if [ ${OMM_PATCHES_ENABLED[$(expr $selected - 1)]} == 1 ]; then
				OMM_PATCHES_ENABLED[$(expr $selected - 1)]="0"
			fi
		fi
	elif [[ "${OMM_BUILDER_GUI_KEY_RIGHT}" == *"$1"* ]]; then
		if [ $screenid == 3 ]; then
			if [ $selected == 1 ]; then
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
			elif [ $selected == 2 ]; then
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
			elif [ $selected == 3 ]; then
				if [ $lrc -lt 2 ]; then
					((lrc++))
				fi
			fi
		elif [ $screenid == patch ]; then
			if [ ${OMM_PATCHES_ENABLED[$(expr $selected - 1)]} == 0 ]; then
				OMM_PATCHES_ENABLED[$(expr $selected - 1)]="1"
			fi
		fi
	fi
}

getcustom() {
	cd custom
	if [ -f patches ]; then
		rm patches
	fi
	echo >>patches "$(find *.patch 2>/dev/null)"
	patchcount=$(sed -n '$=' patches)
	if [ $patchcount -gt 15 ]; then
		rm patches
		raise_error "Amount of patches in the custom directory is limited to 15 so far. Please remove some."
	fi
	OMM_PATCHES_LIST=()
	i=0
	while :; do
		((i++))
		if [ $i -gt $(sed -n '$=' patches) ]; then
			break
		fi
		OMM_PATCHES_LIST+=("$(sed $i'!d' patches)")
	done
	OMM_PATCHES_ENABLED=()
	i=0
	while :; do
		((i++))
		if [ $i -gt $(sed -n '$=' patches) ]; then
			break
		fi
		OMM_PATCHES_ENABLED+=("0")
	done
	rm patches
	if [ -f list ]; then
		rm list
	fi
	echo >>list "$(ls -1d */)"
	i=0
	tpc=0
	spc=0
	while :; do
		((i++))
		if [ "$i" -gt "$(sed -n '$=' list)" ]; then
			break
		fi
		line=$(sed $i'!d' list)
		cd $line
		if [ -d gfx ]; then
			((tpc++))
		elif [ -f sound/sound_data.tbl ]; then
			((spc++))
		fi
		cd ../
	done
	rm list
	cd ../
	i=0 # start generating the patches menu
	lc=0
	while :; do
		((i++))
		if [ $i -gt $patchcount ]; then
			break
		fi
		charcount=$(expr $(echo ${OMM_PATCHES_LIST[$(expr $i - 1)]} | wc -m) - 1)
		if [ $charcount -gt $lc ]; then
			lc=$charcount
		fi
	done
	lines=" ${COL_LCYAN}${FMT_BOLD}| ${BGC_LCYAN}     "
	lineus=" ${COL_LCYAN}${FMT_BOLD}|      "
	i=0
	while :; do
		((i++))
		if [ $i -gt $lc ]; then
			break
		fi
		lines+=" "
		lineus+=" "
	done
	lines+="        ${FMT_RESET}${COL_BLACK}${OMM_DYNOS_TOGGLE_S2[0]}"
	lineus+="        ${FMT_RESET}${OMM_DYNOS_TOGGLE_UNS2[0]}"
	real=$(echo -e "$lines")
	lc="$(expr 118 - $(expr ${#real} - 36))"
	lc2="$lc"
	i=0
	while :; do
		((i++))
		if [ $i -gt $lc ]; then
			break
		fi
		lines+=" "
	done
	i=0
	while :; do
		((i++))
		if [ $i -gt $lc2 ]; then
			break
		fi
		lineus+=" "
	done
	lines+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	lineus+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	selected=0
	parr=()
	while :; do
		((selected++))
		if [ $selected -gt $patchcount ]; then
			break
		fi
		i=0

		while :; do
			((i++))
			if [ $i -gt $patchcount ]; then
				break
			fi
			pte=
			pte2=
			if [ $i == 1 ]; then
				pte+="\033[16A\r"
				pte2+="\033[16A\r"
			fi
			pte+="${lines}\033[2C"
			pte+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<${i}>  ${OMM_PATCHES_LIST[$(expr $i - 1)]}${FMT_RESET}"
			parrs+=("${pte}")
			pte2+="${lineus}\033[2C"
			pte2+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<${i}>  ${OMM_PATCHES_LIST[$(expr $i - 1)]}${FMT_RESET}"
			parrus+=("${pte2}")
		done
		pomle=
		pte=
		j="$(expr 16 - $i)"
		i=0
		while :; do
			((i++))
			if [ $i -gt $j ]; then
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
		if [ $i -gt $patchcount ]; then
			break
		fi
		charcount=$(expr $(echo ${OMM_PATCHES_LIST[$(expr $i - 1)]} | wc -m) - 1)
		if [ $charcount -gt $lc ]; then
			lc=$charcount
		fi
	done
	lines=" ${COL_LCYAN}${FMT_BOLD}| ${BGC_LCYAN}     "
	lineus=" ${COL_LCYAN}${FMT_BOLD}|      "
	i=0
	while :; do
		((i++))
		if [ $i -gt $lc ]; then
			break
		fi
		lines+=" "
		lineus+=" "
	done
	lines+="        ${FMT_RESET}${COL_BLACK}${OMM_DYNOS_TOGGLE_S2[1]}"
	lineus+="        ${FMT_RESET}${OMM_DYNOS_TOGGLE_UNS2[1]}"
	real=$(echo -e "$lines")
	lc="$(expr 118 - $(expr ${#real} - 36))"
	lc2="$lc"
	i=0
	while :; do
		((i++))
		if [ $i -gt $lc ]; then
			break
		fi
		lines+=" "
	done
	i=0
	while :; do
		((i++))
		if [ $i -gt $lc2 ]; then
			break
		fi
		lineus+=" "
	done
	lines+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	lineus+="${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}\033[A"
	selected=0
	parrte=()
	while :; do
		((selected++))
		if [ $selected -gt $patchcount ]; then
			break
		fi
		i=0
		while :; do
			((i++))
			if [ $i -gt $patchcount ]; then
				break
			fi
			pte=
			pte2=
			if [ $i == 1 ]; then
				pte+="\033[16A\r"
				pte2+="\033[16A\r"
			fi
			pte+="${lines}\033[2C"
			pte+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<${i}>  ${OMM_PATCHES_LIST[$(expr $i - 1)]}${FMT_RESET}"
			parrtes+=("${pte}")
			pte2+="${lineus}\033[2C"
			pte2+="  ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<${i}>  ${OMM_PATCHES_LIST[$(expr $i - 1)]}${FMT_RESET}"
			parrteus+=("${pte2}")
		done
		pomle=
		pte=
		j="$(expr 16 - $i)"
		i=0
		while :; do
			((i++))
			if [ $i -gt $j ]; then
				break
			fi
			pte+="\n ${COL_LCYAN}${FMT_BOLD}|                                                                                                                    | ${FMT_RESET}"
		done
		pomle="${pte}"
	done
}

echo -e "\e[?25l\033[A" # Hide cursor
dependcheck
OMM_PATCH_VERSION="7.3.2"
OMM_SH_LOCAL_VERSION="1.0.4" # Local version
OMM_PATCH_DIRNAME="omm.7.3.2.3"
if ! [[ "$args" == *"--no-version-check"* ]]; then
	echo "--- Checking OMM.sh version..."
	OMM_SH_VERSION=""
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
	if ! [ "$OMM_SH_LOCAL_VERSION" == "$OMM_SH_VERSION" ]; then
		echo "Your OMM builder is not up-to-date."
		read -sn 1 -p "Do you want to download and install the latest version? [y/n] " inp
		if [ "h$inp" == hy ] || [ "h$inp" == hY ]; then
			echo "Updating OMM builder..."
			git config pull.rebase true
			git checkout master -q
			git pull -q
			rm -rf custom
			echo "Done."
			OMM_SH_LOCAL_VERSION=$OMM_SH_VERSION
		fi
	fi
	OMM_PATCH_DIRNAME="omm.${OMM_PATCH_VERSION}.${OMM_PATCH_REVISION}"
	echo "Version: ${OMM_PATCH_VERSION}"
	echo ".sh Version: ${OMM_SH_LOCAL_VERSION}"
	echo "Revision: ${OMM_PATCH_REVISION}"
	echo "Directory: ${OMM_PATCH_DIRNAME}"
	rm omm.version
fi
echo "--- Initializing..."
getcustom
stty -echo            # Makes it so when you type it doesn't display the characters
printf '\e[8;27;120t' # resize to 27 rows and 120 cols
clear
screenid=1
echologo() {
	e1="                                                 "
	e2="                                                 "
	e3="                                                 "
	if ! [ $screenid == 1 ]; then
		e1="  ${COL_LYELLOW}Game Name${COL_WHITE}${MENU_GAME_NAMES[$(expr $NAMEN - 1)]}"
	fi
	if [ $screenid == 3 ] || [ "$screenid" == "patch" ]; then
		e2="  ${COL_LYELLOW}Build Speed${COL_WHITE}${MENU_SPEEDS[$(expr $lra - 1)]}"
		e3="  ${COL_LYELLOW}Render API${COL_WHITE}${MENU_API[$(expr $lrb - 1)]}"
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
			read -sn 1 -p "${OMM_REPO_DESCRIPTIONS[$(expr $selected - 1)]}" MENU_INPUT
			getinput $MENU_INPUT
			ABBR="${OMM_REPO_ABBR[$(expr $selected - 1)]}"
			NAME="${OMM_REPO_NAMES[$(expr $selected - 1)]}"
			REPO="${GAME_REPOS[$(expr $selected - 1)]}"
			COMMIT="${GAME_COMMITS[$(expr $selected - 1)]}"
			NAMEN=$selected
			if ! [ $screenid == 1 ]; then
				break
			fi
		done
	elif [ $screenid == 2 ]; then
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
			cd repos
			if [ -d $ABBR ]; then
				err=0
				if [ -f $ABBR/build/us_pc/sm64.us.f3dex2e.exe ]; then
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
				DESC="${OMM_BUILD_DESCRIPTIONS[$(expr $selected - 1)]}"
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
					if [ $selected == 1 ]; then
						if ! [ -f baserom.us.z64 ]; then
							DESC="  ${COL_RED}Cannot build ${NAME} without the original Super Mario 64 US rom.${COL_DEFAULT}"
							echo -e "${DESC}\033[A"
							read -sn 1 MENU_INPUT
						else
							read -sn 1 -p "${OMM_BUILD_DESCRIPTIONS[$(expr $selected - 1)]}" MENU_INPUT
						fi
					else
						read -sn 1 -p "${OMM_BUILD_DESCRIPTIONS[$(expr $selected - 1)]}" MENU_INPUT
					fi
				fi
			fi
			getinput $MENU_INPUT
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
			if [ $i -gt $j ]; then
				break
			fi
			item="${OMM_PATCHES_ENABLED[$(expr $i - 1)]}"
			if [ $item == 1 ]; then
				((enabled++))
			fi
		done
		selected=1
		lra=3
		lrb=1
		lrc=1
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
				echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<1>  Build Speed          ${BGC_WHITE}${OMM_BUILD_SPEEDS[$(expr $lra - 1)]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e "\033[16A\r ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<1>  Build Speed          ${COL_DEFAULT}${OMM_BUILD_SPEEDS_U[$(expr $lra - 1)]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ $selected == 2 ]; then
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<2>  Render API           ${BGC_WHITE}${OMM_RENDER_API_S[$(expr $lrb - 1)]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<2>  Render API           ${COL_DEFAULT}${OMM_RENDER_API_UNS[$(expr $lrb - 1)]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			if [ $selected == 3 ]; then
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<3>  DynOS                ${OMM_DYNOS_TOGGLE_S[$(expr $lrc - 1)]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<3>  DynOS                ${OMM_DYNOS_TOGGLE_UNS[$(expr $lrc - 1)]}${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			fi
			patchcant=0
			if [ $patchcount -gt 0 ]; then
				if [ $selected == 4 ]; then
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<4>  Patches              ${enabled}/${patchcount}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<4>  Patches              ${enabled}/${patchcount}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			else
				if [ $selected == 2 ]; then
					patchcant=1
					cant=1
					echo -e " ${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}${FMT_INVERT}${BGC_BLACK}${COL_GRAY}${FMT_BOLD}<4>  Patches                                                                                                       ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				else
					echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_GRAY}<4>  Patches                                                                                                       ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
				fi
			fi
			if [ $selected == 5 ]; then
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${BGC_LCYAN}${COL_BLACK}<5>  Texture Packs        0/${tpc}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
			else
				echo -e " ${COL_LCYAN}${FMT_BOLD}|${FMT_RESET} ${COL_CYAN}<5>  Texture Packs        0/${tpc}                                                                                      ${FMT_RESET}${COL_LCYAN}${FMT_BOLD}| ${FMT_RESET}"
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
				read -sn 1 MENU_INPUT
			else
				read -sn 1 -p "${OMM_OPTIONS_DESCRIPTIONS[$(expr $selected - 1)]}" MENU_INPUT
			fi
			getinput $MENU_INPUT
			if ! [ $screenid == 3 ]; then
				break
			fi
		done
	elif [ "$screenid" == "make" ]; then
		clear
		echo "--- Building ${NAME}..."
		if ! [[ "$args" == *"-l"* ]]; then
			echo "--- Getting OMM patch..."
			rm -rf "${OMM_PATCH_DIRNAME}"
			git clone -q --single-branch ${OMM_REPOSITORY_URL} ${OMM_PATCH_DIRNAME}
			if ! [ -d $OMM_PATCH_DIRNAME ]; then
				raise_error "Cannot clone the git repository: ${OMM_REPOSITORY_URL}"
			fi
		else
			echo "--- Using local OMM patch..."
			if ! [ -d ${OMM_PATCH_DIRNAME} ]; then
				raise_error "No OMM patch available."
			fi
		fi
		freshclone=0
		if ! [ -d repos/${ABBR} ]; then
			if ! [ -d repos ]; then
				mkdir repos
			fi
			echo "--- Cloning ${NAME} repository..."
			git clone --single-branch ${REPO} repos/${ABBR}
			if ! [ -d repos/${ABBR} ]; then
				raise_error "Cannot clone the git repository: ${ABBR}"
			fi
			freshclone=1
		fi
		cd repos/${ABBR}
		if [ $freshclone == 0 ]; then
			echo "--- Resetting ${NAME}..."
			git config pull.rebase true
			git reset -q --hard
			git clean -q -fdx
			git pull -q
			git reset -q --hard ${COMMIT}
		fi
		git reset -q --hard ${COMMIT}
		echo "--- Eliminating bad files..."
		echo >>filelist "$(ls -1)"
		i=0
		while :; do
			((i++))
			if [ $i -gt $(sed -n '$=' filelist) ]; then
				break
			fi
			cline=$(sed $i'!d' filelist)
			if [[ "$cline" == *".png.png"* ]]; then
				rm $cline
			fi
		done
		rm filelist
		DYNOSARG=
		if [ $lrc == 2 ]; then
			DYNOSARG=" dynos "
			echo "--- Applying DynOS patch..."
			wget --no-check-certificate --no-cache --no-cookies ${DYNOS_PATCH_URL} -O dynos.patch -q
			git apply --reject --whitespace=nowarn "dynos.patch"
			rm dynos.patch
		fi
		if [ $enabled -gt 0 ]; then
			echo "--- Applying patches..."
			i=0
			j="${#OMM_PATCHES_ENABLED[@]}"
			while :; do
				((i++))
				if [ $i -gt $j ]; then
					break
				fi
				item="${OMM_PATCHES_ENABLED[$(expr $i - 1)]}"
				patch="${OMM_PATCHES_LIST[$(expr $i - 1)]}"
				if [ $item == 1 ]; then
					git apply --reject --whitespace=nowarn ../../custom/${patch}
				fi
			done
		fi
		echo "--- Applying OMM patch..."
		cp -rf ../../${OMM_PATCH_DIRNAME}/. .
		if ! [ -f Makefile ]; then
			raise_error "Missing Makefile."
		fi
		echo "python3 omm_patcher.py -p ${ABBR}"
		python3 omm_patcher.py -p ${ABBR}
		echo "--- Building game..."
		cp -f ../../baserom.us.z64 baserom.us.z64
		echo "make${OMM_MAKE_SPEEDS[$(expr $lra - 1)]} OMM_BUILDER=1 VERSION=us ${OMM_MAKE_RAPI[$(expr $lrb - 1)]}"
		make${OMM_MAKE_SPEEDS[$(expr $lra - 1)]} OMM_BUILDER=1 VERSION=us ${OMM_MAKE_RAPI[$(expr $lrb - 1)]} | tee ../../${ABBR}.logs.txt
		chmod 755 -f -R ./build/us_pc/res
		chmod 755 -f -R ./build/us_pc/dynos
		cd build/us_pc
		run_game
	elif [ "$screenid" == "patch" ]; then
		selected=1
		while :; do
			i=0
			buffer=
			while :; do
				((i++))
				if [ $i -gt $patchcount ]; then
					break
				fi
				if ! [ $i == 1 ]; then
					buffer+="\n"
				fi
				if [ ${OMM_PATCHES_ENABLED[$(expr $i - 1)]} == 0 ]; then
					if [ $selected == $i ]; then
						buffer+="${parrs[$(expr $i - 1)]}"
					else
						buffer+="${parrus[$(expr $i - 1)]}"
					fi
				else
					if [ $selected == $i ]; then
						buffer+="${parrtes[$(expr $i - 1)]}"
					else
						buffer+="${parrteus[$(expr $i - 1)]}"
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
			read -sn 1 MENU_INPUT
			getinput $MENU_INPUT
			if ! [ $screenid == patch ]; then
				break
			fi
		done
	elif [ "$screenid" == "clear" ]; then
		clear
		echo "--- Clearing ${NAME} build directory..."
		rm -rf repos/${ABBR}/build
		echo "Done."
		echo -e "\e[?25h\033[A"
		stty echo
		exit
	elif [ "$screenid" == "reset" ]; then
		echo "--- Resetting ${NAME}..."
		git config pull.rebase true
		git reset -q --hard
		git clean -q -fdx
		git pull -q
		git reset -q --hard ${COMMIT}
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
