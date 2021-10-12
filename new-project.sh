#!/bin/bash

# Definition of the user's projects directory
# Default location for the creation of new projects
PROJECTS_DIR="/home/lbteixeira/Projects"

# Prompt the user for input
read -p "Select the type of project ([c]pp-lib, [p]ython): " PROJECT
read -p "Project's name: " PROJECT_NAME
read -e -p "Project's location: " -i $PROJECTS_DIR PROJECT_LOCATION

# Functions to echo information on the screen
creating(){
 echo Creating a new $1 named $2 in $3
}

exists(){
 echo "There is already a directory called " $1
 echo "Aborting the operation."
}

replace-cpp(){
 cp -r $PWD/cpp-lib $FULL_PATH
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/CMakeLists.txt
 sed -i 's/project_name-tests/'$PROJECT_NAME-tests'/g' $FULL_PATH/Makefile
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/examples/example2/main.cpp
 mv $FULL_PATH/src/project_name $FULL_PATH/src/$PROJECT_NAME
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/src/$PROJECT_NAME/namespace1/add.hpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/src/$PROJECT_NAME/namespace1/add.cpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/src/$PROJECT_NAME/namespace2/subtract.hpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/src/$PROJECT_NAME/namespace2/subtract.cpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/tests/test-1.cpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/tests/test-2.cpp
}

if [ $PROJECT == 'c' ]
then
 creating cpp-library $PROJECT_NAME $PROJECT_LOCATION
 FULL_PATH=$PROJECT_LOCATION/$PROJECT_NAME
 read -p "Do you want to proceed? (y/n)" ans
 if [ $ans == 'y' ]
 then
   # Checks if there is already a project with this name at this directory
   if [ -d $FULL_PATH ]
   then
     exists $FULL_PATH
   else
     replace-cpp
   fi

 fi





elif [ $PROJECT == "p" ]
then
 echo "python"
else
  echo "This isn't a valid project type, please try again."
fi
