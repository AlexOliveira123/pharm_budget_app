part of 'search_view_model.dart';

abstract class SearchState extends Equatable {}

class InitialState extends SearchState {
  @override
  List<Object> get props => [];
}

class LoadingState extends SearchState {
  @override
  List<Object> get props => [];
}

class LoadedState extends SearchState {
  LoadedState(this.products);

  final List<ProductModel> products;

  @override
  List<Object> get props => [products];
}

class LoadedEmptyState extends SearchState {
  @override
  List<Object> get props => [];
}

class ErrorState extends SearchState {
  final String message;

  ErrorState(this.message);
  @override
  List<Object> get props => [];
}
