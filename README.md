# TI-OfflineEcash

This repository contains implementations of the Compact and Divisible E-cash with Threshold Issuance introduced in paper 'Compact and Divisible E-Cash with Threshold Issuance' by A.Rial and A.M.Piotrowska accepted to PETs 2023.

- Compact Ecash with threshold issuance can be found in `code/compact/src`,
- Divisible Ecash with threshold issuance can be found in `code/divisible/src`.

The directory `bls12_381` contains a copy of the [`bls12_381`](https://crates.io/crates/bls12_381) implementation with a set of changes required to implement our offline ecash.

## Running the docker
To be able able to run it, you should have docker  and docker-compose installed. You can follow [this procedure](https://docs.docker.com/desktop/install/linux-install/) to install docker desktop which contains docker and docker-compose and a GUI to manage docker.

The docker will run the following commands:
```
cargo test
cargo build
cargo bench
```
Please give the docker some time to run the benchmarks as those can take time.
Please ingnore any warnings - these are standard Rust warning.

To run the docker, execute the following in the `TI-OfflineEcash` directory:
```
docker-compose up -d --build
```
