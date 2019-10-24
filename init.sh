npm init \
  && npm i express body-parser express-autoprefixer less-middleware cookie-session \
  && npm i --save-dev nodemon eslint \
    eslint-config-standard \
    eslint-plugin-import \
    eslint-plugin-node \
    eslint-plugin-promise \
    eslint-plugin-standard \
  && npx npm-add-script -k start -v "node index.js" \
  && npx npm-add-script -k dev -v "nodemon index.js" \
  && npx npm-add-script -k format -v "eslint \"**/*.js\"" 

