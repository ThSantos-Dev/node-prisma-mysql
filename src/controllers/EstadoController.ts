//importe da interface de req e res
import { Request, Response } from "express";

//importando a estancia do prisma
import { prismaClient } from "../database/prismaClient";
import { Estado } from "@prisma/client";

export default class EstadoController {
  // Método que cria um usuário
  static async create(req: Request, res: Response) {
    //pega os dados do body
    const { nome, sigla }: Estado = req.body;

    const newEstado = await prismaClient.estado.create({
      data: {
        nome,
        sigla,
      },
    });

    res.status(201).json({message: "Estado criado com sucesso!",
    newEstado
    });
  }

}

