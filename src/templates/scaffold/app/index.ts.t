---
to: index.ts
---

import { App } from 'sipp';
import { controllers } from './controllers';
import { config } from './config';

App.bootstrap(config)
  .withControllers(...controllers)
  .wire()
  .then((app) => {
    app.listen();
  });
