---
to: nodemon.json
---
{
  "watch": ["app","db"],
  "ext": "ts,tsx,json",
  "ignore": ["src/**/*.spec.ts"],
  "exec": "tsc && node ./dist/app/"
}