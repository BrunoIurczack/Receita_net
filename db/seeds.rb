Recipe.create!([
    {
        name: "Frango com Batata",
        stuff: "Frango, batata, tempeo e etc",
        calories: 130,
        kind: "Carnes",
        prepare_mode: "Pega la faz la termina aqui",
        portion: "5",
        duration: "2021-04-15 00:30:40",
        cost: 55.00,
        poster: "comida02.jpg",
    },
    {
        name: "Carne ao molho",
        stuff: "Carne, molho e etc",
        calories: 200,
        kind: "Carnes",
        prepare_mode: "Pega la faz la termina aqui",
        portion: "3",
        duration: "2021-04-15 00:30:40",
        cost: 40.00,
        poster: "comida02.jpg",
    },
    {
        name: "Massa ao sugo",
        stuff: "Massa, suco e etc",
        calories: 123,
        kind: "Massa",
        prepare_mode: "Pega la faz la termina aqui",
        portion: "2",
        duration: "2021-04-15 00:30:40",
        cost: 32.00,
        poster: "comida02.jpg",
    },
    {
        name: "Salada verde",
        stuff: "Salada, e etc",
        calories: 90,
        kind: "Salada",
        prepare_mode: "Pega la faz la termina aqui",
        portion: "2",
        duration: "2021-04-15 00:30:40",
        cost: 29.70,
        poster: "comida02.jpg",
    }
])

receita = Recipe.find_by(name: 'Estrogonofe de carne')
receita.comments.create!(name: "Paulo Xavier", rating: 5, comment: "Delicioso")
receita.comments.create!(name: "Joana Santana", rating: 4, comment: "Muito bom.")
receita.comments.create!(name: "Augusto Barros", rating: 4, comment: "Gostoso")

receita = Recipe.find_by(name: 'Salmão ao forno')
receita.comments.create!(name: "Marta Freitas", rating: 5, comment: "O melhor que já comi.")