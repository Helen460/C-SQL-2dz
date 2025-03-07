// Task 1
#include <iostream>
using namespace std;

int main() 
{
    const double PI = 3.14159;
    double radius;
    cout << "Enter the radius of the circle: ";
    cin >> radius;
    double area = PI * radius * radius;
    double circle_length = 2 * PI * radius;
    cout << "Area: " << area << "\n";
    cout << "Circle length: " << circle_length << "\n";
}

// Task 2
#include <iostream>
using namespace std;

int main() 
{
    int a = 2;
    int b = 4;
    int c;
    c = a;
    a = b;
    b = c;
    cout << "After swapping with variable: a = " << a << ", b = " << b << "\n";

    a = 2;
    b = 4;
    a = a + b;
    b = a - b;
    a = a - b;
    cout << "After swapping without variable: a = " << a << ", b = " << b << "\n";
}

// Task 3
#include <iostream>
using namespace std;

int main()
{
    double amount;
    cout << "Enter amount in UAH (example, 45.67): ";
    cin >> amount;
    int hryvnias = amount;
    int kopecks = (amount * 100) - (hryvnias * 100);
    cout << hryvnias << " Hryvnias " << kopecks << " Kopecks\n";
}

// Task 4
#include <iostream>
using namespace std;

int main() 
{
    int total_seconds;
    cout << "Enter time in seconds: ";
    cin >> total_seconds;

    int days = total_seconds / (24 * 3600);
    total_seconds = total_seconds % (24 * 3600);
    cout << "Days: " << days << "\n";

    int hours = total_seconds / 3600;
    total_seconds = total_seconds % 3600;
    cout << "Hours: " << hours << "\n";

    int minutes = total_seconds / 60;
    total_seconds = total_seconds % 60;
    cout << "Minutes: " << minutes << "\n";

    int seconds = total_seconds;
    cout << "Seconds: " << seconds << "\n";
}

// Task 5
#include <iostream>
using namespace std;

int main() 
{
    int start_hour, start_minute, start_second;
    int end_hour, end_minute, end_second;

    cout << "Enter start time (hour minute second): ";
    cin >> start_hour >> start_minute >> start_second;
    cout << "Enter end time (hour minute second): ";
    cin >> end_hour >> end_minute >> end_second;

    int start_total_seconds = start_hour * 3600 + start_minute * 60 + start_second;
    int end_total_seconds = end_hour * 3600 + end_minute * 60 + end_second;

    int total_seconds = end_total_seconds - start_total_seconds;

    double cost = total_seconds * 0.15 / 60;

    cout << "The cost of the call is: " << cost << " UAH\n";
}

// Task 6
#include <iostream>
using namespace std;

int main() 
{
    double mercury = 3.3011e23;
    double venus = 4.8675e24;
    double earth = 5.972e24;
    double mars = 6.4171e23;
    double jupiter = 1.8982e27;
    double saturn = 5.6834e26;
    double uranus = 8.6810e25;
    double neptune = 1.02413e26;

    double total_mass = mercury + venus + earth + mars + jupiter + saturn + uranus + neptune;
    double average_mass = total_mass / 8;

    cout << "Total mass of the planets: " << total_mass << " kg\n";
    cout << "Average mass of the planets: " << average_mass << " kg\n";

    double max_mass = jupiter;
    double remaining_mass = total_mass - max_mass;
    double largest_to_others_ratio = max_mass / remaining_mass;

    cout << "The largest planet's mass is " << largest_to_others_ratio << " times more than the sum of the rest.\n";

    cout << "Mercury: " << (mercury / total_mass) * 100 << "%\n";
    cout << "Venus: " << (venus / total_mass) * 100 << "%\n";
    cout << "Earth: " << (earth / total_mass) * 100 << "%\n";
    cout << "Mars: " << (mars / total_mass) * 100 << "%\n";
    cout << "Jupiter: " << (jupiter / total_mass) * 100 << "%\n";
    cout << "Saturn: " << (saturn / total_mass) * 100 << "%\n";
    cout << "Uranus: " << (uranus / total_mass) * 100 << "%\n";
    cout << "Neptune: " << (neptune / total_mass) * 100 << "%\n";
}

// Task 7
#include <iostream>
using namespace std;

int main()
{
    int num1, num2;
    cout << "Enter two 3-digit numbers: ";
    cin >> num1 >> num2;
    int hundred1 = num1 / 100;
    int middle1 = (num1 / 10) % 10;
    int unit1 = num1 % 10;

    int hundred2 = num2 / 100;
    int middle2 = (num2 / 10) % 10;
    int unit2 = num2 % 10;

    num1 = hundred1 * 100 + middle2 * 10 + unit1;
    num2 = hundred2 * 100 + middle1 * 10 + unit2;

    cout << "New numbers: " << num1 << " and " << num2 << "\n";
}

// Task 8
#include <iostream>
using namespace std;

int main()
{
    int N, M, X, G;
    cout << "Enter the total number of chickens: ";
    cin >> N;
    cout << "Enter the cost of one chicken: ";
    cin >> M;
    cout << "Enter the number of eggs each chicken produces per week: ";
    cin >> X;
    cout << "Enter the price for a dozen eggs: ";
    cin >> G;

    int total_cost = N * M;
    double weekly_income = (N * X * G) / 12.0;
    double days_to_break_even = total_cost / (weekly_income / 7.0);

    cout << "It will take " << days_to_break_even << " days to break even.\n";
}


