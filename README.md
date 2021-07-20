---
<p align="center">
  <img width="600" height="200" src="https://user-images.githubusercontent.com/49053928/111937011-2e9b8080-8ac7-11eb-914a-a0d94380d611.gif"><br>
 <b>Version (v2.4.2) (WIP)</b> - The Ultimate RP bundle of plugins for your RedM Server.
</p>


---
---
---
---
# ATTENTION!!!
Soon this repository will be renamed to **DokusBundle** !! <br>
This because I am developing a new framework for RedM that <br>
will be called DokusCore.

## Would you like to get early access ?
The new DokusCore Framework is not yet publicly released, but <br>
if you like, you can receive early access by becoming a Beta <br>
tester! Shoot me a mail via [DokusCore@outlook.com](DokusCore@outlook.com), <br>
and I will send your the instructions how to get the files as soon <br>
as possible. For right now only beta testers can have access to the <br>
DokusCore Framework, once the core is finished it will be publicly released. <br>

Website: [Website](https://DokusCore.com)         - [ Under Development ] <br>
Discord: [Discord](https://discord.io/DokusCore)  - [ Under Development ] <br>
Github:  [Repository](https://github.com/DokusCore/DokusCore) - [ Only Beta Access ] <br>

---
---
---
---
# Requirements
- [VorpCore](https://github.com/VORPCORE/VORP-Core) OR [RedEMRP](https://github.com/RedEM-RP)

# Discord
If you need any information about my script,<br>
if you found a bug, if you have an idea for the <br>
next version, or if you simply need some help.<br>
Feel free to join our [Discord](http://discord.gg/2gdypBhsye)

# Framework
DokusCore is designed to work with both Vorp and <br>
and the RedEMRP Framwork. Currently all Vorp features <br>
are being re-written to have RedEMRP capabilities. <br>

# Description
DokusCore is a bundle of plugins I've made to give      <br>
RedM roleplay servers a more flexible roleplay. <br>
Instead, having to install all plugins manually,  <br>
and putting them in the right order, you can install  <br>
this on the go! Simply `ensure DokusCore` in your <br>
server cfg and you're done. If you don't like to use  <br>
any of the features, you can simply turn them off <br>
in the config. Setting up your RedM RP experience <br>
was never been easier!

# Features
- **Multi Language Support**
  - English
  - Dutch
  - Bulgarian
  - German
  - Danish
  - Spanish
  - French
  - Greek
  - Italian
  - Polish
  - Portuguese
  - Russian

- **Metabolism**
  - Easy to configure config.
  - Very Customizable
  - Lower food and/or thirst when running.
  - Lower food and/or thirst when walking.
  - Lower food and/or thirst when standing idle.
  - Set lower or higher value for hunger
  - Set lower or higher value for thirst
  - Set lower or higher value for Stamina
  - Boost Stamina outer core (Gold)
  - Boost Stamina inner core (Gold)
  - Enable / Disable reset vitals after death
  - Gives warnings when low on food and thirst
  - Gives vital warnings when low on health

- **iMaps**
  - Fix multiple holes in the map
  - Fixes multiple glitched buildings.
  - Places tons of objects back on the map

- **Stores**
  - Buying items from 3 categories (Food - Meds - Misc)
  - Selling items from 3 categories (Food - Meds - Misc)
  - Multiple Store Locations
  - Easy to work with Config
  - Change the color of the circle easy
  - Show or Hide the circles
  - Show or hide the NPCs behind the counter

- **Teleport**
  - Set a marker on the map and teleport with /tpm
  - Set admin group name in the config
  - Can be used for all players or for admins only

- **UsableItems**
  - Adding items with ease in the config
  - Adding or removing hunger
  - Adding or removing thirst
  - Adding or removing stamina
  - Adding or removing health
  - Adding Gold status health innercore
  - Adding Gold status health outercore
  - Adding Gold status stamina innercore
  - Adding Gold status stamina outercore

- **BankDoors**
  - Open or close the bank doors.

- **ShowCoords**
  - Show map coords with /coords

- **BountyHunter**
  - Very Customizable
  - Set Multiple Bounty Boards
  - Set min and max rewards for money
  - Set min and max rewards for EXP
  - Set a static value per kill and EXP
  - Easy to add locations and enemies
  - Set groups of enemies together by using the same ID
  - Set a Red Theme or a Dark Theme for the menu.
  - Set the position of the menu (left - right - center)
  - Restrict to jobs only or not.
  - Set as many custom jobs to use the bounty menu

- **Play Piano**
  - Customizable Config
  - Add and remove pianos locations
  - Playable as male and female

- **Trains**
  - 2 Trains and 1 Tram

- **Drink and Wash in Rivers**
  - Press G to wash in rivers and E to drink.
  - Incease/Decrease Thirst, health and stamina with washing
  - Incease/Decrease Thirst, health and stamina with drinking

- **Pickable Fruits**
  - Pick varius fruits from bushes and trees.
  - Add harvest items easy in the config.
  - Choose Min/Max amount per item to get.

- **PayChecks**
  - Set how often the paycheck needs to occure
  - Set what jobs need to reveive a paycheck
  - Set the mount of Money - Gold or Exp per Job

- **MaxCores**
  - Boost the default health of a player
  - Boost the default stamina of a player

# Events: Metabolism
```
TriggerEvent('DevDokus:Metabolism:C:Hunger', value)
TriggerEvent('DevDokus:Metabolism:C:Thirst', value)
TriggerEvent('DevDokus:Metabolism:C:Health', value)
TriggerEvent('DevDokus:Metabolism:C:Stamina', value)
TriggerEvent('DevDokus:Metabolism:C:StaminaInnerGold', seconds)
TriggerEvent('DevDokus:Metabolism:C:StaminaOuterGold', seconds)
TriggerEvent('DevDokus:Metabolism:C:HealthInnerGold', seconds)
TriggerEvent('DevDokus:Metabolism:C:HealthOuterGold', seconds)
```

# More will be added soon!
As I am developing more scripts, I will be adding     <br>
then to this bundle pack! If changes or extentions  <br>
are made to the Standalone plugin, they will also  <br>
be made in this bundle pack. Check this page  <br>
regularly if you want to stay up to date of all the  <br>
new plugins!

# Disclaimer
DokusCore is currently under development, but can already be used!   <br>
I will still be including more scripts to this  <br>
core on a daily basis. If you want to be able to  <br>
upgrade to the latest version with ease, then I would <br>
recommend not to make changes in any files other then <br>
the config file. This way you can simply download the <br>
latest version and replace your old files. Just keep in   <br>
mind that changes can be made to the config. You  <br>
can either replace the config and add in your custom changes,   <br>
or use the old config and add in the changes I made manually.   <br>
If you make any changes in the client/server files, you have  <br>
to manually change this on every update.  

# Scripts Included
Note: Not all standalone plugins are up to date with the newest version!! <br>
DokusCore has the newest version of all these scripts, I would advice to use <br>
the core instead of the standalones. Once I got more time, I will update all <br>
the standalone.

- [DevDokus Teleport]( https://github.com/DevDokus/RedM-Teleport)
- [DevDokus Stores](https://github.com/DevDokus/Redm-Stores)
- [DevDokus Usable Items](https://github.com/DevDokus/RedM-UsableItems)
- [DevDokus Metabolism](https://github.com/DevDokus/RedM-Metabolism)
- [DevDokus BountyHunter](https://github.com/DevDokus/RedM-BountyHunter)
- [DevDokus PlayPiano](https://github.com/DevDokus/RedM-PlayPiano)
- [KiBook iMaps](https://github.com/kibook/redm-imaps)
- [Thunderstorm441 Trains](https://github.com/Thunderstorm441/ts-trains-redm)
