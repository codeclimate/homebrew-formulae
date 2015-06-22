# Code Climate Formulae

[Homebrew][] formulae for our packages.

[homebrew]: http://brew.sh/

## Usage

```console
brew tap codeclimate/formulae
brew install <formula>
```

## Available Formulae

### Code Climate CLI

The Code Climate CLI requires docker. If you are using Boot2Docker, run:

```console
boot2docker up
eval "$(boot2docker shellinit)"
```

This will set environment variables for your current session. To ensure these
are loaded automatically in the future, these variables should be set in your
`.bash_profile` or `.zsh_profile`. If these variables have already been added to
your profile, you will be told `Your environment variables are already set
correctly.`

Once you have those in your shell profile, run:

```console
brew install codeclimate
```
