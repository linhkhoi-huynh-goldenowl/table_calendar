// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:table_calendar/table_calendar.dart';


class TableBasicsExample extends StatefulWidget {
  @override
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
        DateTime now = DateTime.now();
    final lastDay = DateTime(now.year + 10, now.month + 1, 0);
    final firstDay = DateTime(now.year, now.month, 1);
    const weekDayContainerColor = Color(0xFFFFFFFF);
    const weekDayTextColor = Color(0xFF000000);
    const weekendContainerColor = Color(0xFF78909C);
    const weekendTextColor = Color(0xFFFFFFFF);
    const monthContainerColor = Color(0xFF23485F);
    const monthTextColor = Color(0xFFFFFFFF);
    const dayContainerColor = Color(0xFFF2F9EE);
    const otherMonthDayTextColor = Color(0xFF7B9A99);
    const dayTextColor = Color(0xFF07364B);
    const daySelectColor = Color(0xFFD9EDE2);
    const dayDecoration = BoxDecoration(
      shape: BoxShape.rectangle,
      color: dayContainerColor,
    );
    const monthTextStyle = TextStyle(
      color: monthTextColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    const defaultTextStyle = TextStyle(
        fontSize: 14, color: dayTextColor, fontWeight: FontWeight.bold);
    const outsideTextStyle = TextStyle(
        fontSize: 14,
        color: otherMonthDayTextColor,
        fontWeight: FontWeight.w300);
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('TableCalendar - Basics'),
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          TableCalendar(
            hasInnerShadow: false,
      radius: 8,
      customShadow: [
        BoxShadow(
            inset: true,
            offset: const Offset(0, 0),
            blurRadius: 4,
            color: Colors.black.withOpacity(1))
      ],
      
      firstDay: firstDay,
      lastDay: lastDay,
      focusedDay: now,
     
      startingDayOfWeek: StartingDayOfWeek.monday,
      rangeSelectionMode: RangeSelectionMode.enforced,
      calendarFormat: CalendarFormat.month,
      onHeaderTapped: (focusedDay) {},
      
      rowHeight: 34,
      daysOfWeekHeight: 28,
      weekdayFirstHeadDecoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
        color: weekDayContainerColor,
      ),
      weekdayEndHeadDecoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
        color: weekDayContainerColor,
      ),
      weekendEndHeadDecoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
        color: weekendContainerColor,
      ),
      weekendFirstHeadDecoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
        color: weekendContainerColor,
      ),
      weekdayHeadDecoration: const BoxDecoration(
        color: weekDayContainerColor,
      ),
      backgroundHeadColor: monthContainerColor,
      headerStyle: HeaderStyle(
        headerPadding: const EdgeInsets.symmetric(horizontal: 12),
        formatButtonVisible: false,
        leftChevronVisible: false,
        rightChevronVisible: true,
        decoration: const BoxDecoration(
      
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
        ),
        rightChevronIcon: Text(
         '2020',
          style: monthTextStyle,
        ),
        rightChevronPadding: EdgeInsets.zero,
        rightChevronMargin: EdgeInsets.zero,
        titleCentered: false,
        titleTextFormatter: (date, locale) => 
          '3',
        titleTextStyle: monthTextStyle,
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        
        weekdayStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: weekDayTextColor,
        ),
        weekendStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: weekendTextColor,
        ),
      ),
      calendarBuilders: CalendarBuilders(
       
      ),
      backgroundColor: dayContainerColor,
      calendarStyle: CalendarStyle(
        todayDecoration: const BoxDecoration(),
        // rowDecoration: dayDecoration,
        // outsideDecoration: dayDecoration,
        markerDecoration: dayDecoration,
        // holidayDecoration: dayDecoration,
        // weekendDecoration: dayDecoration,
        // defaultDecoration: dayDecoration,
        // disabledDecoration: dayDecoration,
        disabledTextStyle: outsideTextStyle,
        outsideTextStyle: outsideTextStyle,
        todayTextStyle: defaultTextStyle,
        defaultTextStyle: defaultTextStyle,
        selectedTextStyle: defaultTextStyle,
        weekendTextStyle: defaultTextStyle,
        cellMargin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      
        outsideDaysVisible: true,
      ),
    )
        ],
      )
    );
  }
}
