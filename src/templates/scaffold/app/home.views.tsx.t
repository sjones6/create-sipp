---
to: controllers/home/home.view.tsx
---
import { App } from '@app/view/App';

export class HomeView extends App {
  constructor(
    private readonly header: string,
  ) {
    super();
  }

  async renderBody(h): Promise<string> {
    return (
      <div>
        <h1>{this.header}</h1>
      </div>
    );
  }
}