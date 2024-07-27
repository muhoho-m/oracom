// daily view of reports and to do list

import "package:flutter/material.dart";
import "package:table_calendar/table_calendar.dart";

import "../../constants/name-definations/image_strings.dart";
import "../../constants/name-definations/text_strings.dart";

class OraViewDeep extends StatefulWidget {
  final DateTime oraDate;

  OraViewDeep({required this.oraDate, super.key});

  @override
  State<OraViewDeep> createState() => _OraViewDeepState();
}

class _OraViewDeepState extends State<OraViewDeep> {
  final TextEditingController _oraReportInputController =
      TextEditingController();
  String _oraReportInput = '';

  void _oraDisplayInput() {
    setState(() {
      _oraReportInput = _oraReportInputController.text;
      _oraReportInputController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.receipt_long_rounded), text: 'Report'),
              Tab(icon: Icon(Icons.receipt), text: 'TDL'),
            ],
          ),
          title: Text(widget.oraDate.toString()),
        ),
        body: TabBarView(
          children: [
            Container(
                // alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              _oraReportInput,
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Form(
                                child: TextFormField(
                              controller: _oraReportInputController,
                              maxLines: null,
                              decoration: InputDecoration(
                                  prefixIcon:
                                      const Icon(Icons.receipt_long_rounded),
                                  labelText: oraReportInputText,
                                  hintText: oraReportInputText,
                                  suffixIcon: SizedBox(
                                    height: 20.0,
                                    child: IconButton(
                                        onPressed: _oraDisplayInput,
                                        icon: const Icon(Icons.send)),
                                  ),
                                  border: const OutlineInputBorder()),
                            ))
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(24.0),
              child: (Column(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Form(
                        child: TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.receipt),
                          labelText: oraTDLInputText,
                          hintText: oraTDLInputText,
                          suffixIcon: SizedBox(
                            height: 20.0,
                            child: IconButton(
                                onPressed: () {}, icon: const Icon(Icons.send)),
                          ),
                          border: const OutlineInputBorder()),
                    ))
                  ],
                )
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
