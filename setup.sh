echo "Setting up OMM Builder.sh and its dependencies..."
pacman -Syu --noconfirm
pacman -Syu --noconfirm zip unzip p7zip make git mingw-w64-i686-gcc mingw-w64-x86_64-gcc mingw-w64-i686-glew mingw-w64-x86_64-glew mingw-w64-i686-SDL2 mingw-w64-i686-SDL mingw-w64-x86_64-SDL2 mingw-w64-x86_64-SDL python3
git config --global credential.helper store
git clone --single-branch https://github.com/PeachyPeachSM64/sm64ex-omm.git -b master sm64ex-omm.sh
cd sm64ex-omm.sh
git reset --hard HEAD
git clean -f -d
git pull