# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Remise à zéro de la base existante

User.delete_all
Profile.delete_all
Universe.delete_all
Product.delete_all
Request.delete_all
Message.delete_all

# Creation de l'artiste

myartistuser = User.new(email:'toto@gmail.com')
myartistuser.password = 'test123'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'toto', country:'FR')
myartist.user = myartistuser
myartist.save!

myuniverse = Universe.new(name:"toto universe")
myuniverse.profile = myartist
myuniverse.save!

myproduct = Product.new(name:'tshirt')
myproduct.universe = myuniverse
myproduct.save!

# Creation du client

myclientuser = User.new(email:'carole@gmail.com')
myclientuser.password = 'password'
myclientuser.save!

myclient = Profile.new(profile_type:'client', name:'carole', country:'BE')
myclient.user = myclientuser
myclient.save!

# Creation de la requete

myrequest = Request.new(status:'pending')
myrequest.profile_client = myclient
myrequest.profile_artist = myartist
myrequest.product = myproduct
myrequest.save!

# Creation d'un message

mymessage1 = Message.new(thread_number:1, title:'Prise de contact', body:'Bonjour, j aime votre travail')
mymessage1.request = myrequest
mymessage1.profile = myclient
mymessage1.save!


# Creation d'un message de réponse

mymessage2 = Message.new(thread_number:1, title:'RE: Prise de contact', body:'Bonjour, merci je travaille dur')
mymessage2.request = myrequest
mymessage2.profile = myartist
mymessage2.save!
