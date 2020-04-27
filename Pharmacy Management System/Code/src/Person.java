

public class Person {
    private String name;

    // Default Constructor

    public Person(String name) {
        this.name= name;
    }

    // Setters & Getters

    public void setName (String name) {
        this.name = name;
        System.out.println("Name of person changed to " + name+ ". ");
    }

    public String getName (){
        return name;
    }


}
