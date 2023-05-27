sudo docker build --build-arg USER=financeio -t custom-wsl -f Dockerfile .
sudo docker run --name custom-wsl custom-wsl
sudo docker export --output="custom-wsl.tar.gz" custom-wsl

sudo docker container rm custom-wsl
sudo docker rmi custom-wsl

#wsl.exe --set-default-version 2
#wsl.exe --import custom-wsl .\installDir .\custom-wsl.tar.gz
#wsl.exe --set-default custom-wsl

#sudo del custom-wsl.tar.gz