import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_language/classes/language.dart';
import 'package:flutter_multi_language/main.dart';
import 'package:flutter_multi_language/routes/route_name.dart';
import 'package:flutter_multi_language/translations/locale_keys.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _key = GlobalKey();
  String value = '';
  //late Language language;

  void _changeLanguage(Language language){
    print(language.languagecode);
    Locale _temp;
    switch(language.languagecode){
      case 'en':
       // _temp = Locale(language.languagecode,'US');
        context.setLocale(Locale('en'));
        break;
      case 'ur':
        context.setLocale(Locale('ur'));
        break;
      default:
        _temp = Locale(language.languagecode,'US');
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(LocaleKeys.home_page.tr()),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<dynamic>(

                onChanged:(language){

                 _changeLanguage(language);


                },
                icon:const  Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                items: Language.languageList()
                    .map<DropdownMenuItem>(
                      (lang) => DropdownMenuItem(
                        value: lang,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(lang.name),
                            Text(lang.flag),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
      drawer: _drawerList(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: _mainForm(context),
        ),
      ),
    );
  }

  Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              child:  Center(
                child: Text(
                  LocaleKeys.personal_info.tr(),

                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
                ),
              ),
            ),
            TextFormField(
              validator: (val) {
                if (val!.isEmpty) {
                  return LocaleKeys.required_field.tr();
                }
                return null;
              },
              decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:  LocaleKeys.name.tr(),
                  hintText: LocaleKeys.name_hint.tr()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (val) {
                if (val!.isEmpty) {
                  return LocaleKeys.required_field.tr();
                }
                return null;
              },
              decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: LocaleKeys.email.tr(),
                  hintText: LocaleKeys.email_hint.tr()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (val) {
                if (val!.isEmpty) {
                  return LocaleKeys.required_field.tr();
                }
                return null;
              },
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: LocaleKeys.date_of_birth.tr(),
              ),
              onTap: () async {
                await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(DateTime.now().year),
                    lastDate: DateTime(DateTime.now().year + 20));
              },
            ),
            const SizedBox(
              height: 10,
            ),

            MaterialButton(
              color: Colors.blue,
              shape: StadiumBorder(),
              onPressed: () {
                if (_key.currentState!.validate()) {
                  //_showSuccessDialog();
                  print("submitted");
                }
              },
              child: Text(LocaleKeys.submit_info.tr()),
            ),


          ],
        ),
      ),
    );
  }

  Container _drawerList() {
    TextStyle _textStyle = TextStyle(color: Colors.white, fontSize: 24);
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      color: Theme.of(context).primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(
              height: 100,
              child: CircleAvatar(),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "About Us",
              style: _textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, aboutRoute);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "Settings",
              style: _textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, settingRoute);
            },
          ),
        ],
      ),
    );
  }
}
