ortholang-notebooks
===================

An example of how to publish reproducible [OrthoLang][ortholang] notebooks
using [Jupyter][jupyter] and [Nix][nix].

Explore the tutorial notebooks above on Github, or run them yourself like this:

~~~{ .bash }
# install the Nix package manager (Mac or Linux)
curl -L https://nixos.org/nix/install | sh

# download this repository
git clone https://github.com/jefdaj/ortholang-notebooks

# build and launch a local Jupyter server
cd ortholang-notebooks
nix-shell --command "jupyter lab"
~~~

[jupyter]: https://jupyter.org/
[nix]: https://nixos.org/nix
[ortholang]: https://ortholang.pmb.berkeley.edu
