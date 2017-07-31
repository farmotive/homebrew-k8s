# Homebrew farmotive k8s
This tap contains formulas for farmotive k8s utilities.

## Install
Use the [Homebrew](https://brew.sh/) package manager with one of the options below (in order of preference):
- Managed by [Brewfile](https://github.com/Homebrew/homebrew-bundle):
  ```sh
  tap 'homebrew/bundle'
  tap 'farmotive/k8s'
  brew '<formula>'
  ```
- Unmanaged CLI:
  ```sh
  brew tap farmotive/k8s && brew install <formula>
  ```
- If a formula conflicts with one from Homebrew/homebrew or another tap, you can specify the full formula namespace:
  ```sh
  brew install farmotive/k8s/<formula>
  ```
- Or full formula URL:
  ```sh
  brew install https://raw.githubusercontent.com/farmotive/homebrew-k8s/master/Forumla/<formula>.rb
  ```

## Acceptable Formulas
This tap should contain only formulas that make k8s faster and easier. See Homebrew’s [Acceptable Formulae](https://github.com/Homebrew/brew/blob/master/docs/Acceptable-Formulae.md) doc for general criteria.

## Troubleshooting
- Run `brew update` (twice)
- Run and read `brew doctor`
- Read [the Troubleshooting Checklist](http://docs.brew.sh/Troubleshooting.html)
- Open an issue on [this repository](https://github.com/farmotive/homebrew-k8s)

See [Contributing to Homebrew](https://github.com/Homebrew/homebrew-core/blob/master/CONTRIBUTING.md).

## Further information
- `brew help`
- `man brew`
- [Homebrew documentation](https://github.com/Homebrew/brew/tree/master/docs#readme)
- [Taps (third-party repositories)](https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md)
