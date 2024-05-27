---
html_theme.sidebar_secondary.remove: true
---

# 🔖 Metadata

To facilitate the work of bots such as the incoming Bookshelf Manager, each feature, module and data pack should declare some metadata.
The Bookshelf contributor should specify some of them manually.
These metadata are then used to produce more complete metadata files a bot can consume.
To generate the full metadata, the Bookshelf contributor must execute the metadata generators in `scripts/all.ipynb` notebook (requires Python, see `scripts/pyproject.toml` file).
All metadata are verified by the CI/CD pipeline (see [contribution validation page](project:../contribute/contribution-validation.md)).

## ⭐ Feature metadata

The feature metadata are directly placed on the function tag of the feature:

```json
{
  "__bookshelf__": {
    "feature": true,
    "documentation": "<DOCUMENTATION>",
    "authors": [
      "<AUTHOR1>"
    ],
    "contributors": [
      "<CONTRIBUTOR1>"
    ],
    "created": {
      "date": "<YYYY/MM/DD>",
      "minecraft_version": "<VERSION>"
    },
    "updated": {
      "date": "<YYYY/MM/DD>",
      "minecraft_version": "<VERSION>"
    }
  },
  "values": [
    ...
  ]
}
```

| Field | Description | Mandatory |
|-------|-------------|---------- |
| feature | Indicate if the current function tag is the end point of a feature or not. | yes |
| documentation | The link to the documentation of the feature. | yes |
| authors | The list of authors of the featyre. Cannot be empty. | yes |
| contributors | The list of contributors to the feature. A contributor is someone who helps to create the function without developing it (the one who gives a track to realize the function or the one who fixes a bug for example). Cannot be empty. | no |
| created | Date and minecraft version in which the system was originally created (for history purpose) | yes |
| updated | Date and minecraft version in which the system was modified for the last time | yes |

The generated metadata are placed in `<module>/data/.metadata/generated/features.json`.

## 🧩 Module metadata

The module metadata are specified in `<module>/data/.metadata/metadata.json` (see [tree structure page](project:../contribute/tree-structure.md)).
Here is the format:

```json
{
  "name": "<NAME>",
  "display_name": "<DISPLAY NAME>",
  "description": "<DESCRIPTION>",
  "documentation": "<DOCUMENTATION>",
  "icon": "<ICON NAME>",
  "weak_dependencies": [
    "<MODULE1>"
  ]
}
```

| Field | Description | Mandatory |
|-------|-------------|---------- |
| name | The name of the module. Format: `bs.foo`. | yes |
| display_name | The display name of the module. For instance: `Foo`. | yes |
| description | A description for the module. | yes |
| documentation | The link to the documentation of the module. | yes |
| icon | The name of the module icon image. Should be placed on the same folder than the `metadata` file. | no (but trigger warnings) |
| weak dependencies | List of the feature weak dependencies. A weak dependency is a dependency module that is not essential to the functioning of the feature. For instance, `bs.log`. | no |

The generated metadata are placed in `<module>/data/.metadata/generated/module.json`.

# 📦 Datapack metadata

The datapack metadata are directly placed in the `pack.mcmeta` file:

```json
{
  "__bookshelf__": {
    "display_name": "<DISPLAY NAME>"
  },
  "pack": {
    "pack_format": 41,
    "description": "Bookshelf - Library designed for mapmakers"
  }
}

```
| Field | Description | Mandatory |
|-------|-------------|---------- |
| display_name | The display name of the module. For instance: `Bookshelf`. | yes |
```
