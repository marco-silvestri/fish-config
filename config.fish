  GNU nano 3.2                                                              /home/msilvestri/.config/fish/config.fish                                                                         

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
end

