import csv

print("Description :")
print("If Case ==1 , Show search result by death cause")
print("If Case ==2 , Show search resulth by yearly death")


with open('NCHS_-_Leading_Causes_of_Death__United_States.csv') as f:
    myCvsData = csv.reader(f)

    n = int(input())

    if n == 1:

        print("Enter disease name: ")
        diseaseName = input()
        for data in myCvsData:
            if data[2] == diseaseName:
                print("State -> " +data[3] +" :: Deaths ->" +data[4] +" :: Age-adjusted Death Rate ->"
                      +data[5])
                continue


    elif n == 2:
        print("Enter Year And State")
        year = input()
        stateName = input()

        for data in myCvsData:
            if year == data[0] and stateName == data[3]:
                print("Diseases Name -> " +data[2] +" | Age-adjusted Death Rate -> " +
                      data[5])
                continue


    else:
        print("End Program here bye!")



