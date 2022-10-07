class NewsModel {
  String title; //= "Заголовок новости";
  String text; //= "Текст новости";
  String id; //= '';
  String photoURL; //= "Ссылка на фото";

  NewsModel(
      {this.title = 'Заголовок новости',
      this.text = "Текст новости",
      this.photoURL = '',
      this.id = "01nn"});

  NewsModel.fromMap(Map<String, dynamic> dataMap,{
    this.text = '1', this.title ='1', this.id = '1', this.photoURL = '1'}) {
    this.text = dataMap['text']??'';
    this.title = dataMap['title']??"";
    this.id = dataMap['id']??99;
    this.photoURL = dataMap['photoURL']??'';
  }
}

Map<String, dynamic> map = {
  "test": "Это текст новости",
  "title": "Это заголовок новости",
  "id": 0,
  "photoURL": "это ссылка на фото",
  'moderated': true
};
var b = map["id"] ?? 1;
//есди в мапе нгт значения по ключу "id", то b=1.
// Если есть, то вернет это значение
void setIDToMap(int a) {
  map["id"] = a;
}

List<dynamic> list = [
  "Это текст первой новости",
  "Это заголовок новости",
  1,
  "это ссылка на фото",
  true
];
var a = list[4];

List <Map<String,dynamic>> listOfMapNews = [
  {"test": "Это текст первой новости",
    "title": "Это заголовок первой новости",
    "id": 1,
    "photoURL": "это ссылка на фото первой новости",
    'moderated': true},
  {"test": "Это текст второй новости",
    "title": "Это заголовок второй новости",
    "id": 2,
    "photoURL": "это ссылка на фото второй новости",
    'moderated': true},
  {"test": "Это текст третьей новости",
    "title": "Это заголовок третьей новости",
    "id": 3,
    "photoURL": "это ссылка на фото третьей новости",
    'moderated': true},
  {"test": "Это текст четвертой новости",
    "title": "Это заголовок четвертой новости",
    "id": 4,
    "photoURL": "это ссылка на фото четвертой новости",
    'moderated': true}
];
