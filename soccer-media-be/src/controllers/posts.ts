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
const getAllPosts = async (req: Request, res: Response) => {
    try {
        const posts = await postService.getAllPosts();
        return res.status(HTTPStatusCode.Ok).json(posts);

    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);
    }
}
const likeUserPost = async (req: Request, res: Response) => {
    try {
        const postId = req.query.id as string;
        if (!postId) {
            return;
        }
        const post = await postService.likeUserPost(postId);
        return res.status(HTTPStatusCode.Ok).json("Post liked successfully");

    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);

    }
}
const commentPost = async (req: Request, res: Response) => {
    try {
        const postId = req.query.id as string;
        const { message, userId } = req.body;
        const post = await postService.commentPost(postId, { message, userId });
        return res.status(HTTPStatusCode.Ok).json(post);

    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);
    }

}

const deleteUserPost = async (req: Request, res: Response) => {
    try {
        const postId = req.query.id as string;
        if (!postId) {
            return;
        }
        await postService.deletePost(postId);
        return res.status(HTTPStatusCode.Ok).json("Post deleted sucessfully");

    } catch (e) {
        const error = formatError(e);
        return res.status(error.statusCode).json(error);

    }

}

export const postsController = {
    createUserPost,
    getAllPosts,
    commentPost,
    likeUserPost,
    deleteUserPost,
}