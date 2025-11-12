with import <nixpkgs> {};
mkShell {
  buildInputs = [
    python3
    python3Packages.twisted
    # Add any other Python packages you need
    # python3Packages.requests
  ];

  # Optional: make pip available and ensure it installs to the right place
  shellHook = ''
    export PYTHONUSERBASE=$PWD/.local
    export PATH=$PYTHONUSERBASE/bin:$PATH
    export PYTHONPATH=$PYTHONUSERBASE/lib/python3.*/site-packages:$PYTHONPATH
  '';
}
