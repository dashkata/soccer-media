import { Router } from "express";
import { postsController } from "../controllers/posts";

const router = Router();

router.post("/", postsController.createUserPost);
router.get("/all", postsController.getAllPosts);
router.delete("/", postsController.deleteUserPost);

export const postRoute = router;