#!/bin/bash

# Function to update system
update_system() {
    clear
    echo "Updating system..."
    sudo apt-get update
    sudo apt-get upgrade -y
    echo "System updated successfully."
}

install_software() {
    clear
    PS3="Select a software to install: "
    options=("Firefox" "Google Chrome" "Vim" "Visual Studio Code" "Git" "VLC media player" "Slack" "Discord" "Telegram" "WinRAR" "GIMP" "Inkscape" "Audacity" "Steam" "Skype" "Zoom" "Sublime Text" "Atom" "Brave Browser" "Docker" "Krita" "Blender" "Unity Hub" "Zoom" "Microsoft Teams" "Android Studio" "FileZilla" "TeamViewer" "Dropbox" "Spotify" "VirtualBox" "Quit-press 0")
    select opt in "${options[@]}"
    do
        case $REPLY in
            1) sudo apt-get install firefox ;;
            2) sudo apt-get install google-chrome-stable ;;
            3) sudo apt-get install vim ;;
            4) sudo apt-get install code ;;
            5) sudo apt-get install git ;;
            6) sudo apt-get install vlc ;;
            7) sudo snap install slack --classic ;;
            8) sudo snap install discord ;;
            9) sudo snap install telegram-desktop ;;
            10) sudo apt-get install unrar ;;
            11) sudo apt-get install gimp ;;
            12) sudo apt-get install inkscape ;;
            13) sudo apt-get install audacity ;;
            14) sudo apt-get install steam ;;
            15) sudo snap install skype --classic ;;
            16) sudo snap install zoom-client ;;
            17) sudo apt-get install sublime-text ;;
            18) sudo snap install atom --classic ;;
            19) sudo apt-get install brave-browser ;;
            20) sudo apt-get install docker ;;
            21) sudo apt-get install krita ;;
            22) sudo apt-get install blender ;;
            23) sudo snap install unity-hub --classic ;;
            24) sudo apt-get install zoom ;;
            25) sudo snap install teams ;;
            26) sudo snap install android-studio --classic ;;
            27) sudo apt-get install filezilla ;;
            28) sudo apt-get install teamviewer ;;
            29) sudo snap install dropbox ;;
            30) sudo snap install spotify ;;
            31) sudo apt-get install virtualbox ;;
            0) break ;;
            *) echo "Invalid option. Please select again." ;;
        esac
    done
}



monitor_processes() {
    gnome-terminal --execute htop
}

