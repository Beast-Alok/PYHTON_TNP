'''
CREATED BY : Alok Kumar Raghuwanshi
ENROLLMENT NUMBER : 0157CY221026
BATCH : CSE - Cyber Security 3rd Year (5th Semester)
COLLEGE : LNCTS, Bhopal

This is a simple quiz application created using Python. It allows users to register, login, and take a quiz on various subjects such as Operating System, Database Management System, and Computer Networks. The quiz consists of 5 random questions from the selected subject, and the user's score is displayed at the end of the quiz. The user must score at least 3 out of 5 to pass the quiz.

Additionally, the application store the user's data in a text file, including their name, username, password, and quiz results. The application also allows users to view their quiz results.

NOTE : PLEASE RUN THIS CODE IN TERMINAL TO GET BETTER OUTPUT. THIS CODE MAY OR MAY NOT WORK IN PYTHON IDLE.

'''

import os
import time
import random
import colorama

# for clearing the screen
def clear():
    if os.name == 'nt':
        _ = os.system('cls')


# user info cache
login_flag = False
cu_name = ""
cu_uid = 0


# register logic
def register():
    clear()
    file = open("quiz_2/userData.txt", "a+")
    file.seek(0)
    lst = file.readlines()
    usernames = []
    cur_uid = lst[-1].split(",")[0]

    for i in lst:
        i = i.replace("\n","")
        usernames.append(i.split(",")[1])
    
    count = 0
    print("Just fill the details below and you ready to go !")
    while(True):
        count += 1
        if(count > 3):
            print("You have exceeded the input limit !!")
            time.sleep(2)
            break
        name = input("Name : ")
        if name == "":
            print("Name cannot be empty !!")
            time.sleep(1)
            continue
        u_name = input("Username : ")
        if u_name == "":
            print("Username cannot be empty !!")
            time.sleep(1)
            continue
        if u_name not in usernames:
            pass_w = input("Password : ")
            if pass_w == "":
                print("Password cannot be empty !!")
                time.sleep(1)
                continue
            file.write(f"{int(cur_uid)+1},{u_name},{pass_w},{name}\n")
            file.close()
            print("Registered successfully !!")
            time.sleep(1)
            break
        else:
            print()
            print("Please enter a unique username !!")
            time.sleep(1)


# login logic
def login():
    global login_flag
    global cu_name
    global cu_uid
    clear()

    file = open("quiz_2/userData.txt", "a+")
    file.seek(0)
    lst = file.readlines()
    file.close()

    usernames = []
    passwords = []

    for i in lst:
        i = i.replace("\n","")
        usernames.append(i.split(",")[1])
        passwords.append(i.split(",")[2])
    
    count = 0
    print("Enter your login credentials !!")
    while(True):
        count += 1
        if(count > 3):
            print("You have exceeded the input limit !!")
            time.sleep(2)
            break
        u_name = input("Username : ")
        if u_name == "":
            print("Username cannot be empty !!")
            time.sleep(1)
            continue
        if u_name in usernames:
            pass_w = input("Password : ")
            if pass_w == "":
                print("Password cannot be empty !!")
                time.sleep(1)
                continue
            if(passwords[usernames.index(u_name)] == pass_w):
                clear()
                print(colorama.Fore.CYAN + f"Hello, {u_name} !!" + colorama.Style.RESET_ALL)
                login_flag = True
                cu_name = u_name
                cu_uid = int(lst[usernames.index(u_name)].split(",")[0])
                break
            else:
                print()
                print("Incorrect password !")
                time.sleep(1)
        else:
            print()
            print("Username not found !!")
            time.sleep(1)


# quiz logic
def test(subject):
    global login_flag
    global cu_name
    global cu_uid
    score = 0
    file = open(f"quiz_2/{subject}.txt", "r")
    questions = file.readlines()
    file.close()
    qt = random.sample(questions, 5)
    i = 1

    for q in qt:
        clear()
        if(login_flag):
            print(colorama.Fore.CYAN + f"Current Logged In User : {cu_name} !!" + colorama.Style.RESET_ALL)
            print()
        lst = q.split(",")
        print(f"Question {i} : {lst[0]}")
        print(f"{lst[1]}\n{lst[2]}\n{lst[3]}\n{lst[4]}")
        answer = lst[5].replace("\n","")
        ans = input("Enter your answer : ").lower()
        print()
        if ans not in ['a','b','c','d']:
            print("You have entered the wrong option. So it is considered as", end=" ")
        if(ans == answer):
            print(colorama.Fore.GREEN + "Correct answer !!" + colorama.Style.RESET_ALL)
            time.sleep(1)
            score += 1
        else:
            print(colorama.Fore.RED + "Incorrect answer !!" + colorama.Style.RESET_ALL + f"\nCorrect answer is : {answer}")
            time.sleep(2)
        i += 1
    
    i = 1
    clear()
    if(login_flag):
        print(colorama.Fore.CYAN + f"Current Logged In User : {cu_name} !!" + colorama.Style.RESET_ALL)
        print()
    print(f"Your score is : {score}")
    if(score >= 3):
        print("Congratulations !! You have passed the quiz.")
    else:
        print("Sorry !! You have failed the quiz.")
    
    file = open("quiz_2/result.txt", "a+")
    current_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    file.write(f"{cu_uid},{subject},{score},{current_time}\n")
    file.close()
    print()
    print()
    print("Do you want to still continue !! [Y/N]")
    ch = input("Enter your choice : ").lower()
    if(ch == 'y'):
        return
    else:
        return "BREAK"


