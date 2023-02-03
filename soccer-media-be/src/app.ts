import { config } from 'dotenv';
import express, { Express, Request, Response } from 'express';
import privateRouter from "./routes";
import * as admin from 'firebase-admin';

config();

const app: Express = express();
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use("/", privateRouter);

app.get('/', (req: Request, res: Response) => {
    res.send('Express server with TypeScript');
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server is listening on port ${PORT}`);
});