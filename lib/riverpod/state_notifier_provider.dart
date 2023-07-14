import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/model/shopping_item_model.dart';

// 반드시 StateNotifer 상속하는 class로 선언하고
// 관리할 State의 type을 반드시 명시
final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
        (ref) => ShoppingListNotifier(),);

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  // super 내부 - 해당 provider를 초기화하는 값으로 넣기.
  ShoppingListNotifier()
      : super([
          ShoppingItemModel(
            name: '김치',
            quantity: 3,
            hasBought: false,
            isSpicy: true,
          ),
          ShoppingItemModel(
            name: '라면',
            quantity: 10,
            hasBought: false,
            isSpicy: false,
          ),
          ShoppingItemModel(
            name: '삼겹살',
            quantity: 5,
            hasBought: false,
            isSpicy: false,
          ),
          ShoppingItemModel(
            name: '빵',
            quantity: 5,
            hasBought: false,
            isSpicy: false,
          ),
          ShoppingItemModel(
            name: '수박',
            quantity: 2,
            hasBought: false,
            isSpicy: false,
          ),
        ]);

  void toggleHasBought({required String name}) {
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                isSpicy: e.isSpicy,
              )
            : e)
        .toList();
  }
}
