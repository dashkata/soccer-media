"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CustomError = exports.HTTPStatusCode = exports.InternalErrorMessage = void 0;
var InternalErrorMessage;
(function (InternalErrorMessage) {
    // GENERIC
    InternalErrorMessage["Default"] = "SOMETHING_WENT_WRONG";
    InternalErrorMessage["NotFound"] = "NOT_FOUND";
    InternalErrorMessage["InternalError"] = "KUUUUUR INTERNAL_ERROR";
    InternalErrorMessage["Unauthorized"] = "REQUEST_DENIED";
    InternalErrorMessage["BadRequest"] = "BAD_REQUEST";
    // Card
    InternalErrorMessage["CardNotExist"] = "CARD_DOESNT_EXIST";
    InternalErrorMessage["CardExist"] = "CARD_ALREADY_EXISTS";
    InternalErrorMessage["CardNotCreated"] = "CARD_NOT_CREATED";
    InternalErrorMessage["CardNotDeleted"] = "CARD_NOT_DELETED";
    //  User
    InternalErrorMessage["UserNotExist"] = "USER_DOESNT_EXIST";
    InternalErrorMessage["UserExist"] = "USER_ALREADY_EXISTS";
    InternalErrorMessage["UserMissingName"] = "MISSING_NAME";
    InternalErrorMessage["UserHasCard"] = "USER_HAS_CARD";
    //  Offer
    InternalErrorMessage["OfferNotExist"] = "OFFER_DONT_EXIST";
    // Transaction
    InternalErrorMessage["TransactionNotExist"] = "TRANSACTION_NOT_EXIST";
    InternalErrorMessage["TransactionNotCreated"] = "TRANSACTION_NOT_CREATED";
})(InternalErrorMessage = exports.InternalErrorMessage || (exports.InternalErrorMessage = {}));
var HTTPStatusCode;
(function (HTTPStatusCode) {
    HTTPStatusCode[HTTPStatusCode["Ok"] = 200] = "Ok";
    HTTPStatusCode[HTTPStatusCode["Created"] = 201] = "Created";
    HTTPStatusCode[HTTPStatusCode["NoContentSuccess"] = 204] = "NoContentSuccess";
    HTTPStatusCode[HTTPStatusCode["EmailSent"] = 250] = "EmailSent";
    HTTPStatusCode[HTTPStatusCode["BadRequest"] = 400] = "BadRequest";
    HTTPStatusCode[HTTPStatusCode["Unauthorized"] = 401] = "Unauthorized";
    HTTPStatusCode[HTTPStatusCode["Forbidden"] = 403] = "Forbidden";
    HTTPStatusCode[HTTPStatusCode["NotFound"] = 404] = "NotFound";
    HTTPStatusCode[HTTPStatusCode["InternalServerError"] = 500] = "InternalServerError";
})(HTTPStatusCode = exports.HTTPStatusCode || (exports.HTTPStatusCode = {}));
class CustomError extends Error {
    constructor(args) {
        super(args.message);
        this.statusCode = args.statusCode;
        this.internalMessage = args.internalMessage;
        Object.setPrototypeOf(this, CustomError.prototype);
    }
}
exports.CustomError = CustomError;
