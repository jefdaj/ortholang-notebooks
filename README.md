ortholang-notebooks
===================

An example of how to publish reproducible [OrthoLang][ortholang] notebooks
using [Jupyter][jupyter] and [Nix][nix].

Explore the tutorial notebooks above on Github, or run them yourself like this:

~~~{ .bash }
# install the Nix package manager (Mac or Linux)
curl -L https://nixos.org/nix/install | sh

# download this code
git clone https://github.com/jefdaj/ortholang-notebooks

# build and launch a local Jupyter server
cd ortholang-notebooks
nix-shell --command "jupyter lab"
~~~

To write and publish your own notebooks, you should only need to copy and paste
these files into your own repository:

~~~
shell.nix
nix
├── sources.json
└── sources.nix
~~~

You can run `niv update` to update the Nix code, and if something breaks just
checkout the previous `nix/sources.json` to undo the update.

Happy sciencing!

[jupyter]: https://jupyter.org/
[nix]: https://nixos.org/nix
[ortholang]: https://ortholang.pmb.berkeley.edu
