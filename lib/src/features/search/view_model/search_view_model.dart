import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/product_model.dart';
import '../repository/i_search_repository.dart';

part 'states.dart';

class SearchViewModel extends Cubit<SearchState> {
  final ISearchRepository _repository;

  SearchViewModel(this._repository) : super(InitialState());

  Future<void> searchProduct(String value) async {
    if (value.trim().isEmpty) return emit(SearchEmptyState());
    try {
      emit(LoadingState());
      final result = await _repository.getProductByName(value);
      emit(result.isEmpty ? LoadedEmptyState() : LoadedState(result));
    } catch (_) {
      emit(ErrorState('Falha na comunicação!\nTente novamente'));
    }
  }
}
