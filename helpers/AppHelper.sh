#!/bin/bash
PS3='Choose your poison: '
apps=("Start MHA Docker" "Stop MHA Docker" "Start Autosploit Docker" "Stop Autosploit Docker" "Start NoSQLMap Docker" "Start stego-toolkit Docker" "Start Juiceshop Docker" "Stop Juiceshop Docker" "Start Spiderfoot Docker" "Stop Spiderfoot Docker" "Update All Apps" "Print List of Tools" "Quit")
select fav in "${apps[@]}"; do
    case $fav in
        "Start MHA Docker")
            echo "Start the Mail Header Analyzer Server"
	    /home/kali/apps/blueteam/email-header-analyzer/mhastart.sh
            ;;
        "Stop MHA Docker")
            echo "Stop the Mail Header Analyzer Server"
	    /home/kali/apps/blueteam/email-header-analyzer/mhastop.sh
            ;;
        "Start Autosploit Docker")
            echo "Start Autosploit"
	    /home/kali/apps/exploit/AutoSploit/Docker/startautosploit.sh
	    break
            ;;
        "Stop Autosploit Docker")
            echo "Stop Autosploit"
	    /home/kali/apps/exploit/AutoSploit/Docker/stopautosploit.sh
	    break
            ;;            
         "Start NoSQLMap Docker")
            echo "Start NoSQLMap"
	    /home/kali/apps/exploit/NoSQLMap/startnosqlmap.sh
	    break
            ;;
         "Start stego-toolkit Docker")
            echo ""
            echo ""
            echo "To analyse file, place it in ~/apps/forensics/stego-toolkit/data"
            echo ""
            echo "Starting stego-toolkit"
            echo "Type exit to quit"
            sudo docker run -it --rm -v $pwd/data/:/data dominicbreuker/stego-toolkit /bin/bash
            break
            ;;
         "Start Juiceshop Docker")
            echo ""
            echo ""
	    /home/kali/Juiceshop/start-juiceshop
	    break
            ;;
         "Stop Juiceshop Docker")
            echo ""
            echo ""
	    /home/kali/Juiceshop/stop-juiceshop
	    break
            ;;
         "Start Spiderfoot Docker")
            echo ""
            echo ""
	    /home/kali/apps/osint/spiderfoot/startspiderfoot
	    break
            ;;        
         "Stop Spiderfoot Docker")
            echo ""
            echo ""
	    /home/kali/apps/osint/spiderfoot/stopspiderfoot
	    break
            ;;
	 "Update All Apps")
	    echo ""
            echo ""
            ~/apps/./AppUpdater.zsh
 	    break
	    ;;
         "Print List of Tools")
            echo ""
            echo ""
            echo "These apps can be run from the terminal as they are shown below and can be run from any location"
            echo "For more details on these apps, take a look at the homepage in the browser"
            echo "
========
Blue Team
========
- chkrootkit

========
========


 
========
Crypto and Cracking
========
- bopscrk
- brutex
- ctfbreakrsa
- cewl
- crunch
- cupp
- duplicut
- frcrackzip
- haiti
- hashcat
- hash-identifier
- hashpump
- hatch
- hate_crack
- hydra
- jwt-cracker
- john
- mentalist
- nomorexor
- pnwgen
- rsactftool
- rsatool
- search-that-hash
- ttpassgen
- twofi
- wordlistctl
- x0r
- xor-decrypt
- XOR-MultilineFiledir (jump to directory - Read HowTo)
- xortool
- zydra

=======
=======



=======
Exploit
=======
- avet
- chimera
- dkmc
- evil-winrm
- fireelf
- owt (Offensive Wifi Toolkit)
- pwncat
- routersploit
- seth
- sqlmap
- veil (currently broken)
- wildpwn
- xsstrike
- xeexee

=======
=======



=======
Post-Exploit - NOTE: Several of these are designed to be run on the target system
=======
- bloodhound
- girsh
- enum4linux
- linux-exploit-suggester-2
- linenum
- linenumdir (jump to directory)
- linPEASdir (jump to directory)
- winPEASdir (jump to directory)
- powerlessdir (jump to directory)
- powersploit (will output directory structure)
- privesccheckdir (jump to directory)
- peh

=======
=======



=======
Forensics
=======
- audiostego
- autovolatility
- binwalk
- brutesharkcli
- depix
- exiftool
- foremost
- peepdf
- ssh_decoder
- stegcracker
- stegsolve
- volatility

=======
=======



=======
Mobile
=======
- apktool
- apkleaks

=======
=======



=======
OSINT
=======
- ghunt
- gitgraberdir (jump to directory)
- sherlock
- cardpwn
- h8mail
- gitjacker
- sif (Social Int Framework)
- shodansploit
- scavenger

=======
=======



=======
Reversing and Binary Exploit
=======
- fuzza
- overflowhelper
- peframe
- ropstar

=======
=======



=======
Scanning and Recon
=======
- autorecon (results placed in current directory)
- shodansploit
- s3scanner
- sn1per



=======
misc
=======
- anonsurf

=======
=======

"	
    	    break
            ;;   
         "Quit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
