# dhall-npm-package

`dhall-npm-package` contains [Dhall][dhall-lang] bindings to [npm package.json][npm-package-json]
so you can generate npm configuration from Dhall expressions.

## Example

```dhall
-- ./examples/demo.dhall
let NpmPackage = ../package.dhall

let template =
      { scripts = Some (toMap { build = "bsb -make-world", test = "jest" })
      , keywords = Some [ "ReasonReact" ]
      , license = Some "Apache-2.0"
      , files = Some [ "src/*.re", "bsconfig.json" ]
      , devDependencies = Some (toMap { bs-platform = "^8.2.0" })
      }

in  NpmPackage::(template with name = "my-package" with version = "0.0.1")

```

```json
# dhall-to-json --file examples/demo.dhall
{
  "devDependencies": {
    "bs-platform": "^8.2.0"
  },
  "files": [
    "src/*.re",
    "bsconfig.json"
  ],
  "keywords": [
    "ReasonReact"
  ],
  "license": "Apache-2.0",
  "name": "my-package",
  "scripts": {
    "build": "bsb -make-world",
    "test": "jest"
  },
  "version": "0.0.1"
}

```

[dhall-lang]: https://dhall-lang.org
[npm-package-json]: https://docs.npmjs.com/files/package.json
