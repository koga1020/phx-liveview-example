npm i bulma node-sass sass-loader file-loader @fortawesome/fontawesome-free -D --prefix assets
sed -i -e "s/'css-loader'/'css-loader', 'sass-loader'/" assets/webpack.config.js 
sed -i -e "s/\\.css/\\.scss/" assets/webpack.config.js 
sed -i -e "s/app.css/app.scss/" assets/js/app.js 
mv assets/css/app.css assets/css/app.scss
echo "@import \"~bulma/bulma\";" >> assets/css/app.scss
echo "$fa-font-path: \"~@fortawesome/fontawesome-free/webfonts\";" >> assets/css/app.scss

cat<< EOS

    add file loader rule to assets/webpack.config.js.

    {
    test: /\.(png|woff|woff2|eot|ttf|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
    use: {
        loader: 'file-loader',
        options: {
        name: '[name].[ext]',
        outputPath: '../fonts'
        }
    }
    },

EOS