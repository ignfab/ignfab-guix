# My-guix

Collection of guix packages

Use this repo as a [channel](https://guix.gnu.org/manual/en/html_node/Channels.html) add the following lines in the `~/.config/guix/channels.scm` file :

``` scheme
(append (list (channel
                (name 'ignfab-guix-packages)
                (url "https://github.com/ignfab/ignfab-guix.git")
		(branch "main")))
        %default-channels)
```

## Packages avaliable

- GIS softwares:
  - [MicMac](https://github.com/micmacIGN/micmac.git) v1.1.1
  - [CloudCompare](https://github.com/CloudCompare/CloudCompare) v2.13.1
  - [entwine](https://github.com/connormanning/entwine) v3.0.0
  - [geoflow](https://github.com/geoflow3d/geoflow-bundle) v2024.03.08
  - [pdal](https://github.com/PDAL/PDAL) v2.6.1
  - [pdal-wrench](https://github.com/PDAL/wrench) v1.1
  - [tyler](https://github.com/3DGI/tyler) v0.3.10
  - [untwine](https://github.com/hobuinc/untwine) v1.10
  - [lg](https://github.com/MBunel/lg) v0.2.1
- Libs:
  - [laslib](https://github.com/LAStools/LAStools) v2.0.2
  - [laszip](https://github.com/LASzip/LASzip) v3.4.4
  - [libe57format](https://github.com/asmaloney/libE57Format) v3.1.1
  - [proj](https://proj.org/en/9.4/#) v9.4.0
  - [cgal](https://www.cgal.org/) v5.5.4
- Rust crates:
  - [proj-sys](https://crates.io/crates/proj-sys/) v0.23.2
  - [proj](https://crates.io/crates/proj) v0.27.0
  - [morton-encoding](https://crates.io/crates/morton-encoding) v2.0.1
  - [laz](https://crates.io/crates/laz) v0.9.1
  - [las](https://crates.io/crates/las) v0.8.8
  - [wkt](https://crates.io/crates/wkt) v0.10.3
  - [spade](https://crates.io/crates/spade) v2.8.0
  - [robust](https://crates.io/crates/robust) v1.1.0
  - [libm](https://crates.io/crates/libm) v0.2.8
  - [accurate](https://crates.io/crates/accurate) v0.3.1
  - [geographiclib-rs](https://crates.io/crates/geographiclib-rs) v0.2.4
  - [rstar](https://crates.io/crates/rstar) v0.10.0
  - [rstar](https://crates.io/crates/rstar) v0.12.0
  - [hash32](https://crates.io/crates/hash32) v0.3.1
  - [heapless](https://crates.io/crates/heapless) v0.8.0
  - [geo-types](https://crates.io/crates/geo-types) v0.7.13
  - [float\_next\_after](https://crates.io/crates/float_next_after) v1.0.0
  - [earcur](https://crates.io/crates/earcutr) v0.4.3
  - [geo](https://crates.io/crates/geo) v0.28.0
  - [uuid](https://crates.io/crates/uuid) v1.8.0
