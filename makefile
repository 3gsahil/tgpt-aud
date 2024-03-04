# Makefile for installing tgpt_piper_audio.sh script and its dependencies

# Variables
SCRIPT_NAME = tgpt-aud.sh


# Installation directory for the script
INSTALL_DIR = /usr/local/bin

# Install command for the script
install:
	@echo "Installing dependencies..."
	pip3 install tgpt
	@echo "Copying script to $(INSTALL_DIR)..."
	cp $(SCRIPT_NAME) $(INSTALL_DIR)/$(SCRIPT_NAME)
	chmod +x $(INSTALL_DIR)/$(SCRIPT_NAME)
	@echo "Creating symbolic link to $(INSTALL_DIR)/$(SCRIPT_NAME) as tgpt-aud..."
	ln -s $(INSTALL_DIR)/$(SCRIPT_NAME) $(INSTALL_DIR)/tgpt-aud
	@echo "Installation complete."

# Uninstall command for the script
uninstall:
	@echo "Removing script from $(INSTALL_DIR)..."
	rm -f $(INSTALL_DIR)/$(SCRIPT_NAME)
	@echo "Removing symbolic link tgpt-aud from $(INSTALL_DIR)..."
	rm -f $(INSTALL_DIR)/tgpt-aud
	@echo "Uninstallation complete."
