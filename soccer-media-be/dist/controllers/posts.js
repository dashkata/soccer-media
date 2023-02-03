"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.postsController = void 0;
const error_1 = require("../types/error");
const functions_1 = require("../utils/functions");
const posts_1 = require("../services/posts");
const createUserPost = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { message, userId } = req.body;
        const post = yield posts_1.postService.createPost({ message, userId });
        return res.status(error_1.HTTPStatusCode.Ok).json(post);
    }
    catch (e) {
        const error = (0, functions_1.formatError)(e);
        return res.status(error.statusCode).json(error);
    }
});
exports.postsController = {
    createUserPost,
};
