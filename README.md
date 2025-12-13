# dms-ublue

An attempt to make a Universal Blue based desktop based on the DankMaterialShell.
Niri, Sway & MangoWC is pretty much ready to use, only real updates will be dotfiles. 
Hyprland there are some dependancy issues so that is on hold. Also looking at Noctalia Shell.

Currently bluebuild ISOs fail during install so currently it requires being rebased 

If you are on a Fedora Atomic distro (Silverblue, Kinoite, Onyx, etc)
Niri: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/bluecandle:latest
Mango: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/bluemango:latest
Sway: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/bluesway:latest

Once you are on an a universal blue image, weather unsigned from above or Aurora, Bluefin or Bazzite.
Niri: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/bluecandle
Mango: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/bluemango
Sway: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/bluesway
