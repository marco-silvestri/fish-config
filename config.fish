#Shortcut to Fish conf
function fishconf
	sudo nano ~/.config/fish/config.fish
end

#XAMPP Start and Stop
function xamppsta
	sudo /opt/lampp/lampp start
end

function xamppsto
	sudo /opt/lampp/lampp stop
end

#Reboot now
function startover
	sudo reboot -h now
end

#Slurm on the wifi
function slurmwi
	slurm -d 5 -i wlp4s0
end

#Laravel Mix install and init
function laravelstart
	npm init -y &&
	npm install laravel-mix --save-dev &&
	cp node_modules/laravel-mix/setup/webpack.mix.js ./ &&
	mkdir {src, src/script, src/styles, src/styles/partials} && 
	touch src/script/app.js &&
	touch src/styles/main.scss &&
	touch src/styles/partials/{_common,_variables,_mixins}.scss &&
	touch index.php &&
	node_modules/.bin/webpack --config=node_modules/laravel-mix/setup/webpack.config.js &&
	npm install cross-env --save-dev &&
	git init &&
	echo "node_modules" > .gitignore &&
	touch README.md &&
	## Scripts to paste in package json, try and implement sed
	
	echo '"scripts": {
    	"dev": "npm run development",
        "development": "cross-env NODE_ENV=development node_modules/webpack/bin/webpack.js --progress --hide-modules --config=node_modules/laravel-mix/setup/webpack.config.js",
        "watch": "npm run development -- --watch",
        "hot": "cross-env NODE_ENV=development node_modules/webpack-dev-server/bin/webpack-dev-server.js --inline --hot --config=node_modules/laravel-mix/setup/webpack.config.js",
        "prod": "npm run production",
        "production": "cross-env NODE_ENV=production node_modules/webpack/bin/webpack.js --no-progress -[1;2D-hide-modules --config=node_modules/laravel-mix/setup/webpack.config.js"
        }, ' > scripts.json &&	
	git add . &&
	git commit -m "Initial Commit"
end
