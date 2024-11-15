import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/flexible_viewmodel.dart';

class FlexibleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<FlexibleViewModel>(),
      child: Consumer<FlexibleViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Flexible Widget with MVVM"),
            ),
            body: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: viewModel.flex,
                      child: Container(
                        color: Colors.blueAccent,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Flexible ${viewModel.flex}",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.greenAccent,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Fixed Flex 1",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => viewModel.updateFlex(1),
                      child: Text("Flex 1"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => viewModel.updateFlex(2),
                      child: Text("Flex 2"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => viewModel.updateFlex(3),
                      child: Text("Flex 3"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
