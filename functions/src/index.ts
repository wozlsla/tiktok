import * as admin from "firebase-admin";
import { onDocumentCreated } from "firebase-functions/v2/firestore";


admin.initializeApp();

// export const onVideoCreated = functions.firestore.document("videos/{videoId}").onCreate(async (snapshot, context) => {
//     await snapshot.ref.update({"hello":"from functions"});
// });

export const onVideoCreated = onDocumentCreated(
    {
        document: "videos/{videoId}", 
        region: "asia-northeast3",
    }, 
    async (event) => {
    const snapshot = event.data;
    if (!snapshot) return;

    await snapshot.ref.update({"hello":"from functions"});
});
