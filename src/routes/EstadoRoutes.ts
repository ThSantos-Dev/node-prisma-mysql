import { Router } from "express";

import EstadoController from "../controllers/EstadoController";

const router = Router();

router.get("/", (req, res) => {
    res.send("TUDO CERTO")
})
router.post("/", EstadoController.create)

export default router