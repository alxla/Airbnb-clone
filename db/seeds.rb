# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Remise à zéro de la base existante

Message.delete_all
Request.delete_all
Product.delete_all
Universe.delete_all
Profile.delete_all
User.delete_all

# **********************Scenario 1************************:

# Creation de l'artiste

myartistuser = User.new(email:'toto@gmail.com')
myartistuser.password = 'test123'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'toto', country:'FR')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/toto_ng8jln.jpg"
myartist.save!

myuniverse = Universe.new(name:"toto universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/toto_ng8jln.jpg"
myuniverse.save!

myproduct = Product.new(name:'tshirt', description:'mon joli tshirt')
myproduct.universe = myuniverse
myproduct.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386297/tshirt_jifsyq.jpg"
myproduct.save!

# Creation du client

myclientuser = User.new(email:'carole@gmail.com')
myclientuser.password = 'password'
myclientuser.save!

myclient = Profile.new(profile_type:'client', name:'carole', country:'BE')
myclient.user = myclientuser
myclient.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386652/carole_uwrclm.jpg"
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

# **********************Scenarii ************************:

# visitor => sign in => client_profile

myclientuser = User.new(email:'eugene@gmail.com')
myclientuser.password = 'eugene93'
myclientuser.save!

myclient = Profile.new(profile_type:'client', name:'eugene', country:'IT')
myclient.user = myclientuser
myclient.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386727/eugene_i9u4l0.jpg"
myclient.save!
#####

myclientuser = User.new(email:'aurelie@hotmail.com')
myclientuser.password = 'aurelie59'
myclientuser.save!

myclient = Profile.new(profile_type:'client', name:'aurelie', country:'IT')
myclient.user = myclientuser
myclient.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386777/aurelie_id25yv.jpg"
myclient.save!
#####

myclientuser = User.new(email:'maxence@gmail.com')
myclientuser.password = 'maxence51'
myclientuser.save!

myclient = Profile.new(profile_type:'client', name:'maxence', country:'PT')
myclient.user = myclientuser
myclient.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386837/maxence_frkmmw.jpg"

myclient.save!

# visitor => log in => artist_profile

myartistuser = User.new(email:'kiki@gmail.com')
myartistuser.password = 'kiki007'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'kiki', country:'USA')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386892/teiki_dyvae3.jpg"
myartist.save!

myuniverse = Universe.new(name:"kiki universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386892/teiki_dyvae3.jpg"
myuniverse.save!

myproduct = Product.new(name:'bijou', description:'mon joli bijou')
myproduct.universe = myuniverse
myproduct.save!

##########

myartistuser = User.new(email:'Hugo@yahoo.com')
myartistuser.password = 'Tituscanadien'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'Hugo', country:'CAN')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488387001/hugo_nb8osg.png"
myartist.save!

myuniverse = Universe.new(name:"Hugo universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488387001/hugo_nb8osg.png"
myuniverse.save!

myproduct = Product.new(name:'Chien', description:'mon joli chien')
myproduct.universe = myuniverse
myproduct.save!
##########
myartistuser = User.new(email:'Captain@gmail.com')
myartistuser.password = 'Biere10litres'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'Captain', country:'FR')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/captain_noxq9o.png"
myartist.save!

myuniverse = Universe.new(name:"Captain universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/captain_noxq9o.png"
myuniverse.save!

myproduct = Product.new(name:'Bocs', description:'mon joli boc')
myproduct.universe = myuniverse
myproduct.save!
#########
myartistuser = User.new(email:'Ronald@caramail.fr')
myartistuser.password = 'Macdonald'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'Martin', country:'FR')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/macdonald_fduwyk.jpg"
myartist.save!

myuniverse = Universe.new(name:"Ronald universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/macdonald_fduwyk.jpg"
myuniverse.save!

myproduct = Product.new(name:'Burgers', description:'mon joli burger')
myproduct.universe = myuniverse
myproduct.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/burger_bou2wf.jpg"
myproduct.save!

#########
myartistuser = User.new(email:'Koons@gmail.com')
myartistuser.password = 'jefftespastoutseul'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'Koons', country:'MEX')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/jeffs_zxfvog.jpg"
myartist.save!

myuniverse = Universe.new(name:"Koons universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/jeffs_zxfvog.jpg"
myuniverse.save!

myproduct = Product.new(name:'Plug', description:'mon joli plug')
myproduct.universe = myuniverse
myproduct.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/plug_tgb6oz.jpg"
myproduct.save!
#########
myartistuser = User.new(email:'Niel@gmail.com')
myartistuser.password = '3615Ulla'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'Niel', country:'FR')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386299/niel_gx9fjz.jpg"
myartist.save!

myuniverse = Universe.new(name:"Niel universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/ulla2_stzrwb.jpg"
myuniverse.save!

myproduct = Product.new(name:'minitel', description:'mon joli minitel')
myproduct.universe = myuniverse
myproduct.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386299/minitel_fjqax0.png"
myproduct.save!
#########
myartistuser = User.new(email:'lolo@gmail.com')
myartistuser.password = 'BonnetG'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'lolo', country:'FR')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/lolo_rwi8jq.jpg"
myartist.save!

