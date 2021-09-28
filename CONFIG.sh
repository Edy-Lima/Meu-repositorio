#!/usr/bin/env bash
#MEU SCRIPT PESSOAL.
# Este Shell-Script foi criado para uso pessoal,podendo tambem ser usado em qualquer distro baseada em Ubuntu/Debian. 
# Todos os direitos reservados a (Edy Lima)Blog: https://edylimatutoriais.blogspot.com/
TIME=1
clear
while true;do
echo " "
echo "SEJA BEM VINDO AO $0 PARA UBUNTU!"
echo " "
echo "Escolha uma opção abaixo para começar!
      
      1 - Desativar e excluir Swap
      2 - Remover suporte ao Snap
      3 - Configurar o Sistema
      4 - Atualizar o Sistema
      0 - Sair do sistema"
echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
        1)
        echo Desativando e excluindo Swap....
              # Este comando irá desativar e excluir o Swapfile.
                sleep $TIME
                sudo sed -i.bak '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab && sudo swapoff -a && sudo rm -f -r /swapfile
                clear
                ;;
        2)
        echo Removendo Suporte ao Snap....
              # Este comando irá excluir todo suporte a Snap.
                sleep $TIME
                sudo apt install gnome-software -y
                sudo rm -rf /var/cache/snapd/
                sudo apt autoremove --purge snapd gnome-software-plugin-snap -y
                sudo rm -fr ~/snap
                clear
                ;;
        3)
        echo Configrando o Sistema...
                sleep $TIME
        echo Instalando Google Chrome....
              # Estes comandos irá baixar e instalar o google-chrome em seu desktop.
                wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
                sudo dpkg -i google-chrome-stable_current_amd64.deb
                clear
        echo Adicionando PPA do inkscape....
              # Estes comandos instalam o Inkscape em seu desktop.
                sudo add-apt-repository ppa:inkscape.dev/stable -y
                sudo apt install inkscape -y
                clear
        echo Instalando AnyDesk....
              # Estes comandos instala o Anydessk em seu desktop.
                sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
                sudo echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
                sudo apt update && sudo apt install anydesk -y
              # Desabilita a inicialização do Anydesk com o sistema!.
                sudo systemctl disable anydesk.service
                clear
        echo Instalando Git-GgitHub....
              # Estes comandos instalam o Git-GitHub em seu desktop.
                sudo add-apt-repository ppa:git-core/ppa -y
                sudo apt install git -y
                clear 
        echo Instalando vs-code....
              # Estes comandos instalam o VS-Code em seu desktop.
                sudo apt install software-properties-common apt-transport-https wget -y
                wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
                sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
                sudo apt install code -y
                clear 
        echo Instalando OBS-Studio....
              # Estes comandos instala o OBS-Studio em seu desktop.
                sudo add-apt-repository ppa:obsproject/obs-studio -y
                sudo apt update && sudo apt install obs-studio -y
                clear
        echo instalando OpenShot....
              # Estes comandos instalam o Openshot em seu desktop.
                sudo add-apt-repository ppa:openshot.developers/libopenshot-daily -y
                sudo apt-get update && sudo apt-get install openshot-qt python3-openshot -y
                clear
        echo Atualizando LibreOffice....
              # Estes comandos atualiza o LibreOffice para a versão mais recente.
                sudo add-apt-repository -y ppa:libreoffice/ppa
                sudo apt-get update
                clear
        echo Ativando ExFat....
              # Estes comandos instalam o suporte a Exfat no Ubuntu.-desktop.
                sudo add-apt-repository universe -y
                sudo apt update && sudo apt install exfat-fuse exfat-utils -y
                clear
        echo Instalando programar adicionais...
              # Este comando instala alguns programas extras em seu desktop.
                sudo apt install htop neofetch gufw testdisk glabels default-jre default-jdk -y
                clear
                ;;
        4)
        echo Instalando atualizações do Sistema...
              # Comandos para atualizar o Siatema Ubuntu.
                sudo sudo apt update && sudo apt full-upgrade && sudo apt dist-upgrade -y
                clear
                ;;
                
        0)
        echo Saindo do Sistema...
                sleep $TIME
                exit 0
                ;;
        *)
        echo Opção inválida, tente novamente!
                ;;
esac
done
