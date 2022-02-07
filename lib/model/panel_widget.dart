import 'package:eklbm_bima_ciputra_satrio/config/size.config.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:eklbm_bima_ciputra_satrio/model/buildAboutText.dart';

class PanelWidget extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget({
    Key? key,
    required this.controller,
    required this.panelController,
  }) : super(key: key);

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  @override
  Widget build(BuildContext context) {
    ListView(
        padding: EdgeInsets.zero,
        controller: widget.controller,
        children: <Widget>[
          SizedBox(height: 12),
          buildDragHandle(),
          SizedBox(height: 18),
        ],
      );
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(20)),),
      child: Scaffold(
        body: Body(),
      ),
    );
  }
/*class _PanelWidgetState extends State<PanelWidget> {
  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: widget.controller,
        children: <Widget>[
          SizedBox(height: 12),
          buildDragHandle(),
          SizedBox(height: 18),
        ],
      );*/

  Widget buildDragHandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onTap: togglePanel,
      );

  void togglePanel() => widget.panelController.isPanelOpen
      ? widget.panelController.close()
      : widget.panelController.open();
}
