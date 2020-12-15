---
to: view/App.tsx
---
import { h, View } from 'sipp';

export class App extends View {
  protected title: string = '<%= h.inflection.titleize(name) %>';

  async render(h): Promise<string> {
    return (
      <html>
        <head>
          <meta charset="utf-8" />
          <meta
            name="viewport"
            content="width=device-width,initial-scale=1,shrink-to-fit=no"
          ></meta>
          
          <script
            src="https://cdnjs.cloudflare.com/ajax/libs/turbolinks/5.2.0/turbolinks.js"
            defer
          ></script>
          <title>{this.title}</title>
          {await this.renderHead(h)}
        </head>
        <body>
          <div>
            {await this.renderBody(h)}
          </div>
        </body>
      </html>
    );
  }

  /**
   * Override in children views to insert content into the head
   */
  protected async renderHead(h, ...args: any[]): Promise<string> {
    return '';
  }

  /**
   * Override in children views to insert content into the body
   */
  protected async renderBody(h, ...args: any[]): Promise<string> {
    return '';
  }
}