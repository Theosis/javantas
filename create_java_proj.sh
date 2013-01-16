#!/bin/bash

if [ $# -eq 0 ]
then
  echo "______________________________________"
  echo "Usage:"
  echo "./create_java_project.sh ProjectName"
  echo ""
  echo "Looks like you forgot the ProjectName arg"
  echo "______________________________________"
  exit 1
fi

echo $1 | grep -q '[0-9]'

if [ $? = 0 ]
then
  echo [$1] is an INVALID project name [cannot start with a number]
  exit 1
fi

mkdir $1
mkdir $1/src
mkdir $1/bin
touch $1/src/$1.java

echo 'public class '$1' {

  public '$1'() {
    super();
  }

  public void init() {
    System.out.println("Hello");
  }
 
 public static void main (String [] args) {
    new '$1'().init();
  }
}' > $1/src/$1.java

echo '#!/bin/bash

find src/ -name "*.java" > sources_list.txt
javac -classpath "${CLASSPATH}" @sources_list.txt -d bin
rm sources_list.txt

' > $1/build.sh

echo 'java -cp bin '$1 >> $1/build.sh

chmod a+x $1/build.sh

echo "You are ready sucka!!"

