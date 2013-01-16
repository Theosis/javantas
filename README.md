## Javantas 

Javantas is a small bash script to start a quick java project from the command line. It takes the name of your project as a single argument and builds out the project directory structure and your first class with a `main` function.

### Usage

```bash
$ ./create_java_proj.sh MyProject
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
