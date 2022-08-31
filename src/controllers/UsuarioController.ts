// Importando interfaces de Request e Response
import { Request, Response } from "express";

// Importando o bcrypt
import bcrypt from "bcrypt";

// Import jwt
import jwt from "jsonwebtoken";

// Importando instancia do Prisma Client
import { Usuario } from "@prisma/client";
import { prismaClient } from "../database/prismaClient";

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

    if (!nome)
      return res.status(400).json({ message: "O nome é obrigatório!" });

    if (!email)
      return res.status(400).json({ message: "O e-mail é obrigatório!" });

    if (!data_nascimento)
      return res
        .status(400)
        .json({ message: "A data de nascimento é obrigatória!" });

    if (!senha)
      return res.status(400).json({ message: "A senha é obrigatória!" });

    if (!idCidade)
      return res.status(400).json({ message: "O id da cidade é obrigatório!" });

    if (!idGenero)
      return res.status(400).json({ message: "O id do gênero é obrigatório!" });

    try {
      // Encriptografando a senha do usuário
      const salt = await bcrypt.genSalt(5);
      const senhaHash = await bcrypt.hash(senha, salt);

      // Criando o usuário
      const newUsuario: Usuario = await prismaClient.usuario.create({
        data: {
          nome,
          email,
          data_nascimento: new Date(data_nascimento),
          biografia,
          senha: senhaHash,
          idCidade,
          idGenero,
        },
      });

      // Gerando o token de autenticação
      const token = jwt.sign(
        { _id: newUsuario.id, nome: newUsuario.nome },
        "nosso_segredo",
        {
          algorithm: "HS256",
          expiresIn: Math.floor(Date.now() / 1000) + 60 * 60,
        }
      );

      // Encaminhando resposta
      res.status(201).json({
        message: "Usário cadastrado com sucesso!",
        token,
      });
    } catch (error) {
      console.error(error);

      res.status(400).json({ message: "Não foi possível cadastrar o usuário" });
    }
  }

  // Método de login
  static async login(req: Request, res: Response) {
    // Resgatando os dados do body
    const { email, senha } = req.body;

    if (!email)
      return res.status(400).json({ message: "O e-mail é obrigatório!" });
    if (!senha)
      return res.status(400).json({ message: "A senha é obrigatória!" });

    // Buscando o usuário pelo e-mail
    const usuario: Usuario | null = await prismaClient.usuario.findFirst({
      where: {
        email,
      },
    });

    if (!usuario)
      return res.status(400).json({ message: "Usuário não encontrado!" });

    const senhasIguais = await bcrypt.compare(senha, usuario.senha);

    if (!senhasIguais)
      return res.status(400).json({ message: "As senhas não são iguais!" });

    // Gerando o token de autenticação
    const token = jwt.sign(
      { _id: usuario.id, nome: usuario.nome },
      "nosso_segredo",
      {
        algorithm: "HS256",
        expiresIn: Math.floor(Date.now() / 1000) + 60 * 60,
      }
    );

    res.status(201).json({
      message: "Usário logado com sucesso!",
      token,
    });
  }

  // Atualizando o usuário
  static async update(req: Request, res: Response) {
    // Resgatando dados do body
    const {
      nome,
      email,
      data_nascimento,
      biografia,
      senha,
      idCidade,
      idGenero,
    }: Usuario = req.body;

    // Resgatando o id do usuario a ser atualizado
    const { id } = req.params;

    // Resgatando o token
    const token = req.headers.authorization!.split(" ")[1];
    const tokenValido: any = jwt.verify(token, "nosso_segredo");

    console.log(id, tokenValido._id)

    // Atualizando o usuário
    if (tokenValido._id != id)
      return res
        .status(401)
        .json({ message: "Você não fazer isso seu safado!" });

    res.send("Atualizado com sucesso!")
  }
}
