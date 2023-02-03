import admin from "firebase-admin";
import serviceAcccount from '../config/fbServiceAccountKey.json';
import { getAuth } from "firebase-admin/auth";

const firebaseApp = admin.initializeApp({
    credential: admin.credential.cert({
        clientEmail: serviceAcccount.client_email,
        privateKey: serviceAcccount.private_key,
        projectId: serviceAcccount.project_id,
    }),
});

const firebaseAuth = getAuth(firebaseApp);

export default firebaseAuth;