---
to: controllers/home/HomeController.ts
---

import { Controller, Get } from 'sipp';
import { HomeView } from './home.view';

export class HomeController extends Controller {
  basePath = '';

  @Get()
  async getHome() {
    return new HomeView('Hello world!');
  }
}

