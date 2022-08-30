import { Request, Response } from "express";

import { prismaClient } from "../database/prismaClient";
import { Genero } from "@prisma/client";

export default class GeneroController {
    
  static async create(req: Request, res: Response) {
    const { nome, sigla }: Genero = req.body;

    const newGenero = await prismaClient.genero.create({
      data: {
        nome,
        sigla,
      },
    });

    res.status(201).json({message: "Genero criado", newGenero});
  }
}
