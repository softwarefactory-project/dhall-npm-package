let NpmPackage = ../package.dhall

let template =
      { scripts = Some (toMap { build = "bsb -make-world", test = "jest" })
      , keywords = Some [ "ReasonReact" ]
      , license = Some "Apache-2.0"
      , files = Some [ "src/*.re", "bsconfig.json" ]
      , devDependencies = Some (toMap { bs-platform = "^8.2.0" })
      }

in  NpmPackage::(template with name = "my-package" with version = "0.0.1")