file_management() {
    clear
    while true; do
        echo "Welcome, The Main Menu is given below:"
        echo "1- List all Files and Directories"
        echo "2- Create New Files"
        echo "3- Delete Existing Files"
        echo "4- Rename Files"
        echo "5- Edit File Content"
        echo "6- Search Files"
        echo "7- Details of Particular File"
        echo "8- View Content of File"
        echo "9- Sort File Content"
        echo "10- List only Directories (Folders)"
        echo "11- List Files of Particular Extension"
        echo "12- Count Number of Directories"
        echo "13- Count Number of Files"
        echo "14- Sort Files in a Directory"
        echo "0- Exit"
        echo
        read -p "What do you wanna do?: " opt1

        case $opt1 in
            1) echo "List all files and Directories here.."
               echo "Showing all files and directories...."
               echo "-------------------------------OutPut-------------------------"
               ls
               echo " " ;;
            2) echo "Create New Files here.."
               echo "Which type of file you want to create!"
               echo "1- .c"
               echo "2- .sh"
               echo "3- .txt"
               read -p "Enter your choice from 1-3: " filechoice
               if [ "$filechoice" == 1 ]; then
                   read -p "Enter File Name without .c Extension: " filename
                   touch "$filename.c"
                   echo "-------------------------------OutPut-------------------------"
                   echo "File Created Successfully"
                   echo " "
               elif [ "$filechoice" == 2 ]; then
                   read -p "Enter File Name without .sh Extension: " filename2
                   touch "$filename2.sh"
                   echo "-------------------------------OutPut-------------------------"
                   echo "File Created Successfully"
                   echo " "
               elif [ "$filechoice" == 3 ]; then
                   read -p "Enter File Name without .txt Extension: " filename3
                   touch "$filename3.txt"
                   echo "-------------------------------OutPut-------------------------"
                   echo "File Created Successfully"
                   echo " "
               else
                   echo "Invalid Input..Try Again."
                   echo " "
               fi ;;
            3) echo "Delete existing files here.. "
               read -p "Enter name of File you want to Delete! (Please Enter full Name with Extension): " delfile
               echo "-------------------------------OutPut-------------------------"
               if [ -f "$delfile" ]; then
                   rm "$delfile"
                   echo "Successfully Deleted."
                   echo " "
               else
                   echo "File Does not Exist..Try again"
                   echo " "
               fi ;;
            4) echo "Rename files here.."
               read -p "Enter Old Name of File with Extension: " old
               echo "Checking for file..."
               if [ -f "$old" ]; then
                   echo "Ok File Exist."
                   read -p "Now Enter New Name for file with Extension: " new
                   mv "$old" "$new"
                   echo "-------------------------------OutPut-------------------------"
                   echo "Successfully Renamed."
                   echo "Now Your File Exist with $new Name"
               else
                   echo "$old does not exist..Try again with correct filename."
               fi
               echo " " ;;
            5) echo "Edit file content here.."
               read -p "Enter File Name with Extension: " edit
               echo "-------------------------------OutPut-------------------------"
               echo "Checking for file.."
               if [ -f "$edit" ]; then
                   echo "Opening file.."
                   nano "$edit"
                   echo " "
               else
                   echo "$edit File does not exist..Try again."
               fi ;;
            6) echo "Search files here.."
               read -p "Enter File Name with Extension to search: " f
               echo "-------------------------------OutPut-------------------------"
               if [ -f "$f" ]; then
                   echo "Searching for $f File"
                   echo "File Found."
                   find /home -name "$f"
                   echo " "
               else
                   echo "File Does not Exist..Try again."
                   echo " "
               fi ;;
            7) echo "Detail of file here.."
               read -p "Enter File Name with Extension to see Detail: " detail
               echo "-------------------------------OutPut-------------------------"
               echo "Checking for file.."
               if [ -f "$detail" ]; then
                   echo "Loading Properties.."
                   stat "$detail"
               else
                   echo "$detail File does not exist..Try again"
               fi
               echo " " ;;
            8) echo "View content of file here.."
               read -p "Enter File Name: " readfile
               echo "-------------------------------OutPut-------------------------"
               if [ -f "$readfile" ]; then
                   echo "Showing file content.."
                   cat "$readfile"
               else
                   echo "$readfile does not exist"
               fi
               echo " " ;;
            9) echo "Sort files content here.."
               read -p "Enter File Name with Extension to sort: " sortfile
               echo "-------------------------------OutPut-------------------------"
               if [ -f "$sortfile" ]; then
                   echo "Sorting File Content.."
                   sort "$sortfile"
               else
                   echo "$sortfile File does not exist..Try again."
               fi
               echo " " ;;
            10) echo "List of all Directories here.."
                echo "showing all Directories..."
                echo "-------------------------------OutPut-------------------------"
                ls -d */
                echo " " ;;
            11) echo "List of Files with Particular extensions here.."
                read -p "Which type of file list you want to see? (Enter your choice from 1-3): " extopt
                echo "-------------------------------OutPut-------------------------"
                if [ "$extopt" == 1 ]; then
                    echo "List of .c Files shown below."
                    ls *.c
                elif [ "$extopt" == 2 ]; then
                    echo "List of .sh Files shown below."
                    ls *.sh
                elif [ "$extopt" == 3 ]; then
                    echo "List of .txt Files shown below."
                    ls *.txt
                else
                    echo "Invalid Input..Try again.."
                fi
                echo " " ;;
            12) echo "Total number of Directories here.."
                echo "Loading all directories.."
                echo "Counting.."
                echo "Number of Directories are : "
                echo */ | wc -w
                echo " " ;;
            13) echo "Total Numbers of Files in Current Directory here.."
                echo "Loading all files.."
                echo "Number of Files are : "
                ls -l | grep -v 'total' | grep -v '^d' | wc -l
                echo " " ;;
            14) echo "Sort Files here.."
                echo "Your Request of Sorting file is Generated."
                echo "Sorting.."
                echo "-------------------------------OutPut-------------------------"
                ls | sort
                echo " " ;;
            0) echo "Good Bye.."
               echo "Successfully Exit"
               break ;;
            *) echo "Invalid Input..Try again...." ;;
        esac
    done
}




# Main menu
while true; do
    clear
    echo "Main Menu"
    echo "1) Update System"
    echo "2) Monitor Processes"
    echo "3) File Management"
    echo "4) Install Software"
    echo "0) Quit"
    read -p "Select an option: " choice
    case $choice in
        1) update_system ;;
        2) monitor_processes ;;
        3) file_management ;;
        4) install_software ;;
        0) echo "Exiting..."; exit ;;
        *) echo "Invalid option. Please select again." ;;
    esac
done