<p align="center">
  <strong>Languages:</strong>
  <a href="./README.md">简体中文</a> ·
  <a href="./README_EN.md">English</a> ·
  <a href="./README_JA.md">日本語</a>
</p>

# Yuzusoft Generals Pack

<p align="center">
  <strong>A Hearts of Iron IV fan mod · GitHub release mirror</strong>
</p>

<p align="center">
  <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=3303751918">Steam Workshop</a>
  ·
  <a href="https://github.com/Fostanico/Yuzusoft-Generals-Pack">GitHub Release Repository</a>
  ·
  <a href="https://docs.qq.com/doc/DZVpkdWRBQ2hITFV2">Bug Reports / Suggestions</a>
</p>

---

## About This Repository

This is the **public GitHub release repository** for the Yuzusoft Generals Pack.

This repository is mainly used to:

- publish and archive public versions for players;
- provide an alternative download channel for players who cannot use Steam Workshop normally;
- preserve public release files and version information;
- provide project information, installation instructions, compatibility notes, and feedback channels.

> [!IMPORTANT]
> **This repository is not the development team's primary repository.**
>
> Development, code refactoring, internal testing, branch management, and team collaboration take place in a separate private development repository.
> Therefore, the commit history here does not fully represent the actual development process of the Yuzusoft Generals Pack and should not be treated as a complete development log.

If you simply want to play the mod, Steam Workshop is recommended. Use this repository if Steam downloads are inconvenient, if you need a manual installation, or if you want to preserve a specific public version.

---

## Current Public Version

| Item | Information |
|---|---|
| Mod name | Yuzusoft Generals Pack |
| Mod Version | `1.85` |
| HOI4 `supported_version` | `1.19.2.0` |
| Steam Workshop ID | `3303751918` |
| GitHub branch | `main` |

> [!NOTE]
> The public GitHub version and Steam Workshop version are normally kept close to each other, but their release times may differ briefly.
> If the files on the two channels differ, refer to the development team's latest announcement.

---

## Mod Overview

The Yuzusoft Generals Pack began as a mod that added Yuzusoft characters to Hearts of Iron IV. It has since grown into a comprehensive fan mod featuring characters, national mechanics, decisions, events, and custom UI.

Current highlights include:

- generals, advisors, and country leaders from multiple Yuzusoft titles;
- selected characters from `9-nine-` and `NOeSIS`;
- UI-based character recruitment;
- affection and marriage systems;
- numerous character events, marriage super events, and Easter eggs;
- character-specific upgrades, missions, and decisions;
- Yuzusoft-themed army, navy, and air manufacturers;
- expanded industry, military academy, and military reform mechanics;
- tarot cards and other randomized bonuses;
- special units, equipment, and character-related enhancements;
- multiple custom GUIs;
- ongoing remakes of characters and mechanics from older versions.

For the complete gameplay guide, character list, and latest update notes, please refer to the Steam Workshop page.

---

## Download and Installation

### Method 1: Steam Workshop (Recommended)

Subscribe here:

https://steamcommunity.com/sharedfiles/filedetails/?id=3303751918

Steam automatically downloads and updates the mod, making this the best option for most players.

### Method 2: Manual Installation from GitHub

You can:

1. download this repository as a ZIP file;
2. extract it locally;
3. place the mod files in the Hearts of Iron IV local mod directory;
4. make sure the local path in the `.mod` descriptor is correct;
5. enable the mod in Paradox Launcher.

You can also use:

```bash
git clone https://github.com/Fostanico/Yuzusoft-Generals-Pack.git
```

> [!WARNING]
> When installing manually, pay particular attention to leftover files from older versions.
> If you encounter problems, completely remove the old directory before copying the current version again.

---

## What Is the Difference Between Steam and GitHub?

### Steam Workshop

Suitable for players who:

- want automatic updates;
- do not want to manage files manually;
- want player-facing releases as soon as possible.

### GitHub

Suitable for players who:

