# Code Climate Formulae

## Usage

Ensure docker is running or if you are using Boot2Docker, run:

```console
boot2docker up
boot2docker shellinit
```

This will provide you with environment variables which should be set in your `.bash_profile` or `.zsh_profile` if they are not set. Otherwise, you will be told `Your environment variables are already set correctly.`

Once you have those in your shell profile, run:

```console
brew tap codeclimate/formulae
brew install codeclimate  # for example
```
