import 'dart:async';

import 'package:first_application/presentation/state_renderer/state_renderer_impl.dart';

abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  StreamController _inputStreamController =
      StreamController<FlowState>.broadcast();

  @override
  void dispose(){
    _inputStreamController.close();

  }



  @override
  Sink get inputState => _inputStreamController.sink;







  @override
  Stream<FlowState> get outputState => _inputStreamController.stream.map((flowstate) => flowstate);
}

abstract class BaseViewModelInputs {
  void start();
  void dispose();

  Sink get inputState;
}

abstract class BaseViewModelOutputs {
  Stream<FlowState> get outputState;
}
