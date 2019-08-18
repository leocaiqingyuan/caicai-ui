# 清空dist目录中的旧文件
echo '正在清除原有dist文件...'
rm -rf dist/*.css

# 打包出不压缩的CSS文件caicai-ui.css
echo '正在生成caicai-ui.css文件...'
npx postcss src/caicai-ui.css -o dist/caicai-ui.css -u postcss-import autoprefixer --no-map

# 打包出被压缩的CSS文件caicai-ui.min.css
echo '正在生成caicai-ui.min.css文件...'
npx postcss src/caicai-ui.css -o dist/caicai-ui.min.css -u postcss-import autoprefixer cssnano --no-map
