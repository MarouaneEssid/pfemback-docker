wget  https://github.com/MarouaneEssid/pfemback-docker/archive/main.tar.gz;
tar xzvf main.tar.gz;
mv pfemback-docker-main/* ./;
rm -r pfemback-docker-main;
rm main.tar.gz;
docker build -t pfem-back ./
docker build -t pfem-front -f Dockerfile2 ./
