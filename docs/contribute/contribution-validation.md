# ✅ Contribution validation

A Bookshelf contribution often requires some additional modifications other than the code itself.
To ensure the different modifications are correctly contributed, we have set up different validation steps.

## ⚙️ Automatic validation

First, we have defined some scripts that are automatically executed when proposing a pull request (and after each commit inside the pull request).
These scripts verify:
- If the metadata of the features, modules, and datapacks are defined and up to date (see [metadata page](project:metadata.md)).
- If there is no regression in the code, by executing the different unit tests (see [debug page](project:debug.md#-unit-tests)).

A Bookshelf contributor can also manually and locally execute these checks using the `all.ipynb` notebook in the `scripts` folder (requires Python, see `scripts/pyproject.toml` file).

Some checks about the metadata can fail because the specified metadata are not up to date.
Indeed, some module/feature metadata such as the dependencies are computed, and the Bookshelf contributor needs to manually run the generators to enable their computation.
These generators are available in the `scripts/all.ipynb` notebook and are not executed by the CI/CD.

## 📄 Pull request template

When a Bookshelf contributor opens a pull request on the Bookshelf repository, the message of the pull request is filled with a checklist.
This checklist helps the Bookshelf contributor to ensure that they have not forgotten any changes we cannot automatically verify, such as the modification of the changelog file.
Here is a non-exhaustive list of what a feature contribution requires:
- Update the changelog with the content of the contribution and the ID of the pull request.
- Document the new features in the documentation and update the documentation for existing features (if needed).
- Provide some unit tests if possible.
- Link the pull request to an existing issue.

## 🔎 Manual review

Finally, other Bookshelf contributors manually review the pull request before approving it.

