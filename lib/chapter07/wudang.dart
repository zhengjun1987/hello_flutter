import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(TourismDemo());

class TourismDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TourismDemo',
      theme: ThemeData.light(),
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('武当山风景区'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/wudang.png',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            '风景区地址',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '湖北省十堰市丹江口市',
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    )),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('66')
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButtonColumn(Icons.call, '电话'),
                buildButtonColumn(Icons.near_me, '导航'),
                buildButtonColumn(Icons.share, '分享'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(32),
            child: Text(
              '''
武当山，中国道教圣地，又名太和山、谢罗山、参上山、仙室山，古有“太岳”、“玄岳”、“大岳”之称。位于湖北省西北部十堰市丹江口市。东接襄阳市，西靠十堰市 ，南望神农架，北临南水北调中线源头丹江口水库。
明代，武当山被皇帝封为“大岳”、“治世玄岳”，被尊为“皇室家庙”。武当山以“四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”地位闻名于世。武当山是道教名山和武当武术的发源地，被称为“亘古无双胜境，天下第一仙山”。武当武术，是中华武术的重要流派。元末明初，道士张三丰集其大成，开创武当派。截至2013年，武当山有古建筑53处，建筑面积2.7万平方米，建筑遗址9处，占地面积20多万平方米，全山保存各类文物5035件。  
1994年12月，武当山古建筑群入选《世界遗产名录》，2006年被整体列为“全国重点文物保护单位”。
2007年，武当山和长城、丽江、周庄等景区一起入选 “欧洲人最喜爱的中国十大景区”。2010至2013年，武当山分别被评为国家AAAAA级旅游风景区、国家森林公园、中国十大避暑名山、海峡两岸交流基地，入选最美 “国家地质公园”。
“武当”之名最早出现于《汉书》中。
汉高祖五年（前202年），置武当县。
汉末至魏晋隋唐时期，是求仙学道者的栖隐之地。
唐贞观年间（627—649年），唐太宗诏武当节度使姚简到武当山祈雨而应。敕建“五龙祠”。乾宁年间（896—897年），武当山列为“七十二福地”第九位。
自唐代后，武当山就得到历代封建皇帝的重视，封号武当，使其地位崇高、名声显赫。
元代至元二十二年（1285年），玄教宗师张留孙向世祖忽必烈奏报武当山后，忽必烈大信其道。大德八年（1304年），元成宗封“武当福地”。
明代永乐十年（1412年），成祖朱棣命隆平侯张信、驸马督尉沐昕、工部右侍郎郭琎、礼部尚书金纯等率军民、工匠30余万人，大修武当山。 
永乐十五年（1417年）封为“大岳”，高于五岳之上。
永乐二十一年（1423年），历时12年，敕建的大岳太和山，建成9宫、8观、36庵堂、72岩庙、39桥、12亭等33座建筑群。史称“北建故宫，南修武当”。
嘉靖三十一年（1552年）封为“治世玄岳”，把武当山尊为至高无上的“皇室家庙”，以“四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”的显赫地位标名于世，被列为道教第一名山。嘉靖三十一年（1552年），世宗令工部右侍郎陆杰提督重修武当山宫观。
1956年，湖北省将全山古建筑群列为重点文物保护单位。
1961年，金殿被列为国家重点文物保护单位。
1982年02月22日，紫霄宫被列为国家重点文物保护单位。
1983年，国务院把武当山太和宫、紫霄宫列为全国重点宗教活动场所。
1988年01月，“治世玄岳”石牌坊被列为国家重点文物保护单位。
1996年12月15日，南岩宫被列为国家重点文物保护单位。
1994年12月17日，“武当山古建筑群”被联合国列入《世界文化遗产名录》。
2001年07月，玉虚宫遗址被列为国家重点文物保护单位。
2007年05月，启动武当山玉虚宫修缮工程。
2012年，武当山启动武当大兴600年20余项大型系列活动。
2012年07月25日，五龙宫景区正式投入开发建设。
2012年08月01日，因南水北调中线工程，遇真宫顶升工程正式启动。
2012年09月27日，武当山玉虚宫修缮落成。
              ''',
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }

  buildButtonColumn(IconData iconData, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          color: Colors.lightGreen[600],
        ),
        Container(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600]),
          ),
        )
      ],
    );
  }
}
