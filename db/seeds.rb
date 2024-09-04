# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Comment.destroy_all
Post.destroy_all
#User.create(email:,first_name:,last_name:)
User.create!(email: "juan.perez@example.com", first_name: "Juan", last_name: "Pérez")
User.create!(email: "maria.gonzalez@example.com", first_name: "María", last_name: "González")
User.create!(email: "carlos.rodriguez@example.com", first_name: "Carlos", last_name: "Rodríguez")
User.create!(email: "ana.martinez@example.com", first_name: "Ana", last_name: "Martínez")
User.create!(email: "luis.fernandez@example.com", first_name: "Luis", last_name: "Fernández")
User.create!(email: "laura.sanchez@example.com", first_name: "Laura", last_name: "Sánchez")
User.create!(email: "pedro.lopez@example.com", first_name: "Pedro", last_name: "López")
User.create!(email: "sofia.ramirez@example.com", first_name: "Sofía", last_name: "Ramírez")
User.create!(email: "diego.torres@example.com", first_name: "Diego", last_name: "Torres")
User.create!(email: "elena.morales@example.com", first_name: "Elena", last_name: "Morales")

#Post.create!(title:,content:,author:,published:)
post1 = Post.create!(title: "Reflexiones sobre la tecnología moderna", content: "En la era digital actual, la tecnología ha transformado nuestras vidas de maneras inimaginables. Desde la comunicación instantánea hasta el acceso a información ilimitada, vivimos en un mundo interconectado. Sin embargo, también debemos ser conscientes de los desafíos que esto conlleva, como la privacidad y la dependencia tecnológica.", author: "juan.perez@example.com", published: 1)
post2 = Post.create!(title: "La importancia de la educación", content: "La educación es la base del progreso en cualquier sociedad. Nos permite adquirir conocimientos, desarrollar habilidades y formar valores. En un mundo en constante cambio, la educación nos prepara para enfrentar los desafíos del futuro y nos brinda las herramientas necesarias para alcanzar nuestras metas personales y profesionales.", author: "maria.gonzalez@example.com", published: 1)
post3 = Post.create!(title: "El impacto del cambio climático", content: "El cambio climático es uno de los mayores desafíos de nuestro tiempo. Sus efectos se sienten en todo el mundo, desde el aumento de las temperaturas hasta los fenómenos meteorológicos extremos. Es crucial que tomemos medidas para mitigar su impacto y proteger nuestro planeta para las generaciones futuras.", author: "carlos.rodriguez@example.com", published: 0)
post4 = Post.create!(title: "Beneficios de una alimentación saludable", content: "Una alimentación saludable es esencial para mantener un buen estado de salud y prevenir enfermedades. Incluir una variedad de alimentos nutritivos en nuestra dieta diaria nos proporciona la energía y los nutrientes necesarios para funcionar de manera óptima. Además, una buena alimentación puede mejorar nuestro bienestar general y nuestra calidad de vida.", author: "ana.martinez@example.com", published: 1)
post5 = Post.create!(title: "La evolución de la inteligencia artificial", content: "La inteligencia artificial (IA) ha avanzado a pasos agigantados en las últimas décadas. Desde los asistentes virtuales hasta los vehículos autónomos, la IA está cambiando la forma en que interactuamos con la tecnología. Aunque presenta grandes oportunidades, también plantea importantes cuestiones éticas y de seguridad que debemos abordar.", author: "luis.fernandez@example.com", published: 0)
post6 = Post.create!(title: "El poder de la música en nuestras vidas", content: "La música tiene un impacto profundo en nuestras emociones y puede influir en nuestro estado de ánimo. Desde tiempos antiguos, ha sido una forma de expresión y comunicación. Escuchar música puede reducir el estrés, mejorar el ánimo y incluso potenciar la creatividad. Es una herramienta poderosa para el bienestar emocional.", author: "laura.sanchez@example.com", published: 1)
post7 = Post.create!(title: "Viajar: una experiencia enriquecedora", content: "Viajar nos permite conocer nuevas culturas, ampliar nuestros horizontes y aprender sobre el mundo que nos rodea. Cada destino ofrece una experiencia única y nos brinda la oportunidad de crecer personalmente. Ya sea explorando ciudades históricas o disfrutando de la naturaleza, viajar enriquece nuestras vidas de muchas maneras.", author: "pedro.lopez@example.com", published: 1)
post8 = Post.create!(title: "La importancia del ejercicio físico", content: "El ejercicio físico regular es fundamental para mantener una buena salud. Nos ayuda a mantenernos en forma, mejorar nuestra resistencia y fortalecer nuestros músculos. Además, el ejercicio tiene beneficios para la salud mental, como la reducción del estrés y la mejora del estado de ánimo. Incorporar actividad física en nuestra rutina diaria es clave para un estilo de vida saludable.", author: "sofia.ramirez@example.com", published: 0)
post9 = Post.create!(title: "Innovaciones en la medicina moderna", content: "La medicina moderna ha avanzado significativamente, ofreciendo nuevas soluciones y tratamientos para diversas enfermedades. Desde la biotecnología hasta la telemedicina, las innovaciones médicas están mejorando la calidad de vida de las personas. Estos avances nos permiten abordar problemas de salud de manera más efectiva y personalizada.", author: "diego.torres@example.com", published: 1)
post10 = Post.create!(title: "El futuro del trabajo en la era digital", content: "La digitalización está transformando el mundo laboral. Las nuevas tecnologías están cambiando la forma en que trabajamos, desde el teletrabajo hasta la automatización de tareas. Es importante adaptarse a estos cambios y adquirir nuevas habilidades para mantenerse relevante en el mercado laboral. El futuro del trabajo será dinámico y lleno de oportunidades.", author: "elena.morales@example.com", published: 0)

#Comment.create!(content:, author: )
Comment.create!(content: "Este es un comentario de prueba de Juan.", author: "juan.perez@example.com", post: post1)
Comment.create!(content: "María está probando el sistema de comentarios.", author: "maria.gonzalez@example.com", post: post2)
Comment.create!(content: "Carlos ha dejado un comentario interesante.", author: "carlos.rodriguez@example.com", post: post3)
Comment.create!(content: "Ana está participando en la discusión.", author: "ana.martinez@example.com", post: post10)
Comment.create!(content: "Luis ha añadido su opinión.", author: "luis.fernandez@example.com", post: post4)
Comment.create!(content: "Laura comparte sus pensamientos.", author: "laura.sanchez@example.com", post: post5)
Comment.create!(content: "Pedro ha comentado sobre el tema.", author: "pedro.lopez@example.com", post: post6)
Comment.create!(content: "Sofía está contribuyendo con su comentario.", author: "sofia.ramirez@example.com", post: post7)
Comment.create!(content: "Diego ha dejado su punto de vista.", author: "diego.torres@example.com", post: post8)
Comment.create!(content: "Elena ha añadido un comentario final.", author: "elena.morales@example.com", post: post9)
