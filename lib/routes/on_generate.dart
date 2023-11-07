import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/const/page_const.dart';
import 'package:whatsapp_clone/feature/app/home/contact_page.dart';
import 'package:whatsapp_clone/feature/app/setting/setting_page.dart';
import 'package:whatsapp_clone/feature/calls/presentation/pages/call_contact_page.dart';
import 'package:whatsapp_clone/feature/chat/presentation/pages/single_chat_page.dart';
import 'package:whatsapp_clone/feature/status/presentation/pages/my_status.dart';


class OnGenerateRoute {


  static Route<dynamic>? route(RouteSettings settings) {
    final name = settings.name;

    switch (name) {
      case PageConst.contactUserPage:
        {
          return materialPageBuilder(const ContactsPage());
        }
      case PageConst.settingPage: {
        return materialPageBuilder(const SettingsPage());
      }
      case PageConst.callContactPage: {
        return materialPageBuilder(const CallContactsPage());

      }
      case PageConst.myStatusPage: {
        return materialPageBuilder(const MyStatusPage());
      }
      case PageConst.singleChatPage: {
        return materialPageBuilder(const SingleChatPage());

      }
    }
    return null;


   }

  }

dynamic materialPageBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}