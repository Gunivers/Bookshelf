# 🔖 Metadata

To support automation by tools like the Bookshelf Manager, modules must declare specific metadata. All metadata are verified during the CI/CD process (see the [contribution validation page](project:../contribute/contribution-validation.md)).

---

## ⭐ Feature Metadata

eature metadata are defined directly within each `.json` file, as shown below:

```{code-block} json
:force:
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
  ...
}
```

| Field | Description | Mandatory |
|-------|-------------|---------- |
| feature | Indicates whether the current function tag is the endpoint of a feature. | yes |
| documentation | A link to the feature's documentation. | yes |
| authors | A list of feature authors. Cannot be empty. | yes |
| contributors | A list of contributors (e.g., those who provided insights, fixes, or indirect help). | no |
| created | The creation date and Minecraft version for historical purposes. | yes |
| updated | The date and Minecraft version of the most recent update. | yes |

---

## 🧩 Module Metadata

Module metadata are defined in `modules/<module>/module.json`. Below is an example:

```{code-block} json
:force:
{
  ...
  "meta": {
    "id": "<ID>",
    "name": "<NAME>",
    "description": "<DESCRIPTION>",
    "documentation": "<DOCUMENTATION>",
    "image": "<IMAGE>",
    "tags": [
      "<TAG1>"
    ],
    "authors": [
      "<AUTHOR1>"
    ],
    "contributors": [
      "<CONTRIBUTOR1>"
    ],
    "dependencies": [
      "<MODULE1>"
    ],
    "weak_dependencies": [
      "<MODULE1>"
    ]
  }
}
```

| Field | Description | Mandatory |
|-------|-------------|---------- |
| id | The module ID, formatted as `bs.foo`. | yes |
| name | The module's display name (e.g. `Foo`). | yes |
| description | A description of the module's purpose. | yes |
| documentation | A link to the module's documentation. | yes |
| image | The module image name, stored in the same directory as the metadata file. | no (but trigger warnings) |
| tags | A list of tags for categorizing or identifying modules. | no (but trigger warnings) |
| authors | A list of module authors (supplements authors from features). Cannot be empty. | no |
| contributors | A list of contributors (supplements contributors from features). | no |
| dependencies | Essential modules required for this module to function (e.g., `bs.hitbox`). | no |
| weak dependencies | Optional modules that enhance functionality but are not essential (e.g., `bs.log`). | no |

---

## 📜 Manifest

The manifest consolidates metadata for all modules and features in Bookshelf. It is automatically generated and can be updated using the following command:
```sh
pdm run meta update
```
The generated file is located at `meta/manifest.json`.
