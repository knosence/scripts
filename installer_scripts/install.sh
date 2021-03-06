#! /bin/bash

echo -e '||====================||'
echo -e '||    Install Menu    ||'
echo -e '||====================||'

echo -e 'What would you like to do?'
echo -e ' '
echo -e 'Full Install.....................1'
echo -e 'Base Package Install.............2'
echo -e 'Doom Emacs Install...............3'
echo -e 'Rust Install.....................4'
echo -e 'Nvidia Install...................5'
echo -e 'Spacevim Install.................6'
echo -e 'Intellij Idea Install............7'
echo -e ''
echo -e 'Exit.............................0'
echo ''

read input
 
case "$input" in
    1)  clear
        source $HOME/GitRepos/scripts/installer_scripts/full_install.sh
        ;;

    2)  clear
        source $HOME/GitRepos/scripts/installer_scripts/base_package_install.sh
        ;;

    3)  clear
        source $HOME/GitRepos/scripts/installer_scripts/doom_emacs.sh
        ;;
        
    4)  clear
        source $HOME/GitRepos/scripts/installer_scripts/rust_installer.sh
        ;;

    5)  clear
        source $HOME/GitRepos/scripts/installer_scripts/nvidia_drivers.sh
        ;;

    6)  clear
        source $HOME/GitRepos/scripts/installer_scripts/spacevim.sh
        ;;

    7)  clear
        sudo source $HOME/GitRepos/scripts/installer_scripts/intellij_install.sh
        ;;



    *)
        echo 'You Selected the Wrong Selection'
        source $HOME/GitRepos/scripts/main
esac

