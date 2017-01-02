/// This file provides Dart wrappers for the Material-UI APIs
/// exposed in `wrapper.js`.
@JS('MaterialUiWrapper')
library wrapper;

import 'package:js/js.dart';
import 'package:react/react_client.dart';
import 'package:react/react_client/react_interop.dart';

//
// Wrapped APIs
//

@JS()
external Colors get colors;

@JS()
external getMuiTheme(config);

@JS()
@anonymous
class Colors {
  external String get deepOrange500;
}

//
// Wrapped React component classes
//

@JS()
external ReactClass get _FlatButton;

@JS()
external ReactClass get _Dialog;

@JS()
external ReactClass get _RaisedButton;

@JS()
external ReactClass get _MuiThemeProvider;

// Create react-dart factories from the existing JS component classes.
final FlatButton = new ReactJsComponentFactoryProxy(_FlatButton);
final Dialog = new ReactJsComponentFactoryProxy(_Dialog);
final RaisedButton = new ReactJsComponentFactoryProxy(_RaisedButton);
final MuiThemeProvider = new ReactJsComponentFactoryProxy(_MuiThemeProvider);
