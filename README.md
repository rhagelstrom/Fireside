
# Fireside

**Current Version:** 1.1
**Updated:** 02/20/24

## Overview

Fireside is a Fantasy Grounds companion extension that is used in conjunction with [Chat Aesthetics Configurator](https://github.com/rhagelstrom/ChatAestheticsConfigurator) that allows for custom themes. Fireside allows you to keep your custom themes even when Chat Aesthetics Configurator is updated.

## Instructions

Fireside is intended to be modified by the GM to add custom themes of the GM's choosing. It is intended to be unziped in the Fantasy Grounds Extension Folder. Custom Themes added by Fireside can be selected in the Chat Aesthetics Configurator options menu. An example for adding a Font theme, Icon Theme, GM Portrait are provided but feel free to change or delete. Fireside can be forked, modified, shared or changed no permission necessary.

### Installation

Download Fireside and unzip it into your Fantasy Grounds extensions folder.

### Adding GM Portrait

1. Add your custom GM Portrait to [themes/icons/gm_portraits](themes/icons/gm_portraits). The example is 50px by 50px. It is suggested that you use that size or smaller.
2. Modify [themes/theme_gm_icons.xml](themes/theme_gm_icons.xml). Add the following line <br>
 ```<icon name="GMIcon_portrait" file="themes/icons/gm_portraits/funny_portrait.png" />``` <br><br> Where **funny_portrait.png** is the name of your custom portrait added in step 1. icon name must start with **GMICON_** and **portrait** is used in step 3. **portrait** can be any string you want but must be unique.
 3. Modify [scripts/fireside.lua](scripts/fireside.lua). Add the following at line 10 <br>
   ```DrowbeCAC.addGMPortrait("Funny", "portrait")``` <br><br> Where **Funny** is the human readable name displayed in Chat Aesthetics Configurator options and **portrait** the identifier used in step 2.

### Adding Font Theme

1. Make a copy of [themes/theme_fonts_custom1.xml](themes/theme_fonts_custom1.xml) to [themes](themes) and rename it **theme_fonts_custom2.xml**
2. Modify [extension.xml](extension.xml) and add the line<br><br> ```<includefile source="themes/theme_fonts_custom2.xml"/>```<br><br>
3. Modify [themes/theme_fonts_custom2.xml](themes/theme_fonts_custom2.xml) and find/replace **custom1** with **custom2**
4. Modify [themes/theme_fonts_custom2.xml](themes/theme_fonts_custom2.xml) and make any custom adjustments necessary
5. Modify [scripts/fireside.lua](scripts/fireside.lua). Add the following at line 10 <br>
   ```DrowbeCAC.addFontTheme("My Font", "custom2")``` <br><br> Where **My Font** is the human readable name displayed in Chat Aesthetics Configurator options and **custom2** the identifier you renamed your **theme_fonts_.xml** file.

### Adding Icon Theme

1. Make a copy of the folder [themes/icons/custom1](themes/icons/custom1) to [themes/icons](themes/icons) and rename the folder **custom2**
2. Replace all the files in **custom2** with your custom icons making sure the file names all stay the same. Drowbe's Icons are 50px x 50px and it is suggested that custom icons are that or smaller.
3. Make a copy of [themes/theme_icons_custom1.xml](themes/theme_icons_custom1.xml) to [themes](themes) and rename it **theme_icon_custom2.xml**
4. Modify [extension.xml](extension.xml) and add the line<br><br> ```<includefile source="themes/theme_icons_custom2.xml"/>```<br><br>
5. Modify [themes/theme_icons_custom2.xml](themes/theme_icons_custom2.xml) and find/replace **custom1** with **custom2**
6. Modify [scripts/fireside.lua](scripts/fireside.lua). Add the following at line 10 <br>
   ```DrowbeCAC.addIconTheme("My Icons", "custom2")``` <br><br> Where **My Icons** is the human readable name displayed in Chat Aesthetics Configurator options and **custom2** the identifier you renamed your **theme_icons_.xml** file.

### Adding Icon Theme

If you use [Spell Tokens](https://www.dmsguild.com/product/195599/DUNGEONS-AND-DRAGONS-5e-Spell-Tokens-21) you can just drop the images in /themes/icons/aura directory replacing the images that are there.
