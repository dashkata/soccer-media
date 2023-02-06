import { Router } from "express";
import { usersController } from "../controllers/users";

const router = Router();

router.post("/", usersController.createUser);
router.get("/", usersController.getUser);
router.delete("/", usersController.deleteUser);

export const userRoute = router;