bundle exec middleman build
cd build && git add . && git commit -m "update" && git push -f origin gh-pages
cd ../
