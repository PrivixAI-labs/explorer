export NODE_OPTIONS=--max-old-space-size=4096 && cd apps/block_scout_web/assets && rm -rf node_modules && npm i --f && node_modules/webpack/bin/webpack.js --mode production && cd ../../../ 
