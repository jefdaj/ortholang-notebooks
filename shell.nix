# Example of a Jupyter server with OrthoLang 0.9.5
# Usage: nix-shell --command 'jupyter lab'

let
  sources = import ./nix/sources.nix {};

  jupyter = import sources.jupyterWith {};

  ortholang = jupyter.kernels.ortholangKernel {};

  # optional Python kernel. uncomment below to use it
  python = jupyter.kernels.iPythonWith {
    name = "shell.nix";
    packages = p: with p; [ numpy ];
  };

  # optional R kernel. uncomment below to use it
  r = jupyter.kernels.iRWith {
    name = "shell.nix";
    packages = p: with p; [ p.tidyverse ];
  };

  jupyterEnvironment = jupyter.jupyterlabWith {

    # edit the kernels line to include the kernels you want:
    # kernels = [ ortholang python r ortholang ];

    kernels = [ ortholang ];
  };

in
  jupyterEnvironment.env
