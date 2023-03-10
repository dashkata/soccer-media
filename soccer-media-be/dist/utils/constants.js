"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.USER_NOT_EXIST_ERROR = exports.INTERNAL_ERROR = void 0;
const error_1 = require("../types/error");
exports.INTERNAL_ERROR = new error_1.CustomError({
    message: "Something went wrong",
    statusCode: error_1.HTTPStatusCode.InternalServerError,
    internalMessage: error_1.InternalErrorMessage.InternalError,
});
exports.USER_NOT_EXIST_ERROR = new error_1.CustomError({
    message: "User does not exist",
    statusCode: error_1.HTTPStatusCode.NotFound,
    internalMessage: error_1.InternalErrorMessage.UserNotExist,
});
