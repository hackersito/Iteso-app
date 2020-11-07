import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:iteso_app/values/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class MenuView extends StatefulWidget {
  MenuView({Key key}) : super(key: key);

  @override
  _MenuViewState createState() {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    return _MenuViewState();
  }
}

class _MenuViewState extends State<MenuView> {
  CalendarController _calendarController;

  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blancoLight.withOpacity(0.9),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 55,
        items: <Widget>[
          const Icon(AntDesign.calendar, size: 30),
          const Icon(Icons.schedule, size: 30),
          const Icon(Icons.alt_route, size: 30),
          const Icon(Icons.attach_money_outlined, size: 30)
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Column(
        children: <Widget>[
          CustomCalendar(
            onDateSelected: (value) => setState(() {
              _dateTime = value;
            }),
          ),
        ],
      ),
    );
  }
}

class CustomCalendar extends StatefulWidget {
  final ValueChanged<DateTime> onDateSelected;
  CustomCalendar({Key key, @required this.onDateSelected}) : super(key: key);

  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            CustomColors.azulIteso,
            CustomColors.azulBajito,
            Colors.grey.withOpacity(0.2)
          ],
        ),
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            offset: const Offset(0.0, 10.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: SafeArea(
        child: TableCalendar(
          onDaySelected: (day, events, holidays) => widget.onDateSelected(day),
          initialCalendarFormat: CalendarFormat.week,
          locale: Get.locale.toString(),
          headerStyle: HeaderStyle(
            centerHeaderTitle: true,
            formatButtonVisible: false,
            titleTextBuilder: (date, locale) =>
                '${DateFormat.MMMM(locale).format(date).capitalizeFirst} ${date.year}',
            titleTextStyle: Styles.textoBlancoSimple.copyWith(fontSize: 18),
            leftChevronIcon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 36,
            ),
            rightChevronIcon: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
              size: 36,
            ),
          ),
          calendarController: _calendarController,
          builders: CalendarBuilders(
            dayBuilder: (context, date, events) {
              return Container(
                color: Colors.transparent,
                child: Center(
                  child: Text(date.day.toString(),
                      style: Styles.textoBlancoSimple),
                ),
              );
            },
            todayDayBuilder: (context, date, events) {
              return Container(
                margin: EdgeInsets.all(8),
                child: ClipOval(
                  child: Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        color: CustomColors.azulBajito[200],
                        child: Text(date.day.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CustomColors.azulBajito,
                            ))),
                  ),
                ),
              );
            },
            selectedDayBuilder: (context, date, events) {
              return Container(
                margin: EdgeInsets.all(8),
                child: ClipOval(
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.azulBajito),
                      ),
                    ),
                  ),
                ),
              );
            },
            dowWeekdayBuilder: (context, weekday) {
              return Center(
                child: Text(
                  weekday[0].toUpperCase(),
                  style: Styles.textoBlancoSimple
                      .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
