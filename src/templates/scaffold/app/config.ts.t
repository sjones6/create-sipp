---
to: config.ts
---

import { IAppConfig } from 'sipp';

export const config: IAppConfig = {

  /**
   * Production mode toggles on a protected exception screen, machine-parseable logging,
   * and, importantly, production DB connection
   */
  mode: process.env.NODE_ENV === 'production' ? 'production' : 'development',

  middleware: {

    /**
    * Which directory will serve static assets. Relative to the current working directory
    */
    static: {
      path: 'public'
    },

    /**
    * Settings for session management.
    *
    * See https://www.npmjs.com/package/express-session for options.
    */
    session: {
      secret: process.env.SESSION_SECRET,
    },

    /**
    * Settings for CSRF proection.
    *
    * Set to `false` to disable CSRF protection.
    *
    * See https://www.npmjs.com/package/csurf for options
    */
    csrf: {
      cookie: true,
    },
  }
};
