import * as admin from "firebase-admin";
import { getStorage } from "firebase-admin/storage";
import { onDocumentCreated } from "firebase-functions/v2/firestore";
// const { spawn } = require("child-process-promise");

admin.initializeApp();

export const onVideoCreated = onDocumentCreated(
  {
    document: "videos/{videoId}",
    region: "asia-northeast3",
  },
  async (event) => {
    const snapshot = event.data;
    if (!snapshot) return;

    const video = snapshot.data();

    const spawn = require("child-process-promise").spawn;

    const tempPath = `/tmp/${snapshot.id}.jpg`;
    try {
      // FFmpeg를 사용하여 썸네일 생성
      await spawn("ffmpeg", [
        "-i",
        video.fileUrl,
        "-ss",
        "00:00:01.000",
        "-vframes",
        "1",
        "-vf",
        "scale=150:-1",
        tempPath,
      ]);

      console.log(`Thumbnail created at ${tempPath}`);

      // Firebase Storage에 업로드
      const storage = getStorage().bucket();
      await storage.upload(tempPath, {
        destination: `thumbnails/${snapshot.id}.jpg`,
        metadata: {
          contentType: "image/jpg",
        },
      });
    } catch (error) {
      console.error("Error processing video:", error);
    }
  }
);

// firebase functions:log
