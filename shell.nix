# Example of a Jupyter server with OrthoLang 0.9.5
# Usage: nix-shell --command 'jupyter lab'

let
  sources = import ./nix/sources.nix {};

  jupyter = import sources.jupyterWith {};

  ortholang = jupyter.kernels.ortholangKernel {};

  # optional Python kernel. uncomment below to use it
  python = jupyter.kernels.iPythonWith {
    name = "my-python-kernel";
    packages = p: with p; [ numpy ];
  };

  # optional R kernel. uncomment below to use it
  r = jupyter.kernels.iRWith {
    name = "my-R-kernel";
    packages = p: with p; [ p.tidyverse ];
  };

  jupyterEnvironment = jupyter.jupyterlabWith {

    # remove any kernels you don't want here for a faster build:
    kernels = [ ortholang python r ];

  };

in
  jupyterEnvironment.env
