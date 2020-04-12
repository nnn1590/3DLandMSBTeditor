#!/bin/bash -ue
cd -P "$(dirname $0)"

function main() {
	msbuild /t:build /p:Configuration=Release /p:OutputPath=.build-install/bin/ /p:BaseIntermediateOutputPath=.build-install/obj/
	chmod +x .build-install/bin/MsbtEditor.exe
	for _SIZE in 16 32 48; do
		xdg-icon-resource install --novendor --size ${_SIZE} images/msbteditor_${_SIZE}.png msbteditor
	done
	cp 3DLandMSBTeditor.desktop /usr/share/applications
	cp .build-install/bin/MsbtEditor.exe /usr/bin/MsbtEditor
	rm -r .build-install/
}

main
