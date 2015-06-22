# Code Climate Formulae

## Usage

Ensure docker is running or if you are using Boot2Docker, run:

```console
boot2docker up
eval "$(boot2docker shellinit)"
```

This will set environment variables for your current session. To ensure these are loaded automatically in the future, these variables should be set in your `.bash_profile` or `.zsh_profile`. If these variables have already been added to your profile, you will be told `Your environment variables are already set correctly.`

Once you have those in your shell profile, run:

```console
brew tap codeclimate/formulae
brew install codeclimate  # for example
```
