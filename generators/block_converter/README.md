# block-converter

This program is based on the Pixigeko's work: https://github.com/pixigeko/minecraft-datas

## Usage

Edit the configuration file `config.yml` and indicate the parent version, the type of the version and the specific version from wich you want to extract the data.

The script will search in the PixiGeko's repository such as `Minecraft-generated-data/parent/version_type/version/...`

⚠️ The script will clone the Pixigeko repository. If you run it for the first time, it can take some time.

Also, you should run the command `git config --system core.longpaths true` with administrator permissions in order to allow git to clone the repo correctly.