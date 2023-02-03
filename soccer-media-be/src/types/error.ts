export enum InternalErrorMessage {
    // GENERIC
    Default = "SOMETHING_WENT_WRONG",
    NotFound = "NOT_FOUND",
    InternalError = "INTERNAL_ERROR",
    Unauthorized = "REQUEST_DENIED",
    BadRequest = "BAD_REQUEST",

    // Card
    CardNotExist = "CARD_DOESNT_EXIST",
    CardExist = "CARD_ALREADY_EXISTS",
    CardNotCreated = "CARD_NOT_CREATED",
    CardNotDeleted = "CARD_NOT_DELETED",

    //  User
    UserNotExist = "USER_DOESNT_EXIST",
    UserExist = "USER_ALREADY_EXISTS",
    UserMissingName = "MISSING_NAME",
    UserHasCard = "USER_HAS_CARD",

    //  Offer
    OfferNotExist = "OFFER_DONT_EXIST",

    // Transaction
    TransactionNotExist = "TRANSACTION_NOT_EXIST",
    TransactionNotCreated = "TRANSACTION_NOT_CREATED",
}

export enum HTTPStatusCode {
    Ok = 200,
    Created = 201,
    NoContentSuccess = 204,
    EmailSent = 250,
    BadRequest = 400,
    Unauthorized = 401,
    Forbidden = 403,
    NotFound = 404,
    InternalServerError = 500,
}

interface CustomErrorConstructor {
    statusCode: HTTPStatusCode;
    message: string;
    internalMessage: InternalErrorMessage;
}

export class CustomError extends Error {
    readonly statusCode: HTTPStatusCode;
    readonly internalMessage: InternalErrorMessage;

    constructor(args: CustomErrorConstructor) {
        super(args.message);
        this.statusCode = args.statusCode;
        this.internalMessage = args.internalMessage;

        Object.setPrototypeOf(this, CustomError.prototype);
    }
}
