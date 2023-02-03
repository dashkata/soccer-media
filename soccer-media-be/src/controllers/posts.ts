import { Request, Response } from "express";
import { Post } from "@prisma/client";
import { CustomError, HTTPStatusCode } from "../types/error";
import { formatError } from "../utils/functions";
import { postService } from "../services/posts";

const createUserPost = async (req: Request, res: Response) => {
    try {
        const { message, userId } = req.body;
        const post = await postService.createPost({ message, userId });
        return res.status(HTTPStatusCode.Ok).json(post);
    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);
    }

}

export const postsController = {
    createUserPost,
}