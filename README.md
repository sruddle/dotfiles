# dotfiles

x-platform dotfiles, chezmoi mgmt

## usage

Interact with using `task` and provided taskfiles. The following commands are supported:

1. `init`: Initialize dotfiles from source GitHub dotfiles repo (source -> local). Use when setting up a new machine.

2. `edit`: (currently not supported) Commit local dotfiles changes to source GitHub dotfiles repo (local -> source).

3. `update`: Sync local dotfiles with source GitHub dotfiles repo (source -> local).

4. `push`: Commit local dev changes to source GitHub dotfiles repo and `update` (dev -> source -> local).

### package registries

- [mise](https://mise.jdx.dev/registry.html)
- [aqua](https://raw.githubusercontent.com/aquaproj/aqua-registry/refs/heads/main/registry.yaml)
- [ubi]()

## terms

Three locations:

1. local dotfiles $\equiv$ `~`

2. source [GitHub dotfiles repo] $\equiv$ `https://github.com/$GITHUB_USERNAME/dotfiles.git`

3. local dev $\equiv$ `~/Developer/projects/dotfiles`

## troubleshooting

*template not rendering*

- Does file have extension .tmpl? This is required for the dotfile (optional for templates in `.chezmoitemplates`)