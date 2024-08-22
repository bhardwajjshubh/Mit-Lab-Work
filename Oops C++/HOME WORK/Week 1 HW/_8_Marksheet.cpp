#include <iostream>
using namespace std;

int main()
{
    string name;
    int reg_no, join_year, marks[4], sum;
    float avg;
    char grade;

    cout << "Enter name " << endl;
    getline(cin, name);

    cout << "Enter Registration no " << endl;
    cin >> reg_no;

    cout << "Enter year of joining " << endl;
    cin >> join_year;

    cout << "Enter Marks of students" << endl;
    cin >> marks[0];
    cin >> marks[1];
    cin >> marks[2];
    cin >> marks[3];
    cin >> marks[4];

    avg = (marks[0] + marks[1] + marks[2] + marks[3] + marks[4]) / 5;

    sum = marks[0] + marks[1] + marks[2] + marks[3] + marks[4];

    if (avg >= 90)
    {
        grade = 'A';
    }

    else if (80 <= avg >= 89)
    {
        grade = 'B';
    }

    else if (61 <= avg >= 79)
    {
        grade = 'C';
    }

    else if (51 <= avg >= 59)
    {
        grade = 'D';
    }

    else if (41 <= avg >= 49)
    {
        grade = 'E';
    }
    else
    {
        grade = 'F';
    }
    cout << "---------------------------------------------------------------------------------------------------------" << endl;
    cout << "                       Score Card for Student: " << name << endl
         << endl
         << endl;

    cout << "Registration no: " << reg_no << "                   Semester:1         Year: " << join_year << endl;

    cout << "Grade Assigned" << endl;

    cout << "Serial no.                  subject Name            marks Scored(out of 100)" << endl;
    cout << "__________________________________________________________________________________________________________" << endl;
    cout << "1                 Object Oriented Programming               " << marks[0] << endl;

    cout << "2                 DBMS                                      " << marks[1] << endl;

    cout << "3                 Reasearch Methodology                     " << marks[2] << endl;

    cout << "4                 Computational Mathematics                 " << marks[3] << endl;

    cout << "5                 Web Technologies                          " << marks[4] << endl
         << endl;

    cout << "                                        Total:              " << sum << endl;

    cout << "                                        Average:            " << avg << endl;

    cout << "                                        Grade:              " << grade << endl;
    return 0;
}