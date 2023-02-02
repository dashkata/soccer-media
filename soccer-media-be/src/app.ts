import { config } from 'dotenv';
import express, { Express, Request, Response } from 'express';

config();

const app: Express = express();

app.get('/', (req: Request, res: Response) => {
    res.send('Express server with TypeScript');
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server is listening on port ${PORT}`);
});