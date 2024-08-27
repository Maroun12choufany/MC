import pandas as pd
import mysql.connector

# Student Class
class Student:
    def __init__(self, student_id, name, age, grade, email):
        self.student_id = student_id
        self.name = name
        self.age = age
        self.grade = grade
        self.email = email

     #Getters
    def get_id(self):
        return self.student_id

    def get_name(self):
        return self.name

    def get_age(self):
        return self.age

    def get_grade(self):
        return self.grade

    def get_email(self):
        return self.email

     #Setters
    def set_name(self, name):
        self.name = name

    def set_age(self, age):
        self.age = age

    def set_grade(self, grade):
        self.grade = grade

    def set_email(self, email):
        self.email = email

    def to_tuple(self):
        return (self.student_id, self.name, self.age, self.grade, self.email)

    def to_dict(self):
        return {
            "id": self.student_id,
            "name": self.name,
            "age": self.age,
            "grade": self.grade,
            "email": self.email
        }

    def display_info(self):
        print(f"ID: {self.student_id}, Name: {self.name}, Age: {self.age}, Grade: {self.grade}, Email: {self.email}")

# Database connection
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sms_db"
)
cursor = conn.cursor()

# Display function Add students
def add_student(student):
    insert_query = """INSERT INTO students (id,name, age, grade, email) VALUES (%s, %s, %s, %s,%s)"""
    values = (student.get_id(),student.get_name(), student.get_age(), student.get_grade(), student.get_email())
    cursor.execute(insert_query, values)
    conn.commit()
    print("Student added successfully!")

def get_students():
    cursor.execute("SELECT * FROM students")
    results = cursor.fetchall()
    students = []
    for row in results:
        student = Student(row[0], row[1], row[2], row[3], row[4])
        students.append(student)
    return students

#  Display function Update students
def update_student(id, name, age, grade, email):
    update_query = """UPDATE students SET name=%s, age=%s, grade=%s, email=%s WHERE id=%s"""
    values = (name, age, grade, email, id)
    cursor.execute(update_query, values)
    conn.commit()
    print("Student updated successfully!")

#  Display function Delete students
def delete_student(student_id):
    delete_query = """DELETE FROM students WHERE id=%s"""
    values = (student_id,)
    cursor.execute(delete_query, values)
    conn.commit()
    print("Student deleted successfully!")

    # display function  view students
def view_students():
    cursor.execute("SELECT * FROM students")
    student_data = cursor.fetchall()

    print("Student Data:")
    print("------------")

    for student in student_data:
        print(f"ID: {student[0]}")
        print(f"Name: {student[1]}")
        print(f"Age: {student[2]}")
        print(f"Email: {student[3]}")
        print(f"Grade: {student[4]}")
view_students()

  # save data in file students.csv
def save_to_csv():
    students = get_students()
    df = pd.DataFrame([list(student.__dict__.values()) for student in students], columns=['id', 'name', 'age', 'email', 'grade'])
    df.to_csv("students.csv", index=False)
    print("Data saved to CSV successfully!")

# load data from students.csv
def load_from_csv():
    df = pd.read_csv('students.csv')
    for index, row in df.iterrows():
        student = Student(row['id'], row['name'], row['age'], row['grade'], row['email'])
        add_student(student)
    print("Data loaded from CSV successfully!")

# Menu_Driven Interface
def main_menu():
    while True:
        print("\nStudent Management System")
        print("1. Add Student")
        print("2. View Students")
        print("3. Update Student")
        print("4. Delete Student")
        print("5. Save to CSV")
        print("6. Load from CSV")
        print("7. Exit")
        choice = input("Enter your choice: ")

        if choice == "1":
            student_id = int(input("Enter student ID: "))
            name = input("Enter name: ")
            age = int(input("Enter age: "))
            grade = input("Enter grade: ")
            email = input("Enter email: ")
            student = Student(student_id, name, age, grade, email)
            add_student(student)

        elif choice == "2":
            view_students()

        elif choice == "3":
            student_id = int(input("Enter student ID to update: "))
            name = input("Enter new name: ")
            age = int(input("Enter new age: "))
            grade = input("Enter new grade: ")
            email = input("Enter new email: ")
            update_student(student_id, name, age, grade, email)

        elif choice == "4":
            student_id = int(input("Enter student ID to delete: "))
            delete_student(student_id)

        elif choice == "5":
            save_to_csv()

        elif choice == "6":
            load_from_csv()

        elif choice == "7":
            print("Exiting the program...")
            break

        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main_menu()

    # Owner Of Project: Maroun Choufany