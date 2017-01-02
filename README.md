# [Material-UI](http://callemall.github.io/material-ui/) - Unofficial example Dart project

Forked from <https://github.com/callemall/material-ui-webpack-example>, this is an example project that uses uses [react-dart](https://github.com/cleandart/react-dart) to render the JS [Material-UI](http://callemall.github.io/material-ui/) React components from Dart.

See the [`js_components` example in react-dart](https://github.com/greglittlefield-wf/react-dart/tree/js_components/example/js_components) (added in https://github.com/cleandart/react-dart/pull/112) for more info on using JS components in Dart.

This project uses webpack to expose the Material-UI APIs on the window, but Browserify should work as well.

## Installation

Clone the repository, install dependencies:
```sh
git clone git@github.com:greglittlefield-wf/material-ui-webpack-example.git
cd material-ui-webpack-example
npm install
pub get
```

Build the JS assets:
```
npm run build-dev
```

Run the server
```
pub serve
```

You should now be able to access the demo at <http://localhost:8080>.

## Description of [Webpack](http://webpack.github.io/docs/)

Webpack is a module bundler that we are using to run our documentation site.
This is a quick overview of how the configuration file works.

### Webpack Configuration:

#### Entry

Webpack creates entry points for the application to know where it starts.

#### Output

This is where the bundled project will go to and any other files necessary for it to run.

#### Plugins

These are plugins Webpack uses for more functionality.
The HTML Webpack Plugin, for example, will add the index.html to your build folder.

#### Modules

Modules and other things that are required will usually need to be loaded and interpreted by Webpack when bundling, and this is where Webpack looks for the different loaders.
*Loading .js files in es6 and es7 will require a loader like babel-loader to interpret the files into es5.
