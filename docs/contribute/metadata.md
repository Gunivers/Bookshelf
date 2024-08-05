# 🔖 Metadata

To facilitate the work of bots such as the Bookshelf Manager, each feature, module, and data pack should include some metadata.
Contributors need to manually specify some of these, which are then used to produce more complete metadata files that bots can consume.

To generate the full metadata, contributors need to execute the metadata generators in the  `scripts/all.ipynb` notebook (requires Python, see the `scripts/pyproject.toml` file).
All metadata are verified by the CI/CD pipeline (see the [contribution validation page](project:../contribute/contribution-validation.md)).

---

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
| authors | The list of authors of the feature. Cannot be empty. | yes |
| contributors | The list of contributors to the feature. A contributor is someone who helps to create the function without developing it (the one who gives a track to realize the function or the one who fixes a bug for example). Cannot be empty. | no |
| created | Date and minecraft version in which the system was originally created (for history purpose) | yes |
| updated | Date and minecraft version in which the system was modified for the last time | yes |

The generated metadata are placed in `<module>/data/.metadata/generated/features.json`.

---

## 🧩 Module metadata

The module metadata are specified in `<module>/data/.metadata/module.json` (see [tree structure page](project:../contribute/tree-structure.md)).
Here is the format:

```json
{
  "name": "<NAME>",
  "display_name": "<DISPLAY NAME>",
  "description": "<DESCRIPTION>",
  "documentation": "<DOCUMENTATION>",
  "icon": "<ICON NAME>",
  "authors": [
    "<AUTHOR1>"
  ],
  "contributors": [
    "<CONTRIBUTOR1>"
  ],
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
| authors | The list of authors of the module. Cannot be empty. The authors are automatically computed from the features, this field allows defining authors that are not indicated inside the features. | no |
| contributors | The list of contributors to the feature. A contributor is someone who helps to create the function without developing it (the one who gives a track to realize the function or the one who fixes a bug for example). The contributors are automatically computed from the features, this field allows defining contributors that are not indicated inside the features. | no |
| weak dependencies | List of the feature weak dependencies. A weak dependency is a dependency module that is not essential to the functioning of the feature. For instance, `bs.log`. | no |

The generated metadata are placed in `<module>/data/.metadata/generated/module.json`.

---

## 📦 Datapack metadata

The datapack metadata are the `pack.mcmeta` file:

```json
{
  "pack": {
    "pack_format": 41,
    "description": "Bookshelf - Library designed for mapmakers"
  }
}

```

| Field | Description | Mandatory |
|-------|-------------|---------- |
| pack_format | See the [Minecraft wiki](https://minecraft.wiki/w/Pack_format). | yes |
| description | A description for the datapack. | yes |

---

## 📜 Manifest

The manifest is the file containing the metadata of all datapacks, modules, and features of Bookshelf.
This manifest is automatically generated and it is located at `generated/manifest.json`.
