import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharm_budget_app/src/core/common/debouncer.dart';

import '../../../core/components/dialog/custom_dialog.dart';
import '../../../core/components/spacers/vertical_spacer.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';
import '../../common/widgets/product_item.dart';
import '../view_model/search_view_model.dart';

part 'widgets/search_input.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final Debouncer _debouncer;
  late final SearchViewModel _searchViewModel;

  @override
  void initState() {
    super.initState();
    _debouncer = Debouncer(milliseconds: 500);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchViewModel = context.read<SearchViewModel>();
    });
  }

  void _onSearchInputChanged(String value) {
    _debouncer.run(() => _searchViewModel.searchProduct(value));
  }

  void _onSearchInputClear() {
    _searchViewModel.searchProduct('');
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchViewModel, SearchState>(
      listener: (context, state) {
        if (state is ErrorState) {
          showCustomDialog(context, subtitle: state.message);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Produtos', style: AppTypography.headline4.copyWith(color: AppColors.grey100)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSpacing.x4),
          child: Column(
            children: [
              _SearchInput(
                onChanged: _onSearchInputChanged,
                onClear: _onSearchInputClear,
              ),
              VerticalSpacer.x8(),
              BlocBuilder<SearchViewModel, SearchState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const CircularProgressIndicator();
                  }
                  if (state is LoadedEmptyState) {
                    return Text(
                      'Não foi encontrado nenhum produto.',
                      style: AppTypography.bodyLarge,
                      textAlign: TextAlign.center,
                    );
                  }
                  if (state is LoadedState) {
                    final products = state.products;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: products.length,
                        itemBuilder: (context, index) => ProductItem(
                          productModel: products[index],
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
