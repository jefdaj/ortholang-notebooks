let
  sources = import ./nix/sources.nix {};
  jupyter = import sources.jupyterWith {};

  iPython = jupyter.kernels.iPythonWith {
    name = "python";
    packages = p: with p; [ numpy ];
  };

  jupyterEnvironment = jupyter.jupyterlabWith {
    kernels = [ iPython ];
  };

in
  jupyterEnvironment.env
