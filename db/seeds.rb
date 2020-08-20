# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

already_seeded = Role.count.positive?

unless already_seeded
  # Criação das roles
  artista = Role.create(name: "artista")
  usuario = Role.create(name: "usuario")

  # Criação de usuários
  User.create(
    name: 'artista',
    email: 'artista@artista.com',
    password: '123456',
    role: artista
  )

  User.create(
    name: 'usuario',
    email: 'usuario@usuario.com',
    password: '123456',
    role: usuario
  )

  # Criação gêneros
  Genre.create({name: "Rock 'n Roll"})
  Genre.create({name: 'Samba/Pagode'})
  Genre.create({name: 'Hip-Hop/Rap'})
  Genre.create({name: 'Clássica'})
  Genre.create({name: 'Pop'})
end