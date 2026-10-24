# Install the scripts to ~/.local/bin

install:
	mkdir -p ~/.local/bin
	mkdir -p ~/.config/mpv/scripts
	cp ./compress_10mb.sh ~/.local/bin/compress_10mb
	cp ./gifmaker.sh ~/.local/bin/gifmaker
	cp ./audacity_multitake.py ~/.local/bin/multitake
	cp mpv-lossless-cut/mpv-lossless-cut.* ~/.config/mpv/scripts
	chmod +x ~/.local/bin/compress_10mb
	chmod +x ~/.local/bin/gifmaker
	chmod +x ~/.local/bin/multitake

uninstall:
	rm ~/.local/bin/compress_10mb ~/.local/bin/gifmaker ~/.local/bin/multitake
	rm ~/.config/mpv/scripts/mpv-lossless-cut.*
