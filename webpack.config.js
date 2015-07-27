module.exports = {
  context: __dirname,
  entry: {
    client: "./public/js/app.js",
    server: "./index.js"
  },
  output: {
     path: __dirname + "/dist",
     filename: "[name].bundle.js",
     chunkFilename: "[id].bundle.js"
  },
  module: {
    loaders: [
      { test: /\.js$/, exclude: /node_modules/, loader: "babel-loader"}
    ]
  }
};
