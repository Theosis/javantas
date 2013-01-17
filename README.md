## Javantas 

Javantas is a small bash script to start a quick Java project from the command line. It takes the name of your project as a single argument and builds out the project directory structure and your first class file with a `main` function.

### Usage

```bash
$ ./javantas.sh MyProject
``` 

If you install the script into `/usr/local/bin/` (see [Installation](#installation) section for details), you can run the script from anywhere like so:

```bash
$ javantas MyProject
```

This will create a directory structure that looks like:

```
├── MyProject
│   ├── bin
│   ├── build.sh
│   └── src
│       └── MyProject.java
```

### Main Class file

This script will create an initial java class file for you (named the same name as your project) which includes a `main` method. Assuming the above example of `MyProject`, the contents of `MyProject.java` will look like:

```java
public class MyProject {

  public MyProject() {
    super();
  }

  public void init() {
    System.out.println("Hello");
  }
 
 public static void main (String [] args) {
    new MyProject().init();
  }
}
```

### Build

Javantas creates a really simple `build.sh` file. For small projects is should suffice. Running it will compile your .java files into the `bin` directory and then run the main application's `main` function.

### Installation

Either clone the repo or download the zip file from the repo at [https://github.com/knomedia/javantas](https://github.com/knomedia/javantas). You have two options.

1. Copy the javantas.sh file around to where you want to use it (not so special).
2. Make the script globally available on your system (extra special).

Rather than copying the file around to use, or remembering where you have saved it, consider dropping it in with your other executable files on you linux machine. For most linux based systems (including OS X) that means copying it to:

```bash
/usr/local/bin
```

To do so `cd` into the directory where you have the `javantas.sh` file at and copy the file by running the following in bash:

```bash
mv javantas.sh /usr/local/bin/javantas
```

**Note** that the example leaves the `.sh` off the file name when you copy it over, this will make using it seem more natural to most.

