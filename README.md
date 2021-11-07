ortholang-notebooks
===================

An example of how to post reproducible Jupyter notebooks containing OrthoLang code.

Explore the [tutorial](./tutorial/) and [examples](./examples/) on Github,
or run them yourself like this:

~~~{ .bash }
# install the Nix package manager (Mac or Linux)
curl -L https://nixos.org/nix/install | sh

# download this repository
git clone https://github.com/jefdaj/ortholang-notebooks

# build and launch a local Jupyter server
cd ortholang-notebooks
nix-shell --command "jupyter lab"
~~~