myuniverse = Universe.new(name:"lolo universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386297/index_b1ruzl.jpg"
myuniverse.save!

myproduct = Product.new(name:'Ferrari', description:'mon joli taco')
myproduct.universe = myuniverse
myproduct.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488387435/voiture_zokhst.jpg"
myproduct.save!
#########
myartistuser = User.new(email:'Trump@gmail.com')
myartistuser.password = 'nuclearsecretcode'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'Trump', country:'MEX')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/trump_bxt5bk.jpg"
myartist.save!

myuniverse = Universe.new(name:"Trump universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488387580/universe_ol4vdc.jpg"
myuniverse.save!

myproduct = Product.new(name:'Weapons', description:'mon joli jouet')
myproduct.universe = myuniverse
myproduct.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/weapon_k6utbp.jpg"
myproduct.save!
#########
myartistuser = User.new(email:'Fion@gmail.com')
myartistuser.password = 'AssembléeNationale2018'
myartistuser.save!

myartist = Profile.new(profile_type:'artist', name:'Fion', country:'FR')
myartist.user = myartistuser
myartist.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/fillon_csumfm.jpg"
myartist.save!

myuniverse = Universe.new(name:"Fion universe")
myuniverse.profile = myartist
myuniverse.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488386298/magicien_vj9n8l.jpg"
myuniverse.save!

myproduct = Product.new(name:'Magicien', description:'mon bel emploi')
myproduct.universe = myuniverse
myproduct.remote_picture_url = "http://res.cloudinary.com/alxla/image/upload/v1488387661/dollar_thd7xc.jpg"
myproduct.save!
#########

# Creation d'1 requete

#Status : 0 = pending, 1 = agreed

myrequest1 = Request.new(status:0)
myrequest1.profile_client = myclient
myrequest1.profile_artist = myartist
myrequest1.product = myproduct
myrequest1.save!

#####
myrequest2 = Request.new(status:0)
myrequest2.profile_client = myclient
myrequest2.profile_artist = myartist
myrequest2.product = myproduct
myrequest2.save!

#####
myrequest3 = Request.new(status:0)
myrequest3.profile_client = myclient
myrequest3.profile_artist = myartist
myrequest3.product = myproduct
myrequest3.save!

#####
myrequest3 = Request.new(status:1)
myrequest3.profile_client = myclient
myrequest3.profile_artist = myartist
myrequest3.product = myproduct
myrequest3.save!
#####
myrequest4 = Request.new(status:1)
myrequest4.profile_client = myclient
myrequest4.profile_artist = myartist
myrequest4.product = myproduct
myrequest4.save!


# Creation d'1 message

mymessage1 = Message.new(thread_number:1, title:'Prise de contact', body:'Bonjour, j aime votre travail')
mymessage1.request = myrequest1
mymessage1.profile = myclient
mymessage1.save!

######
mymessage2 = Message.new(thread_number:2, title:'Demande de visite', body:'Bonjour, peut on visiter votre atelier ?')
mymessage2.request = myrequest2
mymessage2.profile = myclient
mymessage2.save!
######
mymessage3 = Message.new(thread_number:3, title:'Après vente', body:'Bonjour, j ai un probleme avec le produit que je vous ai acheté')
mymessage3.request = myrequest3
mymessage3.profile = myclient
mymessage3.save!

# Creation d'1 message de réponse

mymessage4 = Message.new(thread_number:1, title:'RE: Prise de contact', body:'Bonjour, merci je travaille dur')
mymessage4.request = myrequest1
mymessage4.profile = myartist
mymessage4.save!

#######
mymessage5 = Message.new(thread_number:2, title:'RE: Prise de contact', body:'Bonjour, oui c est possible samedi à 15.00')
mymessage5.request = myrequest2
mymessage5.profile = myartist
mymessage5.save!
#######
mymessage6 = Message.new(thread_number:3, title:'RE: Après vente', body:'Tant pis pour vous, fallait pas l acheter !')
mymessage6.request = myrequest3
mymessage6.profile = myartist
mymessage6.save!
########

################################################################################

# user => profile => edit

#      => message => answer

#
# user => homepage => 1) several universes random => artist profile => product => request => message => answer
#                                                                              => requests => messages => answers
#                                                 => artist profile => products => requests => messages => answers
#                                                 => artist profile => request => message => answer
#                                                 => product => request => message => answer
#                                                 => message => answer                                                                => product => request => message => answer
#                  => 2) filter(s) => artist => see 1)
#                                  => products => see 1)
#

# add_foreign_key "messages", "profiles"
# add_foreign_key "messages", "requests"
# add_foreign_key "products", "universes"
# add_foreign_key "profiles", "users"
# add_foreign_key "requests", "products"
# add_foreign_key "requests", "profiles"
# add_foreign_key "requests", "profiles", column: "profile_artist_id"
# add_foreign_key "universes", "profiles"
