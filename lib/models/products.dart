
class Product {
  late final int id, price;
  late final String title, subTitle, description, image;


  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image});
}


List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "Airpod",
    subTitle: "Original Airpod 100%",
    image: "images/airpod.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "S10 2022",
    subTitle: "Quality 100%",
    image: "images/mobile.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "Vr 3D",
    subTitle: "Quality 100%",
    image: "images/class.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "HeadSet 4Tech",
    subTitle: "Original + Quality 100%",
    image: "images/headset.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Recorder 4Insss",
    subTitle: "Record all sound",
    image: "images/speaker.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Desktop Camera",
    subTitle: "Quality 100%",
    image: "images/camera.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
];