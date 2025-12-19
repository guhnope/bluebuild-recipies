This repo containes my Bluebuild recipes. 

Aethera is a Niri + DankMaterialShell immutable "distro" built on Universal Blue, designed purely around my ideal workflow and theming tastes. 
BlueMango swaps out Niri, replaces it with the Mango Wayland Compositor (MangoWC), I'm working on this one  to learn more about its features.
Rebasing works across both images but ISO generation on Aethera appears busted due to some UTF-8 non-compliance in either Niri or one it's dependancies. 

If you are on a Fedora Atomic distro (Silverblue, Kinoite, Onyx, etc): <br>
Aethera: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/aethera:latest <br>
BlueMango: rpm-ostree rebase ostree-unverified-registry:ghcr.io/guhnope/bluemango:latest <br>

Once you are on an a universal blue image, weather unsigned from above or Aurora, Bluefin or Bazzite: <br>
Aethera: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/aethera:latest <br>
BlueMango: rpm-ostree rebase ostree-image-signed:docker://ghcr.io/guhnope/bluemango:latest <br>
