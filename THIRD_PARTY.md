# Credits and external dependencies

This project combines personal configuration with existing open-source tools. The original contributions include desktop bindings, configuration choices, the Bitcoin prompt integration and the VPN helper. Theme and widget authorship belongs to the respective upstream authors.

## Included upstream-derived configuration

`.p10k.zsh` was generated from the Powerlevel10k rainbow configuration. Its upstream notice is retained in [LICENSES/Powerlevel10k.txt](LICENSES/Powerlevel10k.txt), obtained from the [official license](https://github.com/romkatv/powerlevel10k/blob/master/LICENSE). The full Powerlevel10k implementation is not bundled.

## Install separately

The license labels below were recorded from the metadata in the original private snapshot. Consult each upstream distribution for its complete license, version and installation requirements.

| Component | Author / source | License recorded in original metadata |
| --- | --- | --- |
| Powerlevel10k | [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k) | MIT |
| Zsh autosuggestions | [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | Consult upstream |
| Zsh syntax highlighting | [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Consult upstream |
| Scratchy global theme | jomada, [author website](https://seduccionlinux.wordpress.com) | GPL 3+ |
| Scratchy desktop theme | jomada, [author website](https://seduccionlinux.wordpress.com) | LGPL; exact version not specified |
| Audio visualizer / Kurve | [Luis Bocanegra](https://github.com/luisbocanegra/kurve) | GPL-3.0 |
| Plasma 6 desktop indicator | [dhruv8sh/plasma6-desktop-indicator](https://github.com/dhruv8sh/plasma6-desktop-indicator) | GPL-3.0+ |

The optional panel example also refers to `org.kde.plasma.mediacontroller.panel`. The original snapshot declared `GPL-2.0+ & GPLv3`, but provided no specific upstream repository URL. Its source has been excluded pending provenance verification; remove or replace that widget in your local layout if unavailable.

The original Lain and Lagtrain splash packages named `kloud` as author and declared GPLv3 for the package. A package metadata label alone did not establish the provenance of the included artwork. Both packages and their animations have been excluded from this edition. Scratchy previews, the standalone color scheme and the original global color settings have also been excluded; install visual dependencies from their authors.

## Desktop screenshots

The three images in `assets/` are screenshots made by Alfredo of his own Raspberry Pi desktop. They are included as historical documentation of his configuration. The wallpaper illustrations and third-party visual designs visible within them are not claimed as his original artwork or relicensed under this repository's MIT license. The original wallpaper artist and source have not yet been identified in this documentation. Standalone wallpaper files are not included.
