# Typescript Terraform Template

## Prerequisites

- [ASDF](https://asdf-vm.com/guide/getting-started.html) or install terraform and terragrunt manually
  - Version described in `.tool-versions` file

## Getting Started
#### 1. Install Terraform and Terragrunt

```bash
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add terraform https://github.com/asdf-community/asdf-hashicorp.git

asdf install
```

#### 2. run typescript code
```bash
npm install
npm run test
```

## Note
#### Update all packages to latest version
```bash
npx npm-check-updates
```
