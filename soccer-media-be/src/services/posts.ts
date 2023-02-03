import { Post } from "@prisma/client";
import prisma from "../lib/prisma";
import { formatError } from "../utils/functions";
interface CreatePostArgs {
    message: string,
    userId: string,


}

const createPost = async ({ message, userId }: CreatePostArgs): Promise<Post> => {
    try {
        const post = await prisma.post.create({
            data: {
                'likes': 0,
                'message': message,
                'userId': userId,
            },
            select: {
                id: true,
                message: true,
                likes: true,
                userId: true,
            },

        });
        return post

    } catch (e) {
        const error = formatError(e);

        throw error;
    }

}

export const postService = {
    createPost,
};