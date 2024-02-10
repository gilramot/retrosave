autobackups game save files for retroarch, with custom commit status messages

**currently requires a retroachievements account connected to retroarch**

# Usage
You need to have the `~/.config/retroarch/saves` connected to the github repo you want to backup the saves to.
Run the following commands, with the retrosave repo as your cwd:

        chmod m+x retrosave.sh
        ./retrosave.sh <your_retroachievements_username> <your_retroachievements_api_key>

