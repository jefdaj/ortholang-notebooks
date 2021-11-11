OrthoLang Notebooks
===================

An example of how to publish reproducible [OrthoLang][ortholang] notebooks
using [Nix][nix] and [jupyterWith][jupyterwith].

Explore the static notebooks above rendered by Github, or spin up live versions
on your computer. You should be able to exactly reproduce my Jupyter
environment like this:

~~~{ .bash }
# install the Nix package manager (Mac or Linux)
curl -L https://nixos.org/nix/install | sh

# optional: use my binary cache to skip compiling everything
nix-env -f '<nixpkgs>' -iA cachix
cachix use jefdaj

# download the ortholang-notebooks code and example-data
git clone https://github.com/jefdaj/ortholang-notebooks

# build and launch a local Jupyter server
cd ortholang-notebooks
nix-shell --command "jupyter lab"
~~~

To write and publish your own OrthoLang notebooks you should
only need to copy and paste these files into a new repository:

~~~
shell.nix
nix
├── sources.json
└── sources.nix
~~~

Alternatively, fork this one and edit/delete my notebooks.

Note: [shell.nix](./shell.nix) includes code for R and Python notebooks too,
but I have them commented out to speed up the default build.

Happy sciencing!

[jupyterwith]: https://github.com/tweag/jupyterWith
[nix]: https://nixos.org/nix
[ortholang]: https://ortholang.pmb.berkeley.edu
