npm i bulma node-sass sass-loader -D --prefix assets
sed -i -e "s/'css-loader'/'css-loader', 'sass-loader'/" assets/webpack.config.js 
sed -i -e "s/\\.css/\\.scss/" assets/webpack.config.js 
sed -i -e "s/app.css/app.scss/" assets/js/app.js 
mv assets/css/app.css assets/css/app.scss
echo "@import "./bulma.sass";" >> assets/css/app.scss