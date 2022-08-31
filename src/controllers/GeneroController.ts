import { Request, Response } from "express";

import { prismaClient } from "../database/prismaClient";
import { Genero } from "@prisma/client";

export default class GeneroController {
    
  static async create(req: Request, res: Response) {
    const { nome, sigla }: Genero = req.body;

    if(!nome || !sigla) return res.status(400).json({ message: "Existem campos obrigatórios que não foram preenchidos"})

    try{
      const newGenero = await prismaClient.genero.create({
      data: {
        nome,
        sigla
      },
     
    });
      return res.status(201).json({message: "Genero cadastrado com sucesso", newGenero})
    }catch(error){
      console.error(error);

      res.status(400).json({ message: "Não foi possível cadastrar o genêro "});
    }
    

  
  }
}
