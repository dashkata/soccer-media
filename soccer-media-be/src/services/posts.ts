import { Post } from "@prisma/client";
import prisma from "../lib/prisma";
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
            }
        });
        return post

    } catch (e) {
        throw e;
    }

}

export const postService = {
    createPost,
};