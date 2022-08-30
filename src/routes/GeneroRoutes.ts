// Importando o Router do express
import { Router } from 'express';

// Importando a controller
import GeneroController from '../controllers/GeneroController';

// Instaciando o Router
const router =  Router()

// Definindo as rotas
router.post("/", GeneroController.create)

export default router

