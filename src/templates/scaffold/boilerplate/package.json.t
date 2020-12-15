---
to: package.json
---
{
  "name": "<%= h.inflection.dasherize( h.changeCase.lowerCase(name) ) %>",
  "version": "0.0.0",
  "description": "",
  "main": "dist/app",
  "_moduleAliases": {
    "@app": "dist/app"
  },
  "scripts": {
    "prebuild": "rm -rf ./dist/",
    "build": "tsc",
    "dev": "nodemon",
    "start": "node ./dist/app"
  },
  "author": "sjones6",
  "dependencies": {
    "bcrypt": "^5.0.0",
    "passport-local": "^1.0.0",
    "passport": "^0.4.1",
    "sipp": "^0.0.42",
    "sqlite3": "^5.0.0"
  },
  "devDependencies": {
    "@types/node": "^14.14.6",
    "nodemon": "^2.0.6"
  }
}
