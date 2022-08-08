const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');

let mode = 'development';
if (process.env.NODE_ENV === 'production') {
  mode = 'production';
}

const plugins = [
  new MiniCssExtractPlugin({
    filename: 'bundle.css',
  }),
];

module.exports = {
  mode,
  plugins,
  entry: ['./src/index.js', './src/index.scss'],
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: './bundle.js',
    clean: true,
    assetModuleFilename: 'assets/[hash][ext][query]',
  },
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            cacheDirectory: true,
          },
        },
      },
      {
        test: /\.(s[ac]|c)ss$/i,
        use: [
          MiniCssExtractPlugin.loader,
          'css-loader',
          'postcss-loader',
          'sass-loader',
        ],
      },
    ],
  },
};
