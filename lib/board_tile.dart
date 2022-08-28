import 'package:flutter/material.dart';
import 'package:tic_tac_toe/tile_state.dart';

class BoardTile extends StatelessWidget {
  final TileState tileState;
  final double dimension;
  final VoidCallback onPressed;

  const BoardTile({Key? key,required this.tileState,required this.dimension,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension,
      height: dimension,
      child: FlatButton(
        onPressed: onPressed,
        child: _widgetForTileState(),
      ),
    );
  }

  Widget _widgetForTileState() {
    Widget widget;
    switch(tileState){
      case TileState.EMPTY: {
        widget = Container();
    }
    break;
      case TileState.CROSS: {
        widget = Image.asset('assets/images/x.png');
      }
      break;
      case TileState.CIRCLE: {
        widget = Image.asset('assets/images/o.png');
      }
      break;
    }
    return widget;
  }
}
