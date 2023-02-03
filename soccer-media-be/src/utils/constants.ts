import { CustomError, HTTPStatusCode, InternalErrorMessage } from "../types/error";

export const INTERNAL_ERROR = new CustomError({
    message: "Something went wrong",
    statusCode: HTTPStatusCode.InternalServerError,
    internalMessage: InternalErrorMessage.InternalError,
});

export const USER_NOT_EXIST_ERROR = new CustomError({
    message: "User does not exist",
    statusCode: HTTPStatusCode.NotFound,
    internalMessage: InternalErrorMessage.UserNotExist,
});
