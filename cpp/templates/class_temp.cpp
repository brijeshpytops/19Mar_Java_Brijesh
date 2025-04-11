#include <iostream>
using namespace std;

template <class T>
class Calculator {
public:
    T a, b;

    Calculator(T x, T y) {
        a = x;
        b = y;
    }

    T add() {
        return a + b;
    }

    T multiply() {
        return a * b;
    }
};

int main() {
    Calculator<int> intCalc(2, 3);
    cout << "Int Add: " << intCalc.add() << endl;
    cout << "Int Multiply: " << intCalc.multiply() << endl;

    Calculator<float> floatCalc(2.5, 4.0);
    cout << "Float Add: " << floatCalc.add() << endl;
    cout << "Float Multiply: " << floatCalc.multiply() << endl;

    return 0;
}
