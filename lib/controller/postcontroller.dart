import 'package:intagram_clone/model/postmodel.dart';

class PostController {
  List<PostModel> showPost() {
    return [
      PostModel(
        'https://www.itcadre.com/assets/JimH_Headshot.jpg',
        user_name: 'JimH_H120',
        post_description: 'Tokyo is the most popular',
        post_image:
            'https://c0.wallpaperflare.com/preview/900/707/759/shinjuku-japan-night-tokyo.jpg',
      ),
      PostModel(
        'https://www.itcadre.com/assets/Rick_Headshot.jpg',
        user_name: 'Rickkk0',
        post_description:
            'Cristiano Ronaldo será el mejor pagado de la historia, deja el United en enero',
        post_image:
            'https://www.elnacional.cat/uploads/s1/37/21/98/03/cristiano-ronaldo-portugal-espana-efe.jpeg',
      ),
      PostModel(
        'https://www.itcadre.com/assets/Maria_Headshot2.jpg',
        user_name: 'Maria_34',
        post_description:
            'A Holanda, também conhecida como Países Baixos (The Netherlands em inglês), é um país europeu pequeno, possui um pouco mais de 17 milhões de habitantes',
        post_image:
            'https://tanomundo.com/wp-content/uploads/2022/07/tudo-sobre-holanda-scaled.jpg.webp',
      ),
      PostModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkGOg0Hx5p33QwokRbvD7-8WMVrtBFHCrZxwzqH-GOZJ5BcYbqprsEpx0ww40Yg8YB5hQ&usqp=CAU',
        user_name: 'Mmarcos',
        post_description:
            'A aurora boreal é um fenômeno atmosférico que acontece somente no norte do planeta e é caracterizado pela formação de desenhos luminosos e coloridos no céu.',
        post_image:
            'https://static.mundoeducacao.uol.com.br/mundoeducacao/2022/07/aurora-boreal-canada.jpg',
      )
    ];
  }
}
