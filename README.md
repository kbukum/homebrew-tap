# homebrew-tap

Homebrew tap for [kbukum](https://github.com/kbukum) tools. Formulae here are thin,
verifiable projections of already-published, signed GitHub Releases — each formula's
archive URL points at an immutable release tag and every `sha256` comes from that
release's `SHA256SUMS`. Formulae are updated automatically by CI on every release;
this repository is not edited by hand.

## Install

```bash
brew tap kbukum/tap
brew install toven
```

One-shot equivalent:

```bash
brew install kbukum/tap/toven
```

Upgrade with `brew upgrade toven`.

## Available formulae

- `toven` — argv-first development and CI task planner for multi-module repositories
  ([kbukum/toven](https://github.com/kbukum/toven)).
