# iac
personal iac setup

## todo

- [x] Move all tasks to mise
- [ ] Move all secrets to github secrets
- [ ] Set up github actions to apply tofu setup
- [ ] Set up dev environment using mise
- [ ] Set up git pre-commit hook using mise (like python-template)
- [ ] Create separate base bootc server image (remove homelab stuff)
- [ ] Create homelab, nts, dns server images based on bootc base image

## docker runner image candidates

docker.io/jdxcode/mise

## Set up development environment

```bash
mise set MISE_ENV=dev --file mise.local.toml
mise install
```

## mise-tasks
This project uses mise-en-place.

To quickly install mise on your system, run bin/mise
Various tasks are already configured and accessible as seen below.

If you do not have mise installed, use task shims at bin/.

After editing/changing mise tasks, run the following commands:

```bash
mise generate task-docs --inject --output README.md
mise generate task-stubs
```

<!-- mise-tasks -->
<!-- /mise-tasks -->
