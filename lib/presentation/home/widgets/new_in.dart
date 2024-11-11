import 'package:ecommerce/common/bloc/product/products_display_cubit.dart';
import 'package:ecommerce/common/bloc/product/products_display_state.dart';
import 'package:ecommerce/common/widgets/product/product_card.dart';
import 'package:ecommerce/core/configs/theme/app_colors.dart';
import 'package:ecommerce/domain/product/entity/product.dart';
import 'package:ecommerce/domain/product/usecases/get_new_in.dart';
import 'package:ecommerce/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewIn extends StatelessWidget {
  const NewIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsDisplayCubit(useCase: sl<GetNewInUseCase>())
        ..displayProducts(),
      child: BlocBuilder<ProductsDisplayCubit, ProductsDisplayState>(
        builder: (context, state) {
          if (state is ProductsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ProductsLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _newIn(),
                _products(state.products),
              ],
            );
          }
          if (state is LoadProductsFailure) {
            return const Center(
              child: Text(
                'Failed to load products. Please try again later.',
                style: TextStyle(color: Colors.red),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _newIn() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'New In',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _products(List<ProductEntity> products) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 180,
              decoration: BoxDecoration(
                  color: AppColors.secondBackground,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/bag4.jpeg'), // Load image from assets
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PRADA Velvet Mini-Bag ',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                          Row(
                            children: [
                              Text(
                                "159.00\$",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "170.000\$",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: 4),
    );
  }
}
