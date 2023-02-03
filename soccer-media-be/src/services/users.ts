import { User } from '@prisma/client';
import prisma from "../lib/prisma";
import { formatError } from '../utils/functions';

interface CreateUserArgs {
    email: string,
    name: string,
    username: string,
};

const createUser = async ({ email, name, username }: CreateUserArgs): Promise<User> => {
    try {
        const user = await prisma.user.create({
            data: {
                email,
                name,
                username,
            },
            select: {
                id: true,
                email: true,
                name: true,
                username: true,
                createdAt: true,
                updatedAt: true,
            },
        });

        return user;

    } catch (e) {
        const error = formatError(e);


        throw error;
    }
};
const deleteUser = async (id: string): Promise<void> => {
    try {
        await prisma.user.delete({
            where: { id: id },
        })
    } catch (e) {

    }

}

export const userService = {
    createUser,
}
