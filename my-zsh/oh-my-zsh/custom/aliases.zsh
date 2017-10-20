# ohmyzsh

    alias zshaliases='gedit ~/work/home/my-zsh/oh-my-zsh/custom/aliases.zsh&'

# navigation

    export MANPATH=$MANPATH:$HOME/my_root/share/man/
    alias ls='ls -F --color=auto --group-directories-first'
    alias ll='ls -chal --group-directories-first'
    alias lla='function _lla(){ ls -chal $ANDROID_BUILD_TOP/$1; };_lla'
    alias grep='grep --color=auto'
    alias ec='emacsclient -n -a emacs'
    alias -g '...'='../..'
    alias -g '....'='../../..'
    alias -g '.....'='../../../..'
    alias -g 'L'='| less'
    alias -g 'G'='| grep'
    alias -g 'EG'='| egrep'
    alias -g 'tree'='tree --dirsfirst'

# path shortcuts

    alias 'cdhome'='cd ~'
    alias 'cdws'='cd ~/work/ws_p4'
    alias 'cdeyeson'='cd ~/work/ws_eyeson'
    alias 'cdtoolbox'='cd ~/work/toolbox'
    alias 'cdzsh'='cd ~/work/home/my-zsh/oh-my-zsh'
    alias 'cdmyprogram'='cd ~/work/my_program'
    alias 'cddocumentations'='cd ~/work/documentations'
    alias 'cdohmyzsh'='cd ~/work/my_program/.oh-my-zsh'

# eclipse

    alias eedit='~/work/my_program/eclipse/cpp-oxygen/eclipse/eclipse'
    alias jjedit='~/work/my_program/eclipse/jee-2019-12/eclipse/eclipse'
    alias idea="/snap/intellij-idea-community/221/bin/idea.sh"

# intelliJ

    alias idea="/snap/intellij-idea-community/232/bin/idea.sh"
    idea-ag() { ag -l "$@" | xargs /snap/intellij-idea-community/232/bin/idea.sh }

# ag java

    alias ag-java="ag -G '\.java$'"
    alias ag-pom="ag -G 'pom.xml'"
    alias ag-c="ag -G '\.(c|cpp|h)$'"
    alias ag-h="ag -G '\.(h)$'"
    alias ag-dep="ag -G '\.(dep)$'"
    alias ag-mk="ag -G '\.(mk)$'"
    alias ag-in="ag -G '\.(in)$'"

# searching

    ffile() { find -L "$1" -type f -name "$2"}
    fdir() { find -L "$1" -type f -mindepth 2 -maxdepth 2 -type d }

# misc

    alias ps="ps -aexf"
    alias h="history -80"
    alias minicom='minicom -c on -o'
    alias telstb="telnet 10.190.10.5"
    alias sshstb="ssh 10.190.10.5 -l root"
    alias 'chrome'='/opt/google/chrome/chrome '

# make

    alias mmake='make -f Makefile.components'

## git

    alias 'gs'='git status'
    alias 'gdiff'='git diff'
    alias 'gdiffc'='git diff --cached'
    alias 'gdiffp'='git diff HEAD@{1}'
    alias 'gtags'='git tag --list'
    alias 'gsh'='git show'
    alias 'gref'='git show-ref'

# Typos alias

    alias 'g'=git
    alias 'dc'=cd
    alias 'gti'=git
    alias 'gerp'='grep'

# apache server

  alias startserver='sudo /etc/init.d/apache2 restart'

# kafka
alias kafka_listen='docker exec -it  kafkastreamsexamples_kafka_1 bin/sh /usr/bin/kafka-console-consumer --bootstrap-server localhost:9092 --property print.key=true --topic $1'
alias kafka_list_groups='docker exec -ti kafkastreamsexamples_kafka_1 sh /usr/bin/kafka-consumer-groups --bootstrap-server localhost:9092 --all-groups --describe'
alias kafka_list_topics='docker exec -it  kafkastreamsexamples_kafka_1 bin/sh /usr/bin/kafka-topics --list --bootstrap-server localhost:9092'
alias kafka_delete_topic='docker exec -it  kafkastreamsexamples_kafka_1 bin/sh /usr/bin/kafka-topics --bootstrap-server localhost:9092 --delete --topic $1'
alias kafka_console_consumer='docker exec -it  kafkastreamsexamples_kafka_1 bin/sh /usr/bin/kafka-console-consumer --bootstrap-server localhost:9092 --from-beginning --property print.key=true --property key.separator="-" --topic $1'

