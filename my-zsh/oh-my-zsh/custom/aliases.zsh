
# navigation

    export MANPATH=$MANPATH:$HOME/my_root/share/man/
    alias ls='ls -F --color=auto' 
    alias ll='ls -chal'
    alias lla='function _lla(){ ls -chal $ANDROID_BUILD_TOP/$1; };_lla'
    alias grep='grep --color=auto' 
    alias ec='emacsclient -n -a emacs'
    alias -g '...'='../..'
    alias -g '....'='../../..'
    alias -g '.....'='../../../..'
    alias -g 'L'='| less'
    alias -g 'G'='| grep'
    alias -g 'EG'='| egrep'

# path shortcuts

    alias 'cdhome'='cd ~'
    alias 'cdws'='cd ~/work/ws_p4'
    alias 'cdtoolbox'='cd ~/work/toolbox'
    alias 'cdzsh'='cd ~/work/home/my-zsh/oh-my-zsh'
    alias 'cdmyprogram'='cd ~/work/my_program'
    alias 'cddocumentations'='cd ~/work/documentations'
    alias 'cdohmyzsh'='cd ~/work/my_program/.oh-my-zsh'

# eclipse

    alias eedit='/home/sah0092/work/my_program/eclipse/cpp-mars/eclipse/eclipse'

# searching

    ffile() { find -L "$1" -type f -name "$2"}
    fdir() { find -L "$1" -type f -mindepth 2 -maxdepth 2 -type d }

    fgrep_find_options="-L ./ ! ( -name .svn -prune ) -type f"
    fgrep_grep_options="-i --color --with-filename --line-number --initial-tab --no-messages"

    fgrep()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*"  \) -print0| xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepc()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.c"  \) -print0| xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgreps()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" \) -print0| xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepcpp()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" \) -print0| xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepjs()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.js"  \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgreph()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.h" -o -name "*.hpp" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepyml()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.yml" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepdep()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.dep" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepmk()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.mk" -o -name "*.inc" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepbuild()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.mk" -o -name "*.dep" -o -name "*.inc" -o -name "*.in" -o -name "*.txt" -o -name "*.cmake" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepcmakeall()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name CMakeLists.txt -o -name "*.cmake" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }
    
    fgrepcmake()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name CMakeLists.txt \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }
    
    fgrepj()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.java" -o -name "*.aidl" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    fgrepaidl()
    {
        find -L "$1" \! \( -name .svn -prune \) -type f \( -name "*.aidl" \) -print0 | xargs -0 grep -i --color --with-filename --line-number --initial-tab --no-messages "$2"
    }

    alias freplace="function __repsed(){ find ./ -type f | xargs sed -i   's/\$1/\$2/g'; };__repsed"

# reindent

    alias reindentdir='find . -name \*.c -o -name \*.h -o -name \*.cpp | xargs indent -bap -bli0 -i4 -l119 -ncs -npcs -npsl -fca -lc119 -fc1 -ts4 -nuts'
    alias reindent='indent -bap -bli0 -i4 -l119 -ncs -npcs -npsl -fca -lc119 -fc1 -ts4 -nuts'

# misc

    alias ps="ps -aexf"
    alias h="history -80"
    alias minicom='minicom -c on -o'
    alias telstb="telnet 10.190.10.5"
    alias sshstb="ssh 10.190.10.5 -l root"
    alias updatePortail='cd /home/sah0092/work/Portail && scp -pr vilaysack vilaysack@10.190.32.4:/var/www/portaildev/'
    alias 'chrome'='/opt/google/chrome/chrome '

# make

    alias mmake='make -f Makefile.components'
  
# perforce

    export P4USER=$USER

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
