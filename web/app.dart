import 'dart:html';

import 'package:react/react_client.dart';
import 'package:react/react_dom.dart' as react_dom;

import 'main.dart';
import 'wrapper.dart';

main() {
  setClientConfiguration();

  // Render the main app react component into the app div.
  // For more details see: https://facebook.github.io/react/docs/top-level-api.html#react.render
  react_dom.render(Main({}), document.getElementById('app'));
}

