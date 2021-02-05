dev_dir="/home/ubuntu"

forever stopall
# authbind --deep forever start --sourceDir $dev_dir/www main.js
forever start --sourceDir $dev_dir/chart-match server/chart-match.js
forever start --sourceDir $dev_dir/tango server/tango-server.js
forever start --sourceDir $dev_dir/hexagon server/hexagon.js
forever start --sourceDir $dev_dir/front_page server/front_page.js
forever start --sourceDir $dev_dir/bible server/bible.js
sleep 0.1
forever list
