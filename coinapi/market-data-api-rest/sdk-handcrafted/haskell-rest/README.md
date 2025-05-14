# Haskell CoinApi REST API Library

## Installation

```bash
cd haskell-rest/
cabal install
```

There are two interfaces in the library:
* One being in `CoinApi`, in which the functions take the api key as an argument.
* The other from `CoinApi.Monadic`, in which the api key is stored within a State monad.

## Examples

```bash
cd haskell-rest/
cabal run examples
```
