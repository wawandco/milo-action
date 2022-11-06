# Milo Action
This action runs Milo to find HTML issues and other details in the code.

## Usage
To use this action you should add the `wawandco/milo-action` Actin to your existing workflow. The configuration looks something like this:

```yaml
name: "CI"
on: ["push", "pull_request"]

jobs:
  ci:
    name: "Run CI"
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: wawandco/milo-action@v0.1.0
```

This will use the latest version of Milo and analyze the root folder of your source. One important thing is to do the checkout of the repo before adding the milo action.

## Options

### `version`
Allows to specify the version of Milo that will be used to analyze your HTML code. Defaults to `latest`.

### `folder`
Allows to specify the folder that will be analyzed by Milo. Defaults to `.`.


