# Bash Profile - just loads bashrc

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

eval $(/usr/libexec/path_helper -s)

export PATH="$HOME/.cargo/bin:$PATH"
