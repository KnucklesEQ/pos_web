import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zeive_pos/blocs/welcome/welcome.dart';
import 'package:zeive_pos/screens/app_screens/billing_screen.dart';
import 'package:zeive_pos/screens/app_screens/mail_screen.dart';
import 'package:zeive_pos/screens/app_screens/report_screen.dart';
import 'package:zeive_pos/screens/app_screens/support_screen.dart';
import 'package:zeive_pos/screens/app_screens/tpv_screen.dart';
import 'package:zeive_pos/screens/welcome_screen/screen_sizes/welcomescreen_desktop.dart';
import 'package:zeive_pos/screens/welcome_screen/screen_sizes/welcomescreen_mobile.dart';
import 'package:zeive_pos/screens/welcome_screen/screen_sizes/welcomescreen_tablet.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  WelcomeBloc _welcomeBloc;

  @override
  void initState() {
    super.initState();

    _welcomeBloc = new WelcomeBloc();
  }

  @override
  void dispose() {
    super.dispose();

    _welcomeBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WelcomeBloc, WelcomeState>(
      bloc: _welcomeBloc,
      listener: (BuildContext context, WelcomeState state) {
        if (state is WelcomeStateGoToTpvScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TpvScreen()),
          );
          return;
        }

        if (state is WelcomeStateGoToBillingScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BillingScreen()),
          );
          return;
        }

        if (state is WelcomeStateGoToMailScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MailScreen()),
          );
          return;
        }

        if (state is WelcomeStateGoToSupportScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportScreen()),
          );
          return;
        }

        if (state is WelcomeStateGoToReportScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReportScreen()),
          );
          return;
        }
        return;
      },
      child: BlocProvider(
        create: (BuildContext context) => _welcomeBloc,
        child: Scaffold(
          backgroundColor: const Color(0xff049c04),
          body: ScreenTypeLayout(
            breakpoints: ScreenBreakpoints(
              desktop: 1100,
              tablet: 640,
              watch: 300,
            ),
            desktop: WelcomeScreenDesktop(),
            tablet: WelcomeScreenTablet(),
            mobile: WelcomeScreenMobile(),
          ),
        ),
      ),
    );
  }
}
