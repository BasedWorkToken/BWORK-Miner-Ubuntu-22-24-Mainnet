#!/usr/bin/env bash


#Check for dotnet   # Verify installation
   
if ! command -v dotnet &> /dev/null
then
    echo "dotnet 6.0 is not found or not installed."
    echo "Installing dotnet 6.0..."

    # Add Microsoft package signing key and repository
    sudo apt install -y apt-transport-https
    sudo apt install -y dotnet6

    # Verify the installation
    dotnet --version

    echo "dotnet 6.0 is installed. Rerun the script to start."
else

    dotnet_version=$(dotnet --version)
    if [[ $dotnet_version == 6.* ]]
    then
    	echo "dotnet 6.0 is installed dont worry about installiing it"
    else
	echo "Installing dotnet 6.0 because it isnt installed"
	
	
	
	
	echo "dotnet 6.0 is not found or not installed."
	echo "Installing dotnet 6.0..."

	# Add Microsoft package signing key and repository
	sudo apt install -y apt-transport-https
	sudo apt install -y dotnet6


	# Verify the installation
	dotnet --version

	echo "dotnet 6.0 is installed. Rerun the script to start."

    
    
    
    
	exit 1
    fi
fi


while : ; do
  dotnet BasedWorkToken.dll
  [[ $? -eq 22 ]] || break
done

