# Godot-VR-Template | 4.2.2
The purpose of this project is to have a template with a ton of boilerplate code for starting up a new VR game in Godot

<br><br><br>

# Notes
 - The project is setup to work with LFS and I have included the necessary `.gitattributes` file for you. It includes several common things that may change often that you would want in LFS, but you can always add more.

<br><br><br>

# Testing
Here's all the setup you need to do to run this on the Quest 2 (probably Quest 3 as well)

<br>

## Setup

### On Desktop
- Download SteamVR through Steam

### On Phone
- Enable `Developer Mode`
  - Login to the Meta app on your phone
  - Connect phone to headset (has to be connected for next step)
  - Go to `Headset Settings`
  - Enable Developer Mode

### On Desktop:
- Open SteamVR
- Set SteamVR as default OpenXR runtime
  - SteamVR -> Settings -> OpenXR

### On Oculus
- Download SteamLink (if you don't have it already)
- Open SteamLink and connect to computer

### On Desktop
- Restart SteamVR if headset isn’t connected
- Otherwise, make sure your headset is on and you’re in SteamVR home
- Start Godot project

<br>

## Testing Flow
- Put on headset
- Start SteamVR through this menu
- Once inside home, start game in Godot



<br><br><br>



# Editor Settings

In order to make things as consistent as possible we need similar settings. Most of the critical ones are changed in the `project.godot` file, but some can be configured in your editor and affect everything you work on (I think). Most of these settings are personal preference, but I'd like to think I have good reason to use them. All you need to do first is navigate to the `Editor > Editor Settings` menu to get started.

<br>

## Must haves
`Text Editor > Behavior > Files`
 - Trim Trailing Whitespace on Save: `ON`
   - This removes the random tabs and spaces at the end of lines that often shows up

`Text Editor > Completion`
 - Use Single Quotes: `ON`

<br><br><br>

## Nice to haves
`Text Editor > Appearance`
 - Show Line Length Guidelines: `OFF`
   - By default the editor has 80 and 100 character guidelines. Personally, I find them annoying

`Text Editor > Completion`
 - Idle Parse Delay: `1` or `0.5`
   - If you've used Godot a while, you'll know that there's a noticeable delay between when you type something and when Godot will complain that it's wrong or there's an error. This setting decreases that time and makes Godot feel a lot more responsive

`Text Editor > Behavior > Navigation`
 - Scroll Past End of File: `ON`
   - This will make it so the editor scrolls past where your code ends without having to add a bunch of lines. Makes things a little easier to read
 - Auto Reload Scripts on External Change: `ON`
   - This is probably the handiest feature. When editing files outside of Godot, this will reload all of them automatically in Godot. Normally, Godot will only reload files that are currently open in Godot (scenes, scripts, etc). This makes it so that everything is reloaded regardless of whether it is open or not

`Text Editor > Script List`
 - Sort Scripts By: `None`
   - When working with multiple scripts open at once, I find it easy to move them around and organize them in the inspector, but when you save, Godot will re-sort those scripts based on this setting. By putting `None`, you tell Godot to not sort them which is super helpful

`Interface > Inspector > Default Color Picker Mode`
 - `HSV`

`Interface > Inspector > Default Color Picker Shape`
 - `HSV Rectangle`

`Run > Window Placement`
 - Screen: `Next Screen`
