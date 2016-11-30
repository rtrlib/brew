# homebrew-pils
Homebrew tap with formulas for RTRlib

## Usage
To install the RTRlib on macOS using Homebrew proceed as follows:

1. Install [Homebrew](http://brew.sh/), if you haven't already:

    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

2. Add this tap to Homebrew and install RTRlib:

    ```
    brew tap rtrlib/pils
    brew install rtrlib
    ```
3. Test RTRlib installation, with brew and RTRlib tools:

    ```
    brew test rtrlib
    cli-validator
    rtrclient
    ```
