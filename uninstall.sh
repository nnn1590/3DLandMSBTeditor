#!/bin/bash -ue
cd -P "$(dirname $0)"

function main() {
	for _SIZE in 16 32 48; do
		xdg-icon-resource uninstall msbteditor --size ${_SIZE}
	done
	rm /usr/bin/MsbtEditor
	rm /usr/share/applications/3DLandMSBTeditor.desktop
}

main
