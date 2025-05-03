part of 'search_bloc.dart';

class SearchState extends Equatable {
  final String query;
  final bool isSearchActive;

  const SearchState({
    this.query = '',
    this.isSearchActive = false,
  });

  SearchState copyWith({
    String? query,
    bool? isSearchActive,
  }) {
    return SearchState(
      query: query ?? this.query,
      isSearchActive: isSearchActive ?? this.isSearchActive,
    );
  }

  @override
  List<Object?> get props => [query, isSearchActive];
}
