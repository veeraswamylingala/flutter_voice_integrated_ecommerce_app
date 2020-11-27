import 'dart:async';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'allCategoryWidget.dart';
import 'amazonbackpacks.dart';
import 'allbackpackwidget.dart';
import 'cartWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice-Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpeechScreen(),
    );
  }
}

class SpeechScreen extends StatefulWidget {


  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {

  bool voiceEnable = false;
  String name = "All Items";
  Timer timer;
  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;

  final FlutterTts flutterTts = FlutterTts();


  Future _speak(String val) async {
    print("-----------$val--------");
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setPitch(1);
    if (val == "Ok Google") {
      await flutterTts.speak("HI, How  Can i Help You");
      timer = Timer.periodic(
          Duration(seconds: 5),
              (Timer t) => setState(() {
            _isListening = false;
            _listen();
            timer.cancel();
          }));
    } else if (val == "home") {
      setState(() {
        name = "All Items";
      });
      await flutterTts.speak(
          "Moved to home");
      timer = Timer.periodic(
          Duration(seconds: 5),
              (Timer t) => setState(() {
            _isListening = false;
            _listen();
            timer.cancel();
          }));

    }
    else if (val == "backpack") {
      setState(() {
        name = "All Brand Backpacks";
      });
      await flutterTts.speak(
          "What Brand of Backpack are you looking , Dell , Amazon , Aristocart ,American Turist , Sky Bags , Gear");
      timer = Timer.periodic(
          Duration(seconds: 5),
              (Timer t) => setState(() {
            _isListening = false;
            _listen();
            timer.cancel();
          }));



    } else if (val == "Amazon") {
      setState(() {
        name = "Amazon Backpacks";
      });
      await flutterTts.speak(
          "ohh Nice , Which Color do you want in Amazon Bags ,We have Red , Blue , Black");
      timer = Timer.periodic(
          Duration(seconds: 5),
              (Timer t) => setState(() {
            _isListening = false;
            _listen();
            timer.cancel();
          }));
    } else if (val == "blue") {
      setState(() {
        name = "cart";
      });
      await flutterTts.speak(
          "Added your Amazon Blue Backpack to the Cart Successfully ! and the Price is 1899 Rupees  Can i Place the Order");
      timer = Timer.periodic(
          Duration(seconds: 8),
              (Timer t) => setState(() {
            _isListening = false;
            _listen();
            timer.cancel();
          }));
    } else if (val == "yes" || val == "s" ) {
      setState(() {
        name = "placeorder";
      });

      await flutterTts
          .speak("Your Order Placed Successfully , Thank You Have a great Day");
      timer = Timer.periodic(Duration(seconds: 5), (Timer t) => setState(() {
        _isListening = false;
        _listen();
        timer.cancel();
      }) );

    } else {
      await flutterTts.speak("sorry i didn't get you !");
      timer = Timer.periodic(
          Duration(seconds: 5),
              (Timer t) => setState(() {
            _isListening = false;
            _listen();
            timer.cancel();
          }));
    }
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _listen();
  }

  @override
  void dispose() {
    super.dispose();
  }

  lol(String val)
  {
    print('onStatus: $val');
    if(val == "listening")
      {
        setState(() {
          voiceEnable = true ;
        });
      }else
        {
          setState(() {
            voiceEnable = false ;
          });

        }
  }

  _listen() async {
    print(_isListening);
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => lol(val),
        onError: (val) => print('onError: $val'),
      );

      print(available);
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            print(_text);
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
              _speak(_text);
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Voice Process Demo'),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
        floatingActionButton:  Container(
          //width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AvatarGlow(
                animate: voiceEnable,
                glowColor: Theme.of(context).primaryColor,
                endRadius: 75.0,
                duration: const Duration(milliseconds: 2000),
                repeatPauseDuration: const Duration(milliseconds: 100),
                repeat: true,
                child: FloatingActionButton(
                  backgroundColor: Colors.white54,
                  onPressed: _listen,
                  child: Icon(voiceEnable ? Icons.mic : Icons.mic_off,color: Colors.red,),
                ),
              ),
              Container(
                  height: 50,
                  width: 240,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.grey[350])),
                  child: Text(
                    _text,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
                  ))
            ],
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Card(
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text("$name", style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400),),
                ),
              ),
              value()
            ],),
          ),
        )

    );
  }


  value(){
    switch(name){
    //All Items || HOme ------------------------------------
      case "All Items" :
        return allCategory(context);
        break;
    //All BackPacks ------------------------------------
      case "All Brand Backpacks" :
        return allBackpack(context);
        break;
    //Amazon Backpacks------------------------------------
      case "Amazon Backpacks" :
        return amazonbackpacks(context);
        break;
    //Cart-------------------------------------
      case "cart" :
        return cartwidget(context);
        break;
      case "placeorder" :
        return  Container(
          // alignment: Alignment.center,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 100,
              ),

              Card(
                  elevation: 15.0,
                  child: Image.network("https://i.stack.imgur.com/ZRTb6.gif",height: 200,width: 200,)),
              SizedBox(
                height: 20,
              ),
              Text("Placed Order Successfully",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400),)
            ],),
        );
        break;

    }
  }
}


