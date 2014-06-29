USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=Wallpaper
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=com.grahamgilbert
PAYLOAD=\
	pack-wallpaper

l_Library_Management: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Management
	@sudo chown root:wheel ${WORK_D}/Library/Management
	@sudo chmod 755 ${WORK_D}/Library/Management

l_Library_Management_Wallpaper: l_Library_Management
	@sudo mkdir -p ${WORK_D}/Library/Management/Wallpaper
	@sudo chown root:wheel ${WORK_D}/Library/Management/Wallpaper
	@sudo chmod 755 ${WORK_D}/Library/Management/Wallpaper

pack-wallpaper: l_Library_Management_Wallpaper
	@sudo ${CP} Wallpaper.jpg ${WORK_D}/Library/Management/Wallpaper/Wallpaper.jpg
	@sudo chown root:wheel ${WORK_D}/Library/Management/Wallpaper/Wallpaper.jpg
	@sudo chmod 644 ${WORK_D}/Library/Management/Wallpaper/Wallpaper.jpg
