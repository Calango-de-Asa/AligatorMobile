import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashBoardController = _DashBoardController with _$DashBoardController;

abstract class _DashBoardController with Store {
  @observable
  int pageIndex = 1;

  @action
  void onTapIcon(int nextIndex) {
    this.pageIndex = nextIndex;
  }
}
