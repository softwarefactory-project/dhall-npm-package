-- TODO: improve license, author
--| package.json [documentation](https://docs.npmjs.com/files/package.json)
{ name : Text
, version : Text
, scripts : Optional (List ./Script.dhall)
, description : Optional Text
, keywords : Optional (List Text)
, homepage : Optional Text
, bugs : Optional ./Bugs/Type.dhall
, license : Optional Text
, author : Optional Text
, contributors : Optional (List ./Person/Type.dhall)
, files : Optional (List Text)
, main : Optional Text
, repository : Optional ./Repository/Type.dhall
, private : Optional Bool
, dependencies : Optional (List ./Dependency.dhall)
, devDependencies : Optional (List ./Dependency.dhall)
, peerDependencies : Optional (List ./Dependency.dhall)
, bundledDependencies : Optional (List Text)
, os : Optional (List Text)
, cpu : Optional (List Text)
}