# quiz maker
def quiz():
    global login_flag
    global cu_name
    while(True):
        clear()
        if(login_flag):
            print(colorama.Fore.CYAN + f"Current Logged In User : {cu_name} !!" + colorama.Style.RESET_ALL)
            print()
        print("Please select anyone subject for quiz: ")
        print("1 : Operating System")
        print("2 : Dbms")
        print("3 : Computer Networks")
        print()
        print("4 : Main menu")
        print()
        
        a=""
        ch = input("Enter your choice : ")
        if(ch == ""):
            print("Choice cannot be empty !!")
            time.sleep(1)
            continue
    
        if(ch == '1'):
            a = test("os")
        elif(ch == '2'):
            a = test("dbms")
        elif(ch == '3'):
            a = test("cn")
        elif(ch == '4'):
            a = "BREAK"
        else:
            print("Invalid choice !!")
            time.sleep(1)
        

        if(a == "BREAK"):
            return "BREAK"
        

# quiz initiator
def quiz_initiator():
    global login_flag
    global cu_name
    time.sleep(1)
    while(True):
        clear()
        if(login_flag):
            print(colorama.Fore.CYAN + f"Current Logged In User : {cu_name} !!" + colorama.Style.RESET_ALL)
            print()
        print("Welcome to quiz !!")
        print()
        print("Please select anyone operation : ")
        print("1 : Start Quiz")
        print("2 : Main mnenu")
        print("3 : Logout")
        print()

        ch = input("Enter your choice : ")
        if(ch == ""):
            print("Choice cannot be empty !!")
            time.sleep(1)
            continue

        if(ch == '1'):
            a = quiz()
            if(a == "BREAK"):
                return
        elif(ch == '2'):
            print()
            print("Thank you for playing !!")
            time.sleep(1)
            break
        elif(ch == '3'):
            print()
            print("Logged out successfully !!")
            time.sleep(1)
            login_flag = False
            cu_name = ""
            cu_uid = 0
            break
        else:
            print()
            print("Invalid choice !!")
            time.sleep(1)

# table printer
def print_table(data):
    headers = ["Subject Name", "Score", "Date of Performance"]
    col_widths = [max(len(str(item)) for item in col) for col in zip(*data, headers)]
    boundary = "+".join("-" * (width + 2) for width in col_widths)
    boundary = f"+{boundary}+"
    header_row = "|".join(f" {header.ljust(width)} " for header, width in zip(headers, col_widths))
    header_row = f"|{header_row}|"
    print(boundary)
    print(header_row)
    print(boundary)
    
    for row in data:
        row_str = "|".join(f" {str(item).ljust(width)} " for item, width in zip(row, col_widths))
        row_str = f"|{row_str}|"
        print(row_str)
        print(boundary)


# code starts here
clear()
print("Welcome user !!")
time.sleep(1)
def main():
    global login_flag
    global cu_name
    global cu_uid
    while(True):
        clear()
        if(login_flag):
            print(colorama.Fore.CYAN + f"Current Logged In User : {cu_name} !!" + colorama.Style.RESET_ALL)
            print()
            print("Please select anyone operation : ")
            print("1 : Take Quiz")
            print("2 : View Result")
            print("3 : Logout")
            print("4 : Exit")
        else:
            print("Please select anyone operation : ")
            print("1 : Register")
            print("2 : Login")
            print("3 : Exit")

        print()
        ch = input("Enter your choice : ")

        if ch == "":
            print("Choice cannot be empty !!")
            time.sleep(1)
            continue

        if(login_flag):
            if(ch == '1'):
                quiz_initiator()
            elif(ch == '2'):
                clear()
                file = open("quiz_2/result.txt", "r")
                lst = file.readlines()
                file.close()
                data = []
                for i in lst:
                    i = i.replace("\n","")
                    if(int(i.split(",")[0]) == cu_uid):
                        data.append([i.split(",")[1], i.split(",")[2], i.split(",")[3]])
                if(login_flag):
                    print(colorama.Fore.CYAN + f"Current Logged In User : {cu_name} !!" + colorama.Style.RESET_ALL)
                    print()
                if(len(data) == 0):
                    print("No data found !!")
                    time.sleep(1)
                else:
                    print_table(data)
                print()
                ch = input("Press enter key........").lower()
            elif(ch == '3'):
                print("Logged out successfully !!")
                time.sleep(1)
                login_flag = False
                cu_name = ""
                cu_uid = 0
            elif(ch == '4'):
                clear()
                print("Thank you for using this application !!")
                break
            else:
                print("Invalid choice!! Please choose correct option.")
                time.sleep(1)

        else:
            if(ch == '1'):
                register()
            elif(ch == '2'):
                login()
            elif(ch == '3'):
                clear()
                print("Thank you for using this application !!")
                break
            else:
                print("Invalid choice!! Please choose correct option.")
                time.sleep(1)


if __name__ == '__main__':
    main()