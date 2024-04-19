# CyberPanel CLI PHP Version Changer

CyberPanel CLI PHP Version Changer is a Bash script that simplifies the process of changing the default PHP version for the command line in your CyberPanel environment. This script provides an interactive menu to easily change the PHP version on Ubuntu and Centos 7 Operating systems, including those managed with Composer.

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)

## Features

- Interactive menu for selecting the desired PHP version.
- Removes the existing PHP binary symlink and replaces it with the selected version's symlink.
- Simplifies the process of changing the default CLI PHP version in CyberPanel.

## Requirements

- A server running [CyberPanel](https://cyberpanel.net/).
- Access to a Bash shell.
- Root or superuser privileges.

## Usage

```
sh <(curl https://raw.githubusercontent.com/kalprajsolutions/CyberPanel-CLI-PHP-Version-Changer/main/change_php_version.sh || wget -O - https://raw.githubusercontent.com/kalprajsolutions/CyberPanel-CLI-PHP-Version-Changer/main/change_php_version.sh)
```

## Installation
No installation is required for this script. Simply clone the repository and follow the usage instructions above.

## Contributing
Contributions are welcome! If you have suggestions, improvements, or bug fixes, please open an issue or create a pull request.

## License
This project is licensed under the MIT License.

Note: This script is provided as-is and without any warranty. Use it at your own risk.

Keywords: change php version, change php version ubuntu, composer change php version, composer php version change, change cyberpanel php version
