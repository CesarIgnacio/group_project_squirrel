#include<iostream>

using namespace std;

int main() {
    double x1, x2;
    double y1, y2;
    
    cin >> x1 >> y1;
    cin >> x2 >> y2;

    double slope = (y2 - y1)/(x2 - x1);

    double n = y1 - slope * x1;

    cout << "y = slope * x" << endl;
    cout << "slope = " << slope << endl;
    cout << "n = " << n << endl;

}