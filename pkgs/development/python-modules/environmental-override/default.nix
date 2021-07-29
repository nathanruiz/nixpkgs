{ lib
, buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {
  pname = "environmental-override";
  version = "0.1.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1vhd37i6f8xh6kd61yxc2ynzgcln7v2p7fyzjmhbkdnws6gwfs6s";
  };

  meta = {
    description = "Easily configure apps using simple environmental overrides";
    homepage = "https://github.com/coddingtonbear/environmental-override";
    license = lib.licenses.mit;
  };
}
