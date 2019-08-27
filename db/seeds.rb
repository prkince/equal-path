puts 'Cleaning database...'
User.destroy_all
Formation.destroy_all
Job.destroy_all

puts 'Creating 3 Users...'

jean_michel = User.new(
  first_name: 'Jean',
  last_name: 'Michel',
  age: 23,
  email: "jean@michel.com",
  password: "password",
  profile_picture: "https://res.cloudinary.com/dovu27lye/image/upload/v1566833617/jean-michel_odtwjo.jpg"
)

jean_michel.remote_profile_picture_url = "https://res.cloudinary.com/dovu27lye/image/upload/v1566833617/jean-michel_odtwjo.jpg"
jean_michel.save!

francoise_marie = User.new(
  first_name: 'Francoise',
  last_name: 'Marie',
  age: 25,
  email: "francoise@marie.com",
  password: "password"
  # profile_picture: "https://res.cloudinary.com/dovu27lye/image/upload/v1566833865/francoise_marie_dz0pf9.jpg"
)

# francoise_marie.remote_profile_picture_url = "https://res.cloudinary.com/dovu27lye/image/upload/v1566833865/francoise_marie_dz0pf9.jpg"
francoise_marie.save!

jacques_martin = User.new(
  first_name: 'Jacques',
  last_name: 'Martin',
  age: 22,
  email: "jacques@martin.com",
  password: "password"
  # profile_picture: "https://res.cloudinary.com/dovu27lye/image/upload/v1566834082/jacques_martin_bpy4sv.jpg"
)

# jacques_martin.remote_profile_picture_url = "https://res.cloudinary.com/dovu27lye/image/upload/v1566834082/jacques_martin_bpy4sv.jpg"
jacques_martin.save!

puts "Creating 3 jobs..."

developer = Job.new(
  title: "Développeur/euse informatique",
  short_description: "Expert des langages informatiques, le développeur informatique traduit
    la demande d'un client en lignes de code informatique.",
  long_description: "Le développeur informatique est le pro des langages informatiques,
    tels que Ruby ou JavaScript ! Responsable de la programmation,
    c'est-à-dire de la production de lignes de code, il rédige et suit un cahier des charges
    précisant les spécificités techniques à suivre pour créer le programme.
    Afin de concevoir des programmes informatiques « sur mesure », il participe en
    amont à l'analyse des besoins des utilisateurs, puis à la phase d'essai. En aval,
    il adapte le logiciel à la demande du client en apportant les retouches nécessaires.
    Le dévelop-peur prend en charge la formation des utilisateurs de l'application
    et peut même rédiger un guide d'utilisateur. Par la suite, il intervient pour effectuer
    la maintenance ou faire évoluer les programmes.",
  # job_photo: "https://res.cloudinary.com/dovu27lye/image/upload/v1566836640/developer_lgdkpz.jpg",
  field: "IT",
)

# developer.remote_job_photo_url = "https://res.cloudinary.com/dovu27lye/image/upload/v1566836640/developer_lgdkpz.jpg"
developer.save!

responsable_micro = Job.new(
  title: "Responsable micro",
  short_description: "Le gestionnaire de parc micro-informatique est chargé d'organiser,
    d'installer, de remplacer et de transformer l'ensemble du parc informatique d'une entreprise. ",
  long_description: "Le gestionnaire de parc informatique est chargé de l'inventaire
  et de l'évolution du matériel informatique au sein d'une d'une entreprise
  (ou d'une administration). À ce titre, il est responsable de l'achat
  de nouveaux équipements (ordinateurs, imprimantes, logiciels...),
  en assure l'installation et le paramétrage. Une fois le matériel installé,
  il aide les salariés à gérer leur poste informatique, en mettant en place une
  assistance technique (une hotline, par exemple). Dans les grandes entreprises,
  où les systèmes d'information sont très développés et qui peuvent avoir des
  filiales en France ou à l'étranger, ce sont des ingénieurs qui sont recherchés,
  capables d'une forte réactivité en cas de problème, mobiles et disponibles.
  Des qualités relationnelles sont également requises, ainsi que le sens de
  l'écoute et de la pédagogie.",
  # job_photo: "https://res.cloudinary.com/dovu27lye/image/upload/v1566836640/developer_lgdkpz.jpg",
  field: "IT",
)

# developer.remote_job_photo_url = "https://res.cloudinary.com/dovu27lye/image/upload/v1566836640/developer_lgdkpz.jpg"
developer.save!

puts 'Your database has been updated successfully!'
