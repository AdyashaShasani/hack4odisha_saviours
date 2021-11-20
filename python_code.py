#!/usr/bin/env python
# coding: utf-8

# In[4]:


import mysql.connector as mc      #Establish the connection with the mysql server
#Here we are passing company name provided by the user and the tupple returned from the fetchall
#Since the company is the at 2nd coloumn so we are accessing the 5th index

def checkcompany(s,l):            #Function to check the company name
     if(s==l[2]):
        return True
     else:
        return False
#Here we are passing dosage name provided by the user and the tupple returned from the fetchall
#Since the dosage is the at 5th coloumn so we are accessing the 5th index

def checkdosage(s,l):             #Function to check the dosage name
    if(s==l[5]):
        return True
    else:
        return False

def calculate_total():
    total=0
    return total

def main():
    mydb = mc.connect(host="localhost",user="root",password="mysql7735",database="saviours")
    mycursor=mydb.cursor() 
    #Here we are giving the access the medicine seller and the intial choice is set to yes
    #After each customer/iteration the seller has choice to continue or not.
    choice="yes"
    Total_amount=0
    while choice=="yes":
        medicine_list=[]
        mycursor.execute("SELECT * FROM data")                            #select all the coloumns from the table
        myresult = mycursor.fetchall()                                    #fetch all the data
        name=input("Enter the name of the patient:")
        entry=int(input("Enter the number of medicines: "))
        for i in range(entry):
            mname=input("Enter the medicine name:")                         
            comp=input("Enter the company name:")                         #Take the input from user
            dis=input("Enter the disease:")
            dosage=input("Enter dosage:")
            strips=int(input("Enter the quantity: "))
            n=len(myresult)
            flag=0
            medicine_list.append(mname)
            for x in range(n):
                l=myresult[x]
                if(dis==l[6]):
                    if(checkcompany(comp,l)) and (checkdosage(dosage,l)):
                        print("Correct medicine given\n")
                        price=(l[4])[2:]
                        Total_amount+=(strips*float(price))
                        flag=1
                        break
                    else:
                        print("Consult the doctor again\n")
                        break
            else:
                print("Currently can't diagnosis the disease !!\n")
        if(flag==1):
            print("-------------------------SAVIOURS MEDICOS----------------------------")
            print("Name of the patient is:: ",name,"\n")
            print("Medicines appointed::",medicine_list,"\n")
            result="{:.2f}".format(Total_amount)
            print("Total amount::",result)
        else:
            print("-----------------------------------------------------------------")
        print("------------------Next Entry Starts From Here--------------------")
        choice=(input("Any new customer arrived (YES/NO) : "))        
main()


# In[ ]:




