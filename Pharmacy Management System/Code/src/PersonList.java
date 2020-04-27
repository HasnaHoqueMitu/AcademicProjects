

public class PersonList {

    private String personList;
    private Person[] personArray;
    private final int MAX_ARRAY_LENGTH= 100;
    private int personCounter;

    public PersonList() {
    }

    public PersonList (String personList){
        this.personList = personList;
        personArray= new Person[MAX_ARRAY_LENGTH];
        personCounter = 0;
    }

    public void addPerson(Person x){
        if (personCounter <= MAX_ARRAY_LENGTH){
            personArray [personCounter] = x;
            personCounter ++;
//            System.out.println("Peron has been added");
        }
    }

    public String getPersonList(){
        return personList;
    }

    public void definePersonList (){
        for (int i = 0; i < personCounter ; i++)
        {
            System.out.println(personArray[i].toString() );
        }
    }




}
