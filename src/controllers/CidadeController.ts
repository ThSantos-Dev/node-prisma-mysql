import { Request, Response } from "express";
import { Cidade } from "@prisma/client";
import { prismaClient } from "../database/prismaClient";

export default class CidadeController {
  // Criar cidade
  static async create(req: Request, res: Response) {
    // Resgatando os dados do Body
    const { nome, idEstado }: Cidade = req.body;

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
  }
}
