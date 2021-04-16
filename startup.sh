#!/bin/bash

#function to remove the .vim directory
clean(){
	echo "Removing all the dot files and startup files"

	#Remove the vim plug file
	if [ -f "$HOME/.vim/autoload/plug.vim" ];then
	echo "Deleting .vim directory"
	rm -rf ~/.vim
	fi
}

#Download vimplug required to install thirdparty plugins
vim_plug(){

if [ ! -f "$HOME/.vim/autoload/plug.vim" ];then
	echo "plug.vim file does not exists in ~/.vim/autoload/"
	echo "Fetching the file..."
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo "plug.vim file already exists in ~/.vim/autoload"
fi

}

#Main function
if [[ $1 == '-c' ]];then
	clean
else
	vim_plug
fi


