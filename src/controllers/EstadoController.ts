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

    if (!nome)
      return res.status(400).json({ message: "O nome é obrigatório!" });

    if (!sigla)
      return res.status(400).json({ message: "A sigla é obrigatória!" });

    try {
      const newEstado = await prismaClient.estado.create({
        data: {
          nome,
          sigla,
        },
      });

      return res
        .status(201)
        .json({ message: "Estado cadastrado com sucesso", newEstado });
        
    } catch (error) {
      console.error(error)
      res.status(400).json({ message: "Não foi possível cadastrar o Estado" });
    }
  }
}
