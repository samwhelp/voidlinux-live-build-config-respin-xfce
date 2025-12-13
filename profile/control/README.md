

# Build Control




## Subject

* [Usage](#usage)
* [Tips](#tips)




## Usage

### Build

run

``` sh
make build
```

or run

``` sh
./build.sh
```




## Tips

### Only Build Template

> There are two main steps

* generate build-template
* cd build-template and build iso

run to only generate build-template

``` sh
sudo env ONLY_BUILD_TEMPLATE=true ./steps.sh
```
