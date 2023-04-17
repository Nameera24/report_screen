import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  DateTime _selectedDateto = DateTime.now();

  Future<void> _selectDateto(BuildContext context) async {
    final DateTime? pickedto = await showDatePicker(
      context: context,
      initialDate: _selectedDateto,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedto != null) {
      setState(() {
        _selectedDateto = pickedto;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 34, 179, 236),
              Color.fromARGB(255, 7, 102, 149),
            ],
          )),
          child: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "REPORTS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          margin: const EdgeInsets.only(right: 28, left: 28),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: const EdgeInsets.all(13),
                child: SvgPicture.asset(
                  "assets/Organization.svg",
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              hintText: 'Organization',
            ),
            borderRadius: BorderRadius.circular(8),
            icon: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 73, 162, 206)),
            ),
            iconSize: 35,
            hint: const Text(
              'Organization',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          margin: const EdgeInsets.only(right: 28, left: 28),
          child: TextField(
            controller: TextEditingController(
                text:
                    '${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}'),
            onTap: () => _selectDate(context),
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: const EdgeInsets.all(13),
                child: SvgPicture.asset(
                  "assets/Icon awesome-calendar-alt.svg",
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              labelText: 'Date From',
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          margin: const EdgeInsets.only(right: 28, left: 28),
          child: TextField(
            controller: TextEditingController(
                text:
                    '${_selectedDateto.day}-${_selectedDateto.month}-${_selectedDateto.year}'),
            onTap: () => _selectDateto(context),
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: const EdgeInsets.all(13),
                child: SvgPicture.asset(
                  "assets/Icon awesome-calendar-alt.svg",
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              labelText: 'Date to',
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          margin: const EdgeInsets.only(right: 28, left: 28),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: const EdgeInsets.all(13),
                child: SvgPicture.asset(
                  "assets/Product Category.svg",
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              hintText: 'Product Category',
            ),
            borderRadius: BorderRadius.circular(8),
            icon: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 73, 162, 206)),
            ),
            iconSize: 35,
            hint: const Text(
              'Product Category',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          margin: const EdgeInsets.only(right: 28, left: 28),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: const EdgeInsets.all(13),
                child: SvgPicture.asset(
                  "assets/Locator.svg",
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 7, 102, 149), width: 1)),
              hintText: 'Locator',
            ),
            borderRadius: BorderRadius.circular(8),
            icon: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 73, 162, 206)),
            ),
            iconSize: 35,
            hint: const Text(
              'Locator',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.22,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    end: AlignmentDirectional.bottomStart,
                    colors: [
                      Color.fromARGB(255, 34, 179, 236),
                      Color.fromARGB(255, 7, 102, 149)
                    ]),
                borderRadius: BorderRadius.circular(4)),
            child: TextButton(
                // ignore: deprecated_member_use
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: const Text(
                  "Done",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                )),
          ),
        )
      ]),
    ));
  }
}
