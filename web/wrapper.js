/**
 * This file exposes APIs for usage by Dart code in `wrapper.dart`,
 * and serves as the webpack entry point.
 */
import RaisedButton from 'material-ui/RaisedButton';
import Dialog from 'material-ui/Dialog';
import FlatButton from 'material-ui/FlatButton';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

import * as colors from 'material-ui/styles/colors';
import getMuiTheme from 'material-ui/styles/getMuiTheme';

window.MaterialUiWrapper = {
  // Prefix with underscores so that the Dart getters can be private.
  // Makes the wrapper cleaner.
  _FlatButton: FlatButton,
  _Dialog: Dialog,
  _RaisedButton: RaisedButton,
  _MuiThemeProvider: MuiThemeProvider,

  colors,
  getMuiTheme,
};
