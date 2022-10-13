# homebrew-pyrsia
Homebrew formula for the Pyrsia on macOS

## Quick Installation
Pyrsia can now easily be setup on a local macOS machine by using Homebrew package manager while tapping our Pyrsia Taps (Third-Party Repositories).

### Install
#### From the CLI
```
brew tap pyrsia/pyrsia
brew install pyrsia
```
Now Homebrew can track, update, and install Pyrsia installer for macOS

### Run Pyrsia Node
```
export RUST_LOG=info
pyrsia_node -H 0.0.0.0
```
This will start your local Pyrsia node with `info` logs. (you can also skip `export RUST_LOG=info` if you don't want logs. You can also set this to `export RUST_LOG=debug` to see even more logs)

### Verify everything is running smoothly

#### Check installed Version
```
$ pyrsia --version
pyrsia 0.2.0
```
#### Ping test
```
$ pyrsia ping
Connection Successful !!
```