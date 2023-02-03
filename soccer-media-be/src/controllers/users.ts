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
const getUser = async (req: Request, res: Response) => {
    try {
        const userId = req.query.userId as string;
        if (!userId) {
            return;
        }
        const user = await userService.getUser(userId);
        return res.status(HTTPStatusCode.Ok).json({ user });

    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);
    }

}
const deleteUser = async (req: Request, res: Response) => {
    try {
        const userId = req.query.userId as string;
        if (!userId) {
            return
        }
        await userService.deleteUser(userId);
        return res.status(HTTPStatusCode.Ok).json({ string: "User deleted sucessfully" });

    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);

    }
}


export const usersController = {
    createUser,
    getUser,
    deleteUser,

};


