// Import do Router
import { Router } from "express";

// Importando a controller de usuário
import UsuarioController from "../controllers/UsuarioController";

// Instanciando o router
const router = Router();

// Endpoints
router.post("/", UsuarioController.create);

export default router;
