import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:lindrtodo/provider/logic/home_view_model.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => HomeViewModel()),
];