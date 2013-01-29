# from http://www.earthinfo.org/linux-disk-usage-sorted-by-size-and-human-readable/
#alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
function duf {
  du -sk "$@" | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done
}

function top10() {
	cat ~/.bash_history | awk '{print $1}' | sort | uniq -c | sort -nr | head -10
}

#Usage: ii
RED='\e[1;31m'
BLUE='\e[1;34m'
CYAN='\e[1;36m'
NC='\e[0m'

function ii(){
    clear
    echo -e "\nYou are logged on ${RED}$HOSTNAME"
    echo -e "\nAdditional information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Memory stats :$NC " ; free -m
    echo -e "\n${RED}Disk usage :$NC " ; df -lh
    echo -e "\n${RED}Local IP Address :$NC" ; /sbin/ifconfig en0 | awk '/inet/ { print $2 } ' | sed -e s/addr://
    echo -e
"----------------------------------------------------------------------\n"
}

