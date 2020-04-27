

public class Staff extends Person {

    private double salary;
    private String workshifts;

    //   Constructor

    public Staff(String name, double salary,String workshifts) {
        super(name);
        this.salary = salary;
        this.workshifts = workshifts;
       // System.out.println("Staff: " +name+ " joined the pharmacy.\n");
    }

    //   Setters & Getters

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public void setWorkshifts(String workshifts) {
        this.workshifts = workshifts;
    }

    public double getSalary(){
        return salary;
    }
    public String getWorkshifts(){
        return workshifts;
    }

    // Methods



    public String toString() {
        String Details = "\n                     " +
                "  |*Staff Name : " + getName() + "*| "+
                "  |*Salary: " + getSalary() +"*| "+
                "  |*Work Shifts: " + getWorkshifts() +  "*|\n " ;
        return Details;
    }
}
