// Copyright (c) 2018, The Bnoggles Team.
// Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a MIT-style
// license that can be found in the LICENSE file.

import 'package:bnoggles/utils/game_info.dart';
import 'package:bnoggles/utils/gamelogic/board.dart';
import 'package:bnoggles/utils/gamelogic/coordinate.dart';
import 'package:bnoggles/utils/gamelogic/solution.dart';
import 'package:bnoggles/widgets/board_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResultBoard extends StatelessWidget {
  ResultBoard({
    @required this.board,
    @required this.highlightedTiles,
    @required this.cellWidth,
  });

  final Board board;
  final ValueNotifier<List<Coordinate>> highlightedTiles;
  final double cellWidth;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Coordinate>>(
        valueListenable: highlightedTiles,
        builder: (context, value, child) {
          return BoardWidget(
            selectedPositions: highlightedTiles.value,
            board: board,
            centeredCharacter: CenteredCharacter(cellWidth),
          );
        });
  }
}
