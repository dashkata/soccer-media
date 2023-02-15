import { Router } from "express";
import { postsController } from "../controllers/posts";

const router = Router();

router.post("/", postsController.createUserPost);
router.patch("/like", postsController.likeUserPost);
router.post("/comment", postsController.commentPost);
router.get("/all", postsController.getAllPosts);
router.delete("/", postsController.deleteUserPost);

export const postRoute = router;