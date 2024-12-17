(define-module (packages val3dity)
  #:use-module (guix)
  #:use-module (guix build-system cmake)
  #:use-module (guix git-download)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages cpp)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages graphics)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages pkg-config))

;; Define a CGAL package variant (only v5.6.1 is packaged)
(define-public cgal-601
  (package
    (inherit cgal)
    (version "6.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/CGAL/cgal/releases/download/v"
                           version "/CGAL-" version ".tar.xz"))
       (sha256
        (base32 "0zwvyp096p0vx01jks9yf74nx6zjh0vjbwr6sl6n6mn52zrzpk8a"))))))

;; Denine val3dity package
(define-public val3dity
  (package
    (name "val3dity")
    (version "2.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "https://github.com/tudelft3d/val3dity/archive/refs/tags/" version ".tar.gz"))
        (sha256 (base32 "1nijfm9d0d4x5b80l5whpl5q87f9bjjfljyx9miiqb4i9318z5i7"))))
    (inputs (list boost
                  eigen
                  cgal-601
                  gmp
                  mpfr
                  geos))
    (native-inputs (list pkg-config))
    (build-system cmake-build-system)
    (arguments (list
                     #:tests? #f
                     #:build-type "Release"))
    (home-page "http://geovalidation.bk.tudelft.nl/val3dity/")
    (synopsis " Validation of 3D primitives according to the international standard ISO19107 ")
    (description " Validation of 3D primitives according to the international standard ISO19107 ")
    (license license:gpl3+)))
