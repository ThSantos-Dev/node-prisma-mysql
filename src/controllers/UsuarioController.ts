// Importando interfaces de Request e Response
import { Request, Response } from "express";

// Importando instancia do Prisma Client
import { prismaClient } from "../database/prismaClient";
import { Usuario } from "@prisma/client";

// Criando classe de Usuário
export default class UsuarioController {
  // Método que cria um usuário
  static async create(req: Request, res: Response) {
    // Resgatando dados do Body
    const {
      nome,
      email,
      data_nascimento,
      biografia,
      senha,
      idCidade,
      idGenero,
    }: Usuario = req.body;

    // Criando o usuário
    const newUser = await prismaClient.usuario.create({
      data: {
        nome,
        email,
        data_nascimento: new Date(data_nascimento),
        biografia,
        senha,
        idCidade,
        idGenero,
      },
    });

    // Encaminhando resposta
    res.status(201).json({
      message: "Usário cadastrado com sucesso!",
      newUser,
    });
  }
}
