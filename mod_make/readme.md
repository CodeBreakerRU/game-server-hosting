# Call of Duty 4: Modern Warfare Skinning Tutorial

> **Note:** This tutorial will explain how to replace Stock Skins for any models in the game.

## Requirements

- Adobe Photoshop (or other graphics program that supports the DDS plugin)
- Winrar
- [Call of Duty 4: Skinning Tools]
- Call of Duty 4 Modern Warfare

---

## Initial Setup
- Open up `cod4_converters.zip` and extract the `dds.8bi` file (DDS plugin) into `adobe\photoshop\plug-ins\File Formats` (If the plugin is not installed you will be unable to open or save a .dds file).
- Create a new folder on your desktop and call it **Skinning Tools**.
- Copy the two converters (`iwi2dds.exe` and `dds2iwi.exe`) into this new folder.

---

## File Selection
Go to:
```
Activision\Call of Duty 4 – Modern Warfare\main
```
In this folder, you should see 14 IW_ files going from `IW_00` up to `IW_13`. The skins are located inside `IW_00 – IW_04` (`IW_12` stores IWI files used in the map `mp_crash_snow` and `IW_13` stores IWI files used in the 4 maps released in patch 1.6). Inside these archives, there is a folder called `images` where the IWI files are stored.

The IWI image files are organized alphabetically:
- `iw_00.iwd` contains files beginning with # to Ch
- `iw_01.iwd` contains files beginning with Ch to Ma
- `iw_02.iwd` contains files beginning with Ma to Sa
- `iw_03.iwd` contains files beginning with Sa to Ve
- `iw_04.iwd` contains files beginning with Ve to Z

*Once you have decided which file you want to skin, extract it from the `.iwd` to your **Skinning Tools** folder. This will create an `images` folder inside.*

---

## File Conversion 1
Drag and drop the file from the `images` folder onto `iwi2dds.exe`.

This will create a new file with `_out.dds` at the end, which can now be edited in Photoshop.

---

## File Editing
Open the new file in Photoshop. You might be prompted with:
- **Image size:** Choose “normal default sizes”.
- **MIP maps display:** Select “no” if prompted.

You can now edit the skin using tools like:
- Opacity level
- Eraser tool
- Blending options
- Magic Pen
- Alpha Channels

---

## File Saving
To save your edited file:
- Go to `File > Save As` and select `.dds` as the file type.
- In the save options:
  - **Save format:** DXT5
  - **MIP Maps:** Generate MIP Maps
- Click save.

---

## File Conversion 2
Convert your edited `.dds` file back to `.iwi` by dragging and dropping it onto `dds2iwi.exe`.

*Rename the file back to its original name (e.g., `weapons_ak47_c.iwi`).*

---

## Archiving the File
Copy your renamed `.iwi` file to:
```
activision\Call of Duty 4 – Modern Warfare\mods\Modwarfare\images
```
Then, double-click `makemod` in the `modwarfare` folder.

This creates two files: `mod.ff` and `modwarfare.iwd`. Copy both into a new mod folder (with no spaces in its name).

---

## Checking the Skins Work
Load Call of Duty 4 Multiplayer and:
- Go to `Mods` in the Main Menu and select your mod folder.
- Open the console (` key) and run:
```
/devmap <mapname> (e.g., mp_crash)
```

*Alternatively, use [Xmodel Exporter]) to view new skins on models.*

---

*Categories: Call of Duty 4, Skinning, Texturing, Modding*
