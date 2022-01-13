enum BottomNavBarItems {First, Second}
class BottomNavBarState {
  late final int index;
  late final String label;

  BottomNavBarState.firstPage() {
    this.index = 0;
    this.label = 'Change';
  }
  BottomNavBarState.secondPage() {
    this.index = 1;
    this.label = 'Currency';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BottomNavBarState &&
          runtimeType == other.runtimeType &&
          index == other.index &&
          label == other.label;

  @override
  int get hashCode => index.hashCode ^ label.hashCode;
}