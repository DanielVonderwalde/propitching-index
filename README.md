# ProPitching Index

Every MLB pitch since 2023 graded on a 100 scale: 100 is average and 10 points is one standard deviation.

**Live site:** https://danielvonderwalde.github.io/propitching-index/

- **PPI**: how much each pitch lowered the batter's expected result, ranked against every pitch in the same count.
- **Arsenal+**: the pitch's physics only (velocity, spin, movement, release).
- **Command+**: how close the pitch came to the pitcher's usual spot, and how costly a likely ball was in that count.
- **Projected PPI**: 75% PPI + 25% Arsenal+, the mix that best predicted the next season.

Each season is graded by models trained only on the other seasons (leave-one-season-out, 2023 to 2026).

This repository holds the public site: one HTML page and summary files (season, pitch-type and game grades) in `data/`. Pitch-by-pitch data comes from Baseball Savant (Statcast) and is not redistributed here.

Independent project, not affiliated with or endorsed by Major League Baseball.
