# Installation

  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. Install [Homebrew](https://brew.sh/)
  3. [Install Ansible](http://docs.ansible.com/intro_installation.html) by Homebrew
  4. Clone this repository to your local drive.
  5. Run `make reqs` inside this directory to install required Ansible roles.
  6. Create a `.vault-password` with the vault password.
  7. Run one of the following command according. Enter your account password when prompted:
  
      * `make decrypt` to decrypt the vault.
      * `make encrypt` to encrypt the vault.
      * `make s` to configure *sombra* server.
      * `make w` to configure *winston* family Mac.
      * `make scomp` launch docker compose on *sombra* server.
      * `make su` to update the packages on *sombra* server.
      * `make wu` to update homebrew packages on *winston* family Mac

> Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run `brew doctor` to see if this is the case.
