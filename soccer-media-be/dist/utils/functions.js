"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.formatError = void 0;
const constants_1 = require("./constants");
const error_1 = require("../types/error");
const formatError = (e, specificMessage = "Something went wrong, try again later") => {
    if (e instanceof error_1.CustomError) {
        return e;
    }
    return constants_1.INTERNAL_ERROR;
};
exports.formatError = formatError;
