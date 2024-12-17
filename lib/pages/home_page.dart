import 'package:flutter/material.dart';
import 'package:mobile_4/components/item_note.dart';
import 'package:mobile_4/model/note.dart';
import 'package:mobile_4/pages/add_note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Flower> flowers = <Flower>[
    Flower(name: 'Пион',
        image: 'https://avatars.mds.yandex.net/i?id=81dbedd25b5ea0a93ff573b74aabde1e_l-9122788-images-thumbs&ref=rim&n=13&w=1020&h=1020',
        description: 'Пион — это великолепное цветущее растение, которое станет настоящим украшением вашего сада. Его роскошные, ароматные цветы в нежных оттенках розового, белого и красного создают атмосферу уюта и романтики. Выберите пионы для своего ландшафта, и они порадуют вас своим пышным цветением и неповторимым шармом на протяжении всего сезона!',
        price: '600 руб/шт'),
    Flower(name: 'Альстомерия',
        image: 'https://i.pinimg.com/originals/0e/a8/8f/0ea88f06cb3eaefe2b80a7e824e76908.jpg',
        description: 'Альстромерия, или перуанская лилия, — это изысканное растение, которое привнесет яркие акценты в ваш сад или интерьер. Своими нежными цветами в разнообразной палитре оттенков, от ярко-розового до глубокого фиолетового, она создаёт атмосферу радости и свежести. Устойчивые к болезням и легкие в уходе, альстромерии станут идеальным выбором для тех, кто ценит красоту и долговечность!',
        price: '200 руб/шт'),
    Flower(name: 'Ромашка',
        image: 'https://pinkbuket.ru/wp-content/uploads/2024/05/romashka.jpeg',
        description: 'Ромашка — это символ простоты и невидимой красоты, который наполняет ваш сад светом и радостью. Ее белоснежные лепестки и ярко-желтые сердцевины создают неповторимый контраст, привлекая внимание и поднимая настроение. Выберите ромашки для своего цветника, и они подарят вам атмосферу уюта и гармонии, напоминая о летних днях и беззаботных моментах!',
        price: '200 руб/шт'),
    Flower(name: 'Георгин',
        image: 'https://avatars.mds.yandex.net/get-pdb/2828115/bf01180c-5c1a-4d1e-934f-225b4a80e0d7/s1200?webp=false',
        description: 'Георгин — это настоящая звезда цветочного мира, поражающая своим разнообразием форм и яркой палитрой оттенков. Его пышные, многослойные цветы станут великолепным акцентом в вашем саду, привнося в него атмосферу праздника и радости. Выберите георгины, и они будут радовать вас своим роскошным цветением на протяжении всего лета, создавая незабываемые моменты красоты и вдохновения!',
        price: '250 руб/шт'),
    Flower(name: 'Циния',
        image: 'https://www.dobies.co.uk/product_images/FLSZIN2220.jpg',
        description: 'Циния — это яркое и жизнерадостное растение, которое станет настоящим украшением вашего сада или цветника. Своими насыщенными цветами, варьирующимися от ярко-красного до солнечно-желтого, она привлекает внимание и создает атмосферу веселья и уюта. Устойчивые к болезням и легкие в уходе, цинии будут радовать вас своим пышным цветением на протяжении всего лета, наполняя пространство яркими красками и позитивом!',
        price: '250 руб/шт'),
    Flower(name: 'Хризантема',
        image: 'https://avatars.mds.yandex.net/i?id=ad419143d7c0479e5476544c176e7fa0_l-10262551-images-thumbs&n=13',
        description: 'Хризантема — это символ осенней красоты и изысканности, который добавит яркие акценты в ваш сад или интерьер. С разнообразием форм и оттенков, от нежных пастельных до насыщенных ярких цветов, хризантемы создают атмосферу тепла и уюта. Выберите хризантемы, и они будут радовать вас своим пышным цветением, превращая каждый уголок в настоящий цветочный рай!',
        price: '250 руб/шт'),
    Flower(name: 'Эустома',
        image: 'https://avatars.mds.yandex.net/get-altay/4303652/2a00000178f44de5d24643fa59faea9984ad/XXXL',
        description: 'Эустома — это изысканное цветущее растение, которое очарует вас своей утонченной красотой и нежным ароматом. Ее элегантные цветы, напоминающие розы, распускаются в разнообразных оттенках, от пастельных до ярких, создавая атмосферу романтики и изящества. Выберите эустому для своего сада или букета, и она станет настоящим украшением, приносящим радость и восхищение на протяжении всего сезона!',
        price: '250 руб/шт'),
    Flower(name: 'Матиола',
        image: 'https://avatars.mds.yandex.net/i?id=b4a7cc883773b32f07c222bacd6d8b7a_l-8356602-images-thumbs&n=13',
        description: 'Матиола, или ночная фиалка, — это волшебное растение, которое наполняет вечерний сад чарующим ароматом и нежной красотой. Ее изящные цветы, распускающиеся в сумерках, создают атмосферу романтики и уюта, привлекая внимание не только глаз, но и сердце. Выберите матиолу для своего цветника, и она станет незаменимым спутником ваших вечерних прогулок, даря вам моменты спокойствия и вдохновения!',
        price: '230 руб/шт'),
    Flower(name: 'Статица',
        image: 'https://cdn.100sp.ru/pictures/950128683',
        description: 'Статица — это удивительное растение, которое привносит яркие краски и текстурное разнообразие в ваш сад или букет. Ее долговечные, яркие цветы, которые сохраняют свою красоту даже после сушки, делают статику идеальным выбором для создания оригинальных композиций. Выберите статику, и она станет настоящим акцентом вашего цветника, радуя глаз и вдохновляя на творчество на протяжении всего сезона!',
        price: '150 руб/шт'),
    Flower(name: 'Антиринум',
        image: 'https://avatars.mds.yandex.net/i?id=48b3962c948fc5ca1dc960b0ed4ab36c_l-5286448-images-thumbs&n=13',
        description: 'Антиринум, или львиный зев, — это яркое и жизнерадостное растение, которое добавит неповторимый шарм вашему саду. Его эффектные цветы, напоминающие открытые пасти львов, распускаются в разнообразных оттенках, от нежных пастельных до насыщенных ярких, создавая атмосферу веселья и уюта. Выберите антиринум для своего цветника, и он будет радовать вас своим пышным цветением и оригинальным видом на протяжении всего лета!',
        price: '210 руб/шт'),
  ];

  void _addNewFlower(Flower newFlower) {
    setState(() {
      flowers.add(newFlower);
    });
  }

  void _deleteFlower(int index) {
    setState(() {
      flowers.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Магазин цветов'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: flowers.length,
          itemBuilder: (context, index) {
            final flower = flowers[index];
            return Dismissible(
              key: Key(flower.name),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                _deleteFlower(index);
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: ItemNote(flower: flower),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newFlower = await Navigator.push<Flower>(
            context,
            MaterialPageRoute(builder: (context) => const AddNotePage()),
          );

          if (newFlower != null) {
            _addNewFlower(newFlower);
          }
        },
        child: const Icon(Icons.add),
        tooltip: 'Добавить новый товар',
      ),
    );
  }
}
