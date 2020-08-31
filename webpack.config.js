const path = require('path');
const TerserPlugin = require('terser-webpack-plugin')

module.exports = {
  entry: {
    main: './source/assets/javascripts/index.js'
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /(node_modules)/,
        loader: 'babel-loader'
      },
      {
        test: /\.(sa|sc|c)ss$/,
        use: ['style-loader', 'css-loader', 'sass-loader']
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      }
    ]
  },

  optimization: { 
    minimize: true, 
    minimizer: [ 
      new TerserPlugin({ 
        cache: true, 
        parallel: true, 
        terserOptions: { 
          output: {
            comments: false
          }
        }
      }), 
    ]
  }
};