- have trouble downloading from Steam Workshop;
- want to manually archive a specific public version;
- want to inspect public release files;
- need to install the mod manually;
- want to use Git for version archiving.

This GitHub repository **is not used for the full development workflow**. Do not judge how long a feature took to develop, who created it, or how many internal refactors it underwent solely from this public commit history.

---

## Game Version and Compatibility

The current `descriptor.mod` declares support for:

```text
Hearts of Iron IV 1.19.2.0
```

The mod contains many characters, decisions, events, custom GUIs, and shared scripts. When used alongside large HOI4 mods, possible conflicts include:

- GUI conflicts;
- overwritten shared definitions;
- character or country script conflicts;
- event ID or trigger conflicts;
- abnormal behavior in special mechanics;
- incompatibility after a game update.

When reporting a compatibility issue, please provide as much of the following information as possible:

```text
HOI4 Version:
Yuzusoft Generals Pack Version:
Other Enabled Mods:
Reproduction Steps:
Expected Behaviour:
Actual Behaviour:
Relevant error.log:
Screenshot / Save:
```

More complete information usually makes the issue easier to diagnose.

---

## Bug Reports and Suggestions

Feedback document:

https://docs.qq.com/doc/DZVpkdWRBQ2hITFV2

QQ group:

```text
967395223
```

You can also use the group to:

- report bugs;
- contribute character writing;
- submit ideas for marriage super events;
- discuss balance and mechanics;
- provide images or UI assets;
- suggest improvements to remade legacy content.

---

## AI Use Statement

This project uses **OpenAI ChatGPT and OpenAI Codex** as development and maintenance assistants. This includes all models that were available through the author's **ChatGPT Plus** subscription in the ChatGPT web app during development, as well as models made available to Plus subscribers in Codex; it **does not include Pro-exclusive models restricted to higher subscription tiers**. AI assistance is mainly used for writing, refactoring, and debugging PDX Script and related code; organizing algorithms and GUI logic; and improving documentation, translations, localisation, and prose. All AI output is reviewed, tested, and revised by human team members before adoption. Project design, content decisions, releases, maintenance, and final responsibility remain with the human development team.

---

## Development Team / Credits

Team credits:

1. 牢八
2. 御坂真琴
3. **伊尔诺** — Corresponding / Project coordination
4. VAN
5. 岛主
6. 在原七海（老登）
7. **huhu** — Corresponding
8. o5j
9. 统计计划管理
10. 暮风昔云初（芳乃）
11. Верный
12. 夏目不是枣子姐
13. 彩云赤霞
14. 小枫

---

## Related Projects

### Yuzu Radio

With the original author's permission, Yuzu Radio content has been integrated into this mod.

Players who only want to listen to Yuzusoft background music may use the standalone radio mod:

https://steamcommunity.com/sharedfiles/filedetails/?id=3143387438

### Community Enhanced Edition

An enhanced version created by community members based on this mod:

https://steamcommunity.com/sharedfiles/filedetails/?id=3334303111

Using it together with this mod is not recommended.

---

## Disclaimer

This is an **unofficial, non-commercial fan mod**.

- This project is not officially affiliated or partnered with YUZUSOFT, Paradox Interactive, or any related rights holder.
- Original characters, trademarks, music, artwork, and other intellectual property belong to their respective owners.
- This repository is used only as a public release and archive channel.
- Third-party materials must be used according to the terms granted by their original creators or rights holders.
- Unless explicitly stated otherwise, do not assume that all content in this repository is covered by a single open-source licence.

If a rights holder believes that any public content is problematic, please contact the development team.

---

## Acknowledgements

Thank you to every team member and player who has contributed character design, code, scripts, artwork, writing, testing, translation, compatibility maintenance, or bug reports.

We also thank everyone who has subscribed, played, offered suggestions, contributed writing, or kept inventing strange new mechanics along the way.

This project has grown from a simple generals pack into what it is today through long-term collaboration, continuous updates, and constant refactoring.

**Ciallo～(∠・ω< )⌒☆**
