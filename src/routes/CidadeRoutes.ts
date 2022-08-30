import { Router } from "express";

import CidadeController from  "../controllers/CidadeController" ;

const router = Router()

router.post("/", CidadeController.create)

export default router
