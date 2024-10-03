(define-module (packages python-pyogrio)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (guix build-system pyproject)
  #:use-module (guix build-system python)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages check)
  #:use-module (gnu packages geo))

(define-public python-pyogrio
  (package
    (name "python-pyogrio")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pyogrio" version))
       (sha256
        (base32 "038c1p9qjz7n2z42hbr15b913jx58wip4x21y89lchy6279bgbrk"))))
    (build-system pyproject-build-system)
    (arguments (list #:tests? #f))
    (propagated-inputs (list python-certifi python-numpy python-packaging))
    (native-inputs (list python-cython python-pytest python-pytest-cov python-versioneer gdal))
    (home-page "https://github.com/geopandas/pyogrio")
    (synopsis "Vectorized spatial vector file format I/O using GDAL/OGR")
    (description "Vectorized spatial vector file format I/O using GDAL/OGR")
    (license license:expat)))