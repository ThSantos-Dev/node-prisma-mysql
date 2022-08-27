// Importando o Prisma Client
const { PrismaClient } = require('@prisma/client');

// Instanciando o Prisma Client
const prisma = new PrismaClient()

// Criando uma função que realiza consulta de usuários
const main = async () => {
    // Todos os usuários cadastrados
    const usuarios = await prisma.usuario.findMany()

    // Exibindo os usuários cadastrados
    return console.log(usuarios)
}

// Chamando a funçao
main().then(async () => {
    // Fechando a conexão com o banco
    await prisma.$disconnect()
}).catch(async (e) => {
    // Exibindo o erro
    console.error(e)

    // Desconectando do banco
    await prisma.$disconnect()

    // Encerrando a aplicação
    process.exit(1)
})

// Inserindo no banco de dados
const insertUsuario = async () => {

    // Inserindo um usuário no banco
    const usuario = await prisma.usuario.create({

        data: {
            nome: "Maria",
            email: "maria@gmail.com",
            senha: "123",
            biografia: "Me chamo Maria",
            data_nascimento: new Date("2000-08-01"),
            cidade: {
                connect: { id: 1 }
            },
            genero: {
                connect: { id: 3 }
            }
        }

    })

    console.log(usuario)
}

// Inserindo um gênero
const insertGenero = async () => {
    // Gravando varios registros de uma vez
    const generos = await prisma.genero.createMany({
        // Dados a serem inseridos
        data: [
            { nome: "Masculino", sigla: "M" },
            { nome: "Masculino", sigla: "M" },
            { nome: "Feminino", sigla: "F" },
            { nome: "Outro", sigla: "O" }
        ],
        skipDuplicates: true // Ignora registros 


    })

    // Exibindo os generos inseridos
    console.log(generos)
}

//Inserindo o Estado
const insertEstado = async () => {
    // Inserindo vários registros no Banco
    const estado = await prisma.estado.createMany({
        data: [
            { nome: "São Paulo", sigla: "SP" },
            { nome: "Rio de Janeiro", sigla: "RJ" },
            { nome: "Belo Horizonte", sigla: "BH" },
            { nome: "Recife", sigla: "RE" }
        ],
        skipDuplicates: true
    })

    console.log(estado)
}

const insertCidade = async () => {
    // Inserindo várias cidades
    const cidades = await prisma.cidade.create({
        data: {
            nome: "Brás", estado: {
                connect: { id: 1 }
            }
        }

    })

    console.log(cidades)
}

insertUsuario().then(async () => {
    // Fechando a conexão com o banco
    await prisma.$disconnect()
}).catch(async (e) => {
    // Exibindo o erro
    console.error(e)

    // Fechando a conexão com o banco
    await prisma.$disconnect()

    // Encerrando o app
    process.exit(1)
})




