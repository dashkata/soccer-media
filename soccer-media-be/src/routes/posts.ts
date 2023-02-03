import { Router } from "express";
import { postsController } from "../controllers/posts";

const router = Router();

router.post("/posts", postsController.createUserPost); 
