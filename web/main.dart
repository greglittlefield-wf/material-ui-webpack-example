/// In this file, we create a React component
/// which incorporates components provided by Material-UI.
@JS()
library main;

import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:react/react.dart' as react;

import 'wrapper.dart';

final muiTheme = getMuiTheme(jsify({
  'palette': {
    'accent1Color': colors.deepOrange500,
  },
}));

const containerStyles = const {
  'textAlign': 'center',
  'paddingTop': 200,
};

final Function Main = react.registerComponent(() => new _Main());
class _Main extends react.Component {
  @override
  Map getInitialState() => {'open': false};

  void handleRequestClose([_]) => setState({'open': false});

  void handleClick([_]) => setState({'open': true});

  @override
  render() {
    final standardActions = FlatButton({
      'label': 'Ok',
      'primary': true,
      'onClick': handleRequestClose,
    });

    return MuiThemeProvider({'muiTheme': muiTheme}, 
      react.div({'style': containerStyles},
        Dialog({
          'open': state['open'],
          'title': 'Super Secret Password',
          'actions': standardActions,
          'onRequestClose': handleRequestClose,
        }, '1-2-3-4-5'),
        react.h1({}, 'Material-UI'),
        react.h2({}, 'example project'),
        RaisedButton({ 
          'label': 'Super Secret Password',
          'secondary': true,
          'onClick': handleClick,
        }),
      )
    );
  }
}
