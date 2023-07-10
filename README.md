# TI-OfflineEcash

This repository contains implementations of the Compact and Divisible E-cash with Threshold Issuance introduced in paper 'Compact and Divisible E-Cash with Threshold Issuance' by A.Rial and A.M.Piotrowska accepted to PETs 2023.

- Compact Ecash with threshold issuance can be found in `code/compact/src`,
- Divisible Ecash with threshold issuance can be found in `code/divisible/src`.

The directory `bls12_381` contains a copy of the [`bls12_381`](https://crates.io/crates/bls12_381) implementation with a set of changes required to implement our offline ecash.

## Cloning the repository
In order to use this repository, you should first clone it. To do so, follow the instructions in [here][https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository].  

## Running the docker
To be able able to run the dockerized code, you should have `docker`  and `docker-compose` installed. You can follow [this procedure](https://docs.docker.com/desktop/install/linux-install/) to install `docker desktop` which contains `docker` and `docker-compose` and a GUI to manage docker. Once installed, you can run the docker.

To run the docker, go to the `TI-OfflineEcash` directory of the clones repo and
execute the following command:
```
docker-compose up -d --build
```

The docker will automatically run the following commands:
```
cargo test
cargo build
cargo bench
```
Please give the docker some time to run the benchmarks as those can take time.
Please ignore any warnings - these are standard Rust warning.

The first command `cargo test` runs the tests for the implmenetation. The second one `cargo build` runs the build in the `release` mode, while the command `cargo bench` runs the benchmarks. Those benchmarks provide the performance evaluation of the proposed TI divisible and compact e-cash protocols (see Table 2 in the paper).

We note, that the benchmarks results depends on the underlying architecture of machine on which you run the benchmarks. For the detailed spec of the machine used in the paper, see `Section 6.2`, paragraph `implmenetation` of the paper.

An example of the docker run output:
