#include <iostream>
#include <cstdlib> // for rand()
#include <ctime>   // for time()
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "catchthecandies.hpp"

int main() {
    try {
        Game game("/home/auliakeziaa/Downloads/circle.jpg", "/home/auliakeziaa/Downloads/diamonds.jpg");
        game.run();
    } catch (const exception& e) {
        cout << e.what() << endl;
        return -1;
    }
    return 0;
}
