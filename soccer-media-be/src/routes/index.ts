import { Router } from "express";
import { userRoute } from "./users";
import { postRoute } from "./posts";
const router = Router();
router.use("/users", userRoute);
router.use("/posts", postRoute);

export default router;