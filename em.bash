#APPEND THIS CODE TO YOUR .bashrc file

em(){
	if [[ -z $1 ]]; then
		echo "subcommands: ls, mk, rm, a, d";
	elif [[ $1 == "ls" ]]; then 
		ls ~/Documents/apps/python_envs/;

	elif [[ $1 == "mk" && -z $2 ]]; then
		echo "can't make: no name specified";
    elif [[ $1 == "mk" ]]; then
        #echo "making environment ${2}";
        virtualenv ~/Documents/apps/python_envs/${2};

    elif [[ $1 == "rm" && -z $2 ]]; then
        echo "can't remove: no name specified";
    elif [[ $1 == "rm" ]]; then
        rm -rf ~/Documents/apps/python_envs/${2}/;

    elif [[ $1 == "a" && -z $2 ]]; then
        echo "can't activate: no name specified";
    elif [[ $1 == "a" ]]; then
        #echo "activating environment ${2}";
        source ~/Documents/apps/python_envs/${2}/bin/activate;

    elif [[ $1 == "d" ]]; then
        #echo "deactivating environment";
        deactivate;
	fi
}