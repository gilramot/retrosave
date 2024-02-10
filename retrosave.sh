#!/bin/bash
cd ~/.config/retroarch/
curl -s "https://retroachievements.org/API/API_GetUserRecentlyPlayedGames.php?u=$1&y=$2&count=1" | jq . > raplayed.json
curl -s "https://retroachievements.org/API/API_GetUserRecentAchievements.php?z=$1&u=$1&y=$2"| jq . > raunlocked.json
cd saves
git fetch
git pull
git add --all
git commit -m "Recent game: $(jq -r '.[0].Title' ../raplayed.json), recent achievement: \"$(jq -r '.[0].Description' ../raunlocked.json)\" ($(jq -r '.[0].GameTitle' ../raunlocked.json))"
git push origin main
rm ../raplayed.json
rm ../raunlocked.json
