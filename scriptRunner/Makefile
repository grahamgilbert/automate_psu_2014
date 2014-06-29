USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
TITLE=scriptRunnerPkg
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=com.grahamgilbert
PACKAGE_VERSION=1.1
PAYLOAD=\
	pack-scriptRunner \
	pack-Library-LaunchAgents-com.grahamgilbert.scriptrunner.plist \
	pack-once_touch \
	pack-every_touch

REPO_URL=https://github.com/natewalck/Scripts.git

pack-scriptRunner: l_usr_local_bin
	@sudo git clone ${REPO_URL} natewalck-scripts
	@sudo ${CP} natewalck-scripts/scriptRunner.py ${WORK_D}/usr/local/bin/scriptRunner.py
	@sudo chmod 755 ${WORK_D}/usr/local/bin/scriptRunner.py
	@sudo chown root:wheel ${WORK_D}/usr/local/bin/scriptRunner.py
	@sudo rm -rf natewalck-scripts

l_Library_Management: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Management
	@sudo chown root:wheel ${WORK_D}/Library/Management
	@sudo chmod 755 ${WORK_D}/Library/Management

l_Library_Management_bin: l_Library_Management
	@sudo mkdir -p ${WORK_D}/Library/Management/bin
	@sudo chown root:wheel ${WORK_D}/Library/Management/bin
	@sudo chmod 755 ${WORK_D}/Library/Management/bin

l_Library_Management_scriptRunner: l_Library_Management
	@sudo mkdir -p ${WORK_D}/Library/Management/scriptRunner
	@sudo chown root:wheel ${WORK_D}/Library/Management/scriptRunner
	@sudo chmod 755 ${WORK_D}/Library/Management/scriptRunner

l_Library_Management_scriptRunner_once: l_Library_Management_scriptRunner
	@sudo mkdir -p ${WORK_D}/Library/Management/scriptRunner/once
	@sudo chown root:wheel ${WORK_D}/Library/Management/scriptRunner/once
	@sudo chmod 755 ${WORK_D}/Library/Management/scriptRunner/once

l_Library_Management_scriptRunner_every: l_Library_Management_scriptRunner
	@sudo mkdir -p ${WORK_D}/Library/Management/scriptRunner/every
	@sudo chown root:wheel ${WORK_D}/Library/Management/scriptRunner/every
	@sudo chmod 755 ${WORK_D}/Library/Management/scriptRunner/every

pack-once_touch: l_Library_Management_scriptRunner_once
	@sudo touch ${WORK_D}/Library/Management/scriptRunner/once/.present

pack-every_touch: l_Library_Management_scriptRunner_every
	@sudo touch ${WORK_D}/Library/Management/scriptRunner/every/.present