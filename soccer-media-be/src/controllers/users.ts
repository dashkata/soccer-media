import { userService } from "../services/users";
import { Request, Response } from "express";
import { formatError } from "../utils/functions";
import { HTTPStatusCode } from "../types/error";
const createUser = async (req: Request<unknown, unknown, { email: string, username: string, name: string }>, res: Response) => {
    try {
        if (!req.body) {
            console.log("error");
        }
        const { email, username, name } = req.body;
        const user = await userService.createUser({ email, username, name });
        return res.status(HTTPStatusCode.Ok).json(user);


    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);
    }
};
const deleteUser = async (req: Request, res: Response) => {

}


export const usersController = {
    createUser,
};


