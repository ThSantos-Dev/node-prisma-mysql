// Importando o Express
// const express = require('express')
import express from "express";
import cors from "cors";

// Iniciando o app
const app = express();

// Configurando a API
app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));

// Configurando as rotas
import UsuarioRoutes from "./routes/UsuarioRoutes";
import EstadoRoutes from "./routes/EstadoRoutes";
import CidadeRoutes from "./routes/CidadeRoutes";
import GeneroRoutes from "./routes/GeneroRoutes";

app.use("/api/usuario", UsuarioRoutes);
app.use("/api/estado", EstadoRoutes);
app.use("/api/cidade", CidadeRoutes);
app.use("/api/genero", GeneroRoutes);

//Inicializando servidor
app.listen(8080, () => {
  console.log("Server running");
});
