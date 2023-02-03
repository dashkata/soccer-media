import { INTERNAL_ERROR } from "./constants";
import { CustomError, HTTPStatusCode, InternalErrorMessage } from "../types/error";

export const formatError = (e: unknown, specificMessage = "Something went wrong, try again later"): CustomError => {
    if (e instanceof CustomError) {
        return e;
    }

    return INTERNAL_ERROR;
};