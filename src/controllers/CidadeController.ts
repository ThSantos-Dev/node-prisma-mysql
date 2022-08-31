import { Request, Response } from "express";

import { Cidade } from "@prisma/client";
import { prismaClient } from "../database/prismaClient";
import { PrismaClientUnknownRequestError } from "@prisma/client/runtime";

export default class CidadeController {
  // Criar cidade
  static async create(req: Request, res: Response) {
    // Resgatando os dados do Body
    const { nome, idEstado }: Cidade = req.body;

    if (!nome)
      return res.status(400).json({ message: "O nome é obrigatório!" });
      
    if (!idEstado)
      return res.status(400).json({ message: "O id do Estado é obrigatório!" });

    try {
      const newCidade = await prismaClient.cidade.create({
        data: {
          nome,

          estado: {
            connect: { id: idEstado },
          },
        },
      });

      res
        .status(201)
        .json({ message: "Cidade cadastrada com sucesso!", newCidade });
    } catch (error: any) {
      console.error(error);

      res.status(400).json({ message: "Não foi possível cadastrar a cidade!" });
    }
  }
}
