#!/bin/zsh
# Copy the latest exported files from the ProPitching Index project and write data/meta.json.
cd "${0:A:h}"
SRC="$HOME/Documents/Claude/Projects/Pro Pitching/data/web"
cp "$SRC"/*.json data/
python3 -c "
import json,glob
last=max(max(r['date'] for r in json.load(open(f))) for f in glob.glob('data/games_*.json'))
json.dump({'through': last}, open('data/meta.json','w'))
print('games through', last)"
./build.sh
