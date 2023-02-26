# TI-OfflineEcash
Implementation of Compact and Divisible E-cash with Threshold Issuance: 
- Compact Ecash with threshold issuance can be found in `code/compact/src`,
- Divisible Ecash with threshold issuance can be found in `code/divisible/src`.

The directory `extended_bls12_381` contains a copy of the [`bls12_381`](https://crates.io/crates/bls12_381) implementation with a set of changes required to implement our offline ecash. 

## Benchmarking Compact TI-Offline Ecash

```
  cd code
  cd compact 
  cargo test 
  cargo bench
```

## Benchmarking Divisible TI-Offline Ecash
```
  cd code
  cd divisible
  cargo test
  cargo bench
```
