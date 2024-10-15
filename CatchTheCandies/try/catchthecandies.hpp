
#ifndef CATCHTHECANDIES_HPP
#define CATCHTHECANDIES_HPP

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace cv;
using namespace std;

class Circle {
public:
    Mat image;
    Mat mask;
    Point position;
    Size size;
    int speedX;
    int speedY;

    Circle(const string& imagePath, double scaleFactor);
    void move(int frameWidth, int frameHeight);
    void draw(Mat& frame);
    bool isInsideContour(const vector<Point>& contour);
};

class Diamond {
public:
    Mat image;
    Mat mask;
    Point position;
    int speedX;
    int speedY;

    Diamond(const string& imagePath, double scaleFactor);
    void move(int frameWidth, int frameHeight);
    void draw(Mat& frame);
    bool isInsideContour(const vector<Point>& contour);
};

class Game {
public:
    VideoCapture capture;
    Circle circle;
    Diamond diamond;
    int score;
    bool showDiamond;
    time_t diamondStart;

    Game(const string& circlePath, const string& diamondPath);
    void run();
};

#endif
