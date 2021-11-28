#!/bin/bash

###############################################################################
############################### directories ###################################
###############################################################################
# Default locations for the creation of new projects and articles
PROJECTS_DIR="/home/lbteixeira/Projects"
ARTICLE_DIR="/home/lbteixeira/Documents/papers/2022"
DOCS_DIR="/home/lbteixeira/Documents"

# Prompt the user for input
read -p "Select the type of project ([c]pp-lib, cpp-[a]pp, [p]ython, [l]atex-article, latex-[n]otes): " PROJECT

###############################################################################
################################# functions ###################################
###############################################################################
creating(){
 echo Creating a new $1 named $2 at $3
}

exists(){
 echo "There is already a directory called " $1
 echo "Aborting the operation."
}

create-cpp(){
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

create-cpp-app(){
 cp -r $PWD/cpp-app $FULL_PATH
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/CMakeLists.txt
 sed -i 's/project_name-tests/'$PROJECT_NAME-tests'/g' $FULL_PATH/Makefile
 mv $FULL_PATH/src/project_name $FULL_PATH/src/$PROJECT_NAME
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/src/$PROJECT_NAME/hello.hpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/src/$PROJECT_NAME/hello.cpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/src/$PROJECT_NAME/main.cpp
 sed -i 's/project_name/'"$PROJECT_NAME"'/g' $FULL_PATH/tests/test-2.cpp
}

create-latex-article(){
 cp -r $PWD/latex-article $FULL_PATH
}

create-latex-notes(){
 cp -r $PWD/latex-notes $FULL_PATH
}

execute(){
 #$1: $FULL_PATH
 #$2: function to execute
 read -p "Do you want to proceed? (y/n)" ans
 if [ $ans == 'y' ]
 then
   #Checks if there is already a project with this name at this directory
   if [ -d $1 ]
   then
     exists $1
   else
     $2
   fi
 fi
}

###############################################################################
################################## c++-lib ####################################
###############################################################################
if [ $PROJECT == 'c' ]
then
 read -p "Project's name: " PROJECT_NAME
 read -e -p "Project's location: " -i $PROJECTS_DIR PROJECT_LOCATION

 creating cpp-library $PROJECT_NAME $PROJECT_LOCATION
 FULL_PATH=$PROJECT_LOCATION/$PROJECT_NAME
 execute $FULL_PATH create-cpp

###############################################################################
################################## c++-app ####################################
###############################################################################
elif [ $PROJECT == 'a' ]
then
 read -p "Project's name: " PROJECT_NAME
 read -e -p "Project's location: " -i $PROJECTS_DIR PROJECT_LOCATION

 creating cpp-app $PROJECT_NAME $PROJECT_LOCATION
 FULL_PATH=$PROJECT_LOCATION/$PROJECT_NAME
 execute $FULL_PATH create-cpp-app

###############################################################################
################################### python ####################################
###############################################################################
elif [ $PROJECT == "p" ]
then
 read -p "Project's name: " PROJECT_NAME
 read -e -p "Project's location: " -i $PROJECTS_DIR PROJECT_LOCATION
 echo "python"

###############################################################################
################################ latex-article ################################
###############################################################################
elif [ $PROJECT == "l" ]
then
 read -p "Folder's name: " FOLDER_NAME
 read -e -p "Folder's location: " -i $ARTICLE_DIR FOLDER_LOCATION

 creating "latex-article folder" $FOLDER_NAME $ARTICLE_DIR
 FULL_PATH=$FOLDER_LOCATION/$FOLDER_NAME
 execute $FULL_PATH create-latex-article

###############################################################################
################################# latex-notes #################################
###############################################################################
elif [ $PROJECT == "n" ]
then
 read -p "Folder's name: " -i "notes" FOLDER_NAME
 read -e -p "Folder's location: " -i $DOCS_DIR FOLDER_LOCATION

 creating "latex-notes folder" $FOLDER_NAME $FOLDER_LOCATION
 FULL_PATH=$FOLDER_LOCATION/$FOLDER_NAME
 execute $FULL_PATH create-latex-notes

###############################################################################
#################################### error ####################################
###############################################################################
else
  echo "This isn't a valid project type, please try again."
fi
