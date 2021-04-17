OUT_ZIP=Arch.zip
LNCR_EXE=Arch.exe

DLR=aria2c
DLR_FLAGS=-x16 -s20
BASE_URL!=curl -s https://api.github.com/repos/yuk7/ArchWSL-FS/releases | jq -r '.[0].assets[] | select(.name | test("rootfs.tar.gz")) | .browser_download_url'
LNCR_ZIP_URL!=curl -s https://api.github.com/repos/yuk7/wsldl/releases | jq -r '.[0].assets[] | select(.name | test("icons.zip")) | .browser_download_url'
LNCR_ZIP_EXE=Arch.exe

all: $(OUT_ZIP)

zip: $(OUT_ZIP)
$(OUT_ZIP): ziproot
	@echo -e '\e[1;31mBuilding $(OUT_ZIP)\e[m'
	cd ziproot; bsdtar -a -cf ../$(OUT_ZIP) *

ziproot: Launcher.exe rootfs.tar.gz
	@echo -e '\e[1;31mBuilding ziproot...\e[m'
	mkdir ziproot
	cp Launcher.exe ziproot/${LNCR_EXE}
	cp rootfs.tar.gz ziproot/

exe: Launcher.exe
Launcher.exe: icons.zip
	@echo -e '\e[1;31mExtracting Launcher.exe...\e[m'
	bsdtar -xvf icons.zip $(LNCR_ZIP_EXE)
	mv $(LNCR_ZIP_EXE) Launcher.exe

icons.zip:
	@echo -e '\e[1;31mDownloading icons.zip...\e[m'
	$(DLR) $(DLR_FLAGS) $(LNCR_ZIP_URL) -o icons.zip

rootfs.tar.gz:
	@echo -e '\e[1;31mDownloading rootfs.tar.gz...\e[m'
	$(DLR) $(DLR_FLAGS) $(BASE_URL) -o rootfs.tar.gz

clean:
	@echo -e '\e[1;31mCleaning files...\e[m'
	-rm ${OUT_ZIP}
	-rm -r ziproot
	-rm Launcher.exe
	-rm icons.zip
	-rm rootfs.tar.gz
