import { Router } from "express";
import { postsController } from "../controllers/posts";

const router = Router();

router.post("/", postsController.createUserPost);

export const postRoute = router;