
public class Customer extends Person {
    public String purchasedMedicineName;
   public double price;
    public int numOfMed;
    private Medicine[] pmed = new Medicine[100];
    private static int count_pm= 0;



    // Constructor
    public Customer(String name){
        super (name);

       // this.purchasedMedicineName = purchasedMedicineName;
//        this.price = price;
//        this.numOfMed = numOfMed;
       // System.out.println(name +" is a new Customer\n");
    }


    // Setters & Getters

    public String getPurchasedMedicineName() {
        return purchasedMedicineName;
    }
    public void setPurchasedMedicineName(String purchasedMedicineName) {
        this.purchasedMedicineName = purchasedMedicineName;
    }

    public void addPurchasedMed(Medicine med) {
        pmed[count_pm]=med;
        count_pm++;
    }

    public void getMed() {
        System.out.println("Prchased Medicine INFO: ");
        for(int k=0; k<count_pm; k++) {

            System.out.println("Name: " +pmed[k].getMedcineName() + "      *Amount : " +pmed[k].getCostPerMedicine() );
        }
        System.out.println("__________________________________");
        int x = count_pm;
        System.out.println(x + " Types of Syrup has been stored.");
        System.out.println("__________________________________");
    }



    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }


    public int getNumOfMed(){
        return numOfMed;
    }
    public void setNumOfMed(int numOfMed){
        this.numOfMed = numOfMed;
    }

    public double getTotalPrice(){
        return (float) (price *numOfMed);
    }

    //  Methods


    public String toString() {
       return "\n                     " +
                "  |*Customer Name : " + getName() + "*| "+
                "  |* Purchased Med Name : " + getPurchasedMedicineName() +"*|\n " ;

    }

}
