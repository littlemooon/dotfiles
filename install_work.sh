echo '--- projects'
git clone -b develop https://github.com/albacross/api.git ~/b
git clone -b develop https://github.com/albacross/butler.git ~/b
git clone -b develop https://github.com/albacross/frontend.git ~/b
git clone -b develop https://github.com/albacross/lambda.git ~/b
git clone -b develop https://github.com/albacross/marciana.git ~/b

echo '--- dependencies'
cd ~/b/api && bundle install
cd ~/b/butler && bundle install
cd ~/b/frontend && npm i
cd ~/b/lambda && npm i
cd ~/b/marciana && npm i && lein install
