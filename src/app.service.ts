import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return `
      <html>
        <head>
          <style>
            body {
              font-family: Arial, sans-serif;
              background-color: #f4f4f4;
              margin: 0;
              padding: 20px;
            }
            h1 {
              color: #333;
            }
            p {
              font-size: 18px;
              color: #666;
            }
          </style>
        </head>
        <body>
          <h1>Hello World!</h1>
          <p>Welcome to the EC2 NestJS Application with Docker</p>
        </body>
      </html>
    `;
  }
}
