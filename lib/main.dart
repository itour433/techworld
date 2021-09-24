import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechWorld',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '災害Information'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sectionnumber = 0;
  var infotext;
  var buttontext1, buttontext2, buttontext3, buttontext4;

  @override
  Widget build(BuildContext context) {
    //最初の文章
    if (sectionnumber == 0) {
      infotext = "このサイトは、災害時に適切な避難方法を伝えることができます。\nまた、安否確認をすることができます。"
          "災害が起きたら、机の下に隠れるなど身を守る行動を行い、安全な状況下になりましたらこのLINEアカウントを開いてください。"
          "そして、メニューから災害発生のボタンを選択してください。";
      buttontext1 = "地震";
      buttontext2 = "津波";
      buttontext3 = "洪水";
      buttontext4 = "";
      sectionnumber = 1;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(infotext),
            ElevatedButton(
              //Todo ボタン1
              onPressed: () {
                //Todo クリックしたときの処理

                switch (sectionnumber) {
                  case 1:
                    sectionnumber = 2;
                    textrestart();
                    break;
                  case 2:
                    sectionnumber = 3;
                    textrestart();
                    break;
                  case 3:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 4:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 5:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 6:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 7:
                    sectionnumber = 8;
                    textrestart();
                    break;
                  case 8:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 9:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 10:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 11:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 12:
                    sectionnumber = 13;
                    textrestart();
                    break;
                  case 13:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 14:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 15:
                    sectionnumber = 0;
                    textrestart();
                    break;
                  case 16:
                    sectionnumber = 0;
                    textrestart();
                    break;
                }
                print(sectionnumber);
              },
              child: Text(buttontext1),
            ),
            ElevatedButton(
              //Todo ボタン2
              onPressed: () {
                //Todo クリックしたときの処理
                switch (sectionnumber) {
                  case 2:
                    sectionnumber = 4;
                    textrestart();
                    break;
                  case 1:
                    sectionnumber = 7;
                    textrestart();
                    break;
                  case 7:
                    sectionnumber = 9;
                    textrestart();
                    break;
                  case 12:
                    sectionnumber = 14;
                    textrestart();
                    break;
                }
              },
              child: Text(buttontext2),
            ),
            ElevatedButton(
              //Todo ボタン3
              onPressed: () {
                //Todo クリックしたときの処理
                switch (sectionnumber) {
                  case 2:
                    sectionnumber = 5;
                    textrestart();
                    break;
                  case 7:
                    sectionnumber = 10;
                    textrestart();
                    break;
                  case 1:
                    sectionnumber = 12;
                    textrestart();
                    break;
                  case 12:
                    sectionnumber = 15;
                    textrestart();
                    break;
                }
              },
              child: Text(buttontext3),
            ),
            ElevatedButton(
              //Todo ボタン4
              onPressed: () {
                //Todo クリックしたときの処理
                switch (sectionnumber) {
                  case 2:
                    sectionnumber = 6;
                    textrestart();
                    break;
                  case 7:
                    sectionnumber = 11;
                    textrestart();
                    break;
                  case 12:
                    sectionnumber = 16;
                    textrestart();
                    break;
                }
              },
              child: Text(buttontext4),
            ),
          ],
        ),
      ),
    );
  }

  textrestart() {
    setState(() {
      if (sectionnumber == 2) {
        infotext = "今いる場所を教えて下さい";
        buttontext1 = "家";
        buttontext2 = "外";
        buttontext3 = "都市";
        buttontext4 = "建物";
      }
      if (sectionnumber == 3) {
        infotext = "揺れが小さい時\n"
            "①玄関など落下物の少ない場所に移動するか机の下に入る\n②家の中に閉じ込められないように、ドアを開ける"
            "\n③頭を下げてしゃがみ手で首筋を守る姿勢をとる\n④慌てずに火の始末をする\n⑤家族の安全を確認\n"
            "⑥靴を履く\n⑦非常持出品を手近に用意する\n⑧津波や土砂災害の危険がある時はすぐに避難する\n"
            "⑨近隣住民の安全を確保する\n⑩テレビ・ラジオで正しい情報を確認";
        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 4) {
        //外で地震が起きたら
        infotext = "●路上にいたら\nブロック塀や自動販売機などから離れましょう。\n電柱や垂れ下がった電線に気をつけましょう。"
            "\n空き地や近くの公園などに避難しましょう。"
            "\n●電車などの車両にいたら"
            " \n網棚などからの落下物に注意し、つり革や手すりにしっかりつかまりましょう。"
            "\n座っているときは、足を踏ん張り、上体を前かがみにしてカバンなどで頭を保護しましょう。"
            "\n勝手に降車しないでください。乗務員の指示に従って落ち着いて行動をしてください。"
            "\n●車を運転していたら"
            "\nゆっくりスピードを落として、道路の左側に止めましょう。"
            "\n揺れがおさまるまで、車外には出ず、カーラジオ等などで情報を収集しましょう。"
            "\n避難が必要であれば、キーはつけたままドアロックもしないようにしましょう。車検証といった貴重品を忘れずに持ち出して、徒歩で避難しましょう。"
            "\n●湾岸付近にいたら"
            "\n高台に避難しましょう。"
            "\nそして、津波の情報をこまめに確認しましょう。"
            "\n注意報や警報が解除されるまでは、沿岸部には近寄らないようにしましょう。";
        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }

      if (sectionnumber == 5) {
        //都市で地震が起きたら
        infotext = "鞄などで頭を守る\n"
            "公園など広い場所に行く\n"
            "なければ耐久性の高いビルに避難する\n"
            "塀などには近づかない\n"
            "柱や壁のそばで揺れがおさまるのを待つ。\n"
            "非常口、階段には殺到せず落ち着いて移動する。\n";
        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 6) {
        //都市で地震が起きたら
        infotext = "かばん等で頭を保護する。\n"
            "ショーケース、大型商品には近づかない。\n"
            "階段の踊り場や柱のそばに移動する。\n"
            "店員の指示のもと、落ち着いて行動する\n";
        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      //津波のとき
      if (sectionnumber == 7) {
        infotext = "今いる場所を教えて下さい";
        buttontext1 = "家";
        buttontext2 = "外";
        buttontext3 = "都市";
        buttontext4 = "建物";
      }
      if (sectionnumber == 8) {
        //津波が家で起きたら
        infotext = "①すぐに取り出せる場合は、災害時の必需品を用意しましょう。\n"
            "②海や川の近くにいる場合は、すぐに高台や3階以上の鉄筋コンクリート造りの建物に避難\n"
            " ③避難の最中に看板や壁などが落ちてくる可能性があるので、ヘルメットや頭巾などで頭を守りながら避難しましょう。"
            "かならず徒歩で避難し、けして車では避難しないようにしましょう。\n"
            "④避難場所に到着したら、津波がおさまるまでそこから動かないようにしましょう。津波は、第一波・第二波とやってくる可能性があります。\n"
            "津波がおさまるまでは約6時間といわれていますが、ラジオなどで正確な情報を聞くようにしましょう。";

        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 9) {
        //津波が家で起きたら
        infotext =
        "●湾岸近くにいたら\n"
        "津波警報や注意報の発表を待たずに、直ちに海辺から離れ、急いで安全な場所に避難しましょう。弱くても長時間ゆっくりした揺れの場合は、"
        "すぐに津波が来る可能性があります。\n"
        "また、揺れを感じない場合でも遠く離れた場所が震源地の場合だと津波が発生することもあります。警報が発表されたら、揺れの有無に関わらず避難しましょう。"
        "避難は、遠くに逃げるよりも近くの高台に避難しましょう。(地震の揺れが小さい場合)\n"
            "津波浸水想定区域の外にいても安心せずに、より安全な場所に避難しましょう。"


      // "●外にいるとき"
      "\n津波が来る可能性が少しでもある場合は、避難誘導標識板などを確認して防潮堤の避難口や避難階段などを使って避難ビル"
     "・高台又は避難地等へ避難してください。山ぎわや急傾斜地では山崩れやがけ崩れが起こりやすいので注意してください。";


      buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 10) {
        infotext =
        "都市が都市にやってきたらの文章。まだ存在していない";


        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 11) {
        infotext =
        "津波が建物(でっかいの)にやってきたらの文章。まだ存在していない";


        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      //洪水のとき
      if (sectionnumber == 12) {
        infotext = "今いる場所を教えて下さい";
        buttontext1 = "家";
        buttontext2 = "外";
        buttontext3 = "都市";
        buttontext4 = "建物";
      }

      //家にいて洪水が起きたら
      if (sectionnumber == 13) {
        infotext =
        "①テレビやラジオ・インターネット等による気象警報等の確認を行いましょう。\n"
        "②ハザードマップ等による避難所・避難ルートの確認をしましょう。\n"
        "③非常持出し品の準備を行いましょう。\n"
        "④家屋の避難を抑えるために対策をしましょう\n"
        "家の周りの排水口の点検、風で吹き飛ばされそうな物の収容など\n"
        "■避難準備情報が発令されたら■\n"
        "避難の準備を行いましょう。高齢者等の方は避難を開始してください。\n"
        "■避難勧告が発令されたら■\n"
        "避難を実施してください。\n"
       " ■避難指示(緊急)が発令されたら■\n"
        "危険回避行動を取りましょう。\n"
        "自分の命を守る行動を。大変危険な状態です。\n\n"

        "避難の際は、避難場所・経路を確認しましょう。足元に気を付けて落ち着いて避難しましょう。\n"
        "自然災害は、自らの判断で避難することが原則です。ためらわずに、避難勧告が発令されたら避難することが水害時の行動として重要です。\n";


        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 14) {
        infotext =
        "水位の確認\n"
        "歩ける深さはひざぐらいまで。（成人男性で約70cm、成人女性で約50cm）水深が腰まであるようなら無理は禁物。高所で救助を待つこと 。\n"
        "足元に注意を払う\n"
        "長い棒を杖がわりにして安全を確認しながら 避難して下さい。浸水している場所を歩くときには棒などでマンホ ールや側溝に注意しましょう。\n"
        "危険な場所には近づかない。増水・はん濫のおそれがあります。\n"
        "浸水して足下が見えない場合は、道路を歩かない\n"
        "突然道路のマンホールから水が噴き出したり、ふたが外れていて転落したりする危険があるため、むやむに歩き回らず、安全な場所に避難します。\n"
        "地下街や地下鉄の駅にいる場合は、すぐに地上へ\n"
        "流れ込んだ雨水が浸水し、停電したり、水圧で出入口やエレベーターのドアが開かなくなったりする危険があるため、すぐに地上へ避難します。\n\n\n"

        "運転を一時中断する\n"
        "視界が悪くなったり、ブレーキがきかなくなったりする恐れがあるため、後続車の追突や冠水の危険のない安全な場所に駐車して待機を。\n"
        "アンダーパスには近づかない\n"
        "車両が取り残され水没したり、雨水の深さが分からず進入して水没したりする危険があるため、絶対に近づかないこと。\n"
        "冠水した場合はすぐにエンジンを停止。車を降りて安全な場所へ\n"
        "30cm程度の冠水でエンジンは停止します。それ以上になると、ドアが開かなくなったり車ごと流されたりする危険があるため、車から降りて安全な場所へ避難します。\n";

        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 15) {
        infotext =
        "洪水が都市にやってきたらの文章。まだ存在していない";

        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
      if (sectionnumber == 16) {
        infotext =
        "洪水が建物にやってきたらの文章。まだ存在していない";

        buttontext1 = "戻る";
        buttontext2 = "最新の災害情報を確認する";
        buttontext3 = "安否を確認する";
        buttontext4 = "";
      }
    });
  }
}
