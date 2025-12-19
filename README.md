This repo is just a sandpit for learning UniversalBlue and Bluebuild 
The "flagship" here is Aethera, a Niri + DankMaterialShell immutable "distro" built on Universal Blue, designed purely around my ideal workflow and theming tastes.
I also have one called BlueMango which is the same Universal Blue build but with the Mango Wayland Compositor (MangoWC) to learn more about its features.
I also made one for Sway as it was extremly straight forward. No name for it yet.

Currently bluebuild ISOs fail during install so currently it requires being rebased 

If you are on a Fedora Atomic distro (Silverblue, Kinoite, Onyx, etc): <br>
Aethera: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/aethera:latest <br>
BlueMango: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/bluemango:latest <br>
Unnamed Sway Build: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/bluesway:latest

Once you are on an a universal blue image, weather unsigned from above or Aurora, Bluefin or Bazzite: <br>
Aethera: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/aethera:latest <br>
BlueMango: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/bluemango:latest <br>
Unnamed Sway Build: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/bluesway:latest 
