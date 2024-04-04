import 'package:lara_push_noti/database/models/Home/Category_Model.dart';

 class Constdata{


  List<Basic_Category> bas_cat =
[


  Basic_Category(
    BasicImage:'images/place.png',
    name: 'place',
    id: 0,
    sec_cat:[
      Second_Category(
        secondcat_name:'wedding hall',//",أماكن",
        id: 1,
      ),
      Second_Category(
        secondcat_name:'park',// "مطاعم",
        id:2,
      ),
      Second_Category(
        secondcat_name:'beach',// "ملابس",
        id: 3,
      ),
      Second_Category(
        secondcat_name:'hall',// "كوافير",
        id: 4,
      ),
    ],

  ),
  Basic_Category(
    name:'restaurant' ,
    BasicImage:'images/rest.png',
    id:1,
    sec_cat: [
  Second_Category(
  secondcat_name:'oriental cuisine',// "كوافير",
  id: 5,
  ),
  Second_Category(
  secondcat_name:'western cuisine',// "كوافير",
  id: 6,
  ),
  Second_Category(
  secondcat_name:'arab cuisine',// "كوافير",
  id: 7,
  ),
  Second_Category(
  secondcat_name:'entrees',// "كوافير",
  id: 8,
  ),
  Second_Category(
  secondcat_name:'patsiere',// "كوافير",
  id: 9,
  ),
  Second_Category(
  secondcat_name:'cake',// "كوافير",
  id: 10,
  ),
  Second_Category(
  secondcat_name:'drinks',// "كوافير",
  id: 11,
  ),


  ],

  ),



  Basic_Category(
   name: 'clothes',
    BasicImage:'images/clothes.png',// "ملابس",
    id: 2,
  sec_cat: [
  Second_Category(
  secondcat_name:'party cloth',// "كوافير",
  id: 11,
  ),
   Second_Category(secondcat_name:'wedding cloth',// "كوافير",
  id: 12,
  ),
   Second_Category(secondcat_name:'shoes',// "كوافير",
  id: 13,
  ),


],

  ),

  Basic_Category(
  name:'hairdresser',
    BasicImage:'images/hair.png',// "كوافير",
    id: 3,
  sec_cat: [
  Second_Category(
  secondcat_name:'women hairstyle',// "كوافير",
  id: 14,
  ),
    Second_Category(
  secondcat_name:'makeup',// "كوافير",
  id: 15,
  ),
    Second_Category(
  secondcat_name:'men hairstyle',// "كوافير",
  id: 16,
  ),
  ],
  ),


  Basic_Category(
  name:'singer',
    BasicImage:'images/dj.png',// "مغني",
    id:4,

  sec_cat:[
  Second_Category(
  secondcat_name:' team',//",أماكن",
  id: 17,
  ),
  Second_Category(
  secondcat_name:' dj',//",أماكن",
  id: 18,
  ),],
  ),

  Basic_Category(
    name: 'jewelery',
    BasicImage:'images/jwel.png',// "ديكور",
    id: 5,
    sec_cat: [
    Second_Category(
      secondcat_name:'accessories',// "كوافير",
      id: 19,
    ),
    Second_Category(
      secondcat_name:'jewelery set',// "كوافير",
      id: 20,
     ),

    ],
  ),



  Basic_Category(name: 'decoration',
    BasicImage:'images/dicoration.png',// "مصور",
    id: 6,
  sec_cat:[
  Second_Category(
  secondcat_name:'flower',//",أماكن",
  id: 22,
  ),Second_Category(
  secondcat_name:'balloon',//",أماكن",
  id: 23,
  ),Second_Category(
  secondcat_name:'other',//",أماكن",
  id: 24,
  ),],

  ),

  Basic_Category(
    BasicImage:'images/camera.png',// 'بطاقات دعوة',
    id: 7,
    name:'photographer',
    sec_cat:[Second_Category(
      secondcat_name:'photographer',//",أماكن",
      id: 25,
    ),] ,

  ),

];



}






