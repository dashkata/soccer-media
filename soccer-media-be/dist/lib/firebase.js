"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const firebase_admin_1 = __importDefault(require("firebase-admin"));
const fbServiceAccountKey_json_1 = __importDefault(require("../config/fbServiceAccountKey.json"));
const auth_1 = require("firebase-admin/auth");
const firebaseApp = firebase_admin_1.default.initializeApp({
    credential: firebase_admin_1.default.credential.cert({
        clientEmail: fbServiceAccountKey_json_1.default.client_email,
        privateKey: fbServiceAccountKey_json_1.default.private_key,
        projectId: fbServiceAccountKey_json_1.default.project_id,
    }),
});
const firebaseAuth = (0, auth_1.getAuth)(firebaseApp);
exports.default = firebaseAuth;
