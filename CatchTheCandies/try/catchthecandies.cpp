#include <iostream>
#include <cstdlib> // for rand()
#include <ctime>   // for time()
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "catchthecandies.hpp"

Circle::Circle(const string& imagePath, double scaleFactor) {
    image = imread(imagePath);
    if(image.empty()){
        cout << "Could not open image" << endl;
    }
    resize(image, image, Size(), scaleFactor, scaleFactor);
    cvtColor(image, mask, COLOR_BGR2GRAY);
    threshold(mask, mask, 240, 255, THRESH_BINARY_INV);
    position = Point(0, 0);
    speedX = 50;
    speedY = 50;
    size = image.size();
}

void Circle::move(int frameWidth, int frameHeight) {
    position.x += speedX;
    position.y += speedY;

    if (position.x < 0) { position.x = 0; speedX = -speedX; }
    if (position.y < 0) { position.y = 0; speedY = -speedY; }
    if (position.x + size.width > frameWidth) {
        position.x = frameWidth - size.width;
        speedX = -speedX;
    }
    if (position.y + size.height > frameHeight) {
        position.y = frameHeight - size.height;
        speedY = -speedY;
    }
}

void Circle::draw(Mat& frame) {
    Rect roi(position, size);
    image.copyTo(frame(roi), mask);
}

bool Circle::isInsideContour(const vector<Point>& contour) {
    Point centerMovingCircle(position.x + size.width / 2, position.y + size.height / 2);
    return pointPolygonTest(contour, centerMovingCircle, false) >= 0;
}

Diamond::Diamond(const string& imagePath, double scaleFactor) {
    image = imread(imagePath);
    if (image.empty()) {
        cout << "Could not open image" << endl;
    }
    resize(image, image, Size(), scaleFactor, scaleFactor);
    cvtColor(image, mask, COLOR_BGR2GRAY);
    threshold(mask, mask, 240, 255, THRESH_BINARY_INV);
    position = Point(0, 0);
    speedX = 175;
    speedY = 175;
}

void Diamond::move(int frameWidth, int frameHeight) {
    position.x += speedX;
    position.y += speedY;

    if (position.x < 0) { position.x = 0; speedX = -speedX; }
    if (position.y < 0) { position.y = 0; speedY = -speedY; }
    if (position.x + image.cols > frameWidth) {
        position.x = frameWidth - image.cols;
        speedX = -speedX;
    }
    if (position.y + image.rows > frameHeight) {
        position.y = frameHeight - image.rows;
        speedY = -speedY;
    }
}

void Diamond::draw(Mat& frame) {
    Rect roi(position, image.size());
    image.copyTo(frame(roi), mask);
}

bool Diamond::isInsideContour(const vector<Point>& contour) {
    Point diamondCenter(position.x + image.cols / 2, position.y + image.rows / 2);
    return pointPolygonTest(contour, diamondCenter, false) >= 0;
}

Game::Game(const string& circlePath, const string& diamondPath)
    : circle(circlePath, 0.05), diamond(diamondPath, 0.13), score(0), showDiamond(false) {
    capture.open(0);
    if(!capture.isOpened()){
        cout << "Failed to open the webcam" << endl;
    }
    capture.set(CAP_PROP_FRAME_WIDTH, 640);
    capture.set(CAP_PROP_FRAME_HEIGHT, 480);
    capture.set(CAP_PROP_FPS, 15);
    srand(static_cast<unsigned>(time(0)));
}

void Game::run() {
    while (true) {
        Mat frame;
        capture >> frame;
        if (frame.empty()) {
            cout << "Could not capture frame" << endl;
            break;
        }

        Mat grayFrame;
        cvtColor(frame, grayFrame, COLOR_BGR2GRAY);

        vector<vector<Point>> contours;
        vector<Vec4i> hierarchy;
        Canny(grayFrame, grayFrame, 100, 200);
        findContours(grayFrame, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE);

        for (const auto& contour : contours) {
            double area = contourArea(contour);
            double perimeter = arcLength(contour, true);
            double circularity = (4 * CV_PI * area) / (perimeter * perimeter);

            if (circularity > 0.8 && circularity < 1.2 && area > 300) {
                polylines(frame, contour, true, Scalar(0, 255, 0), 2);
                if (circle.isInsideContour(contour)) {
                    score++;
                    if (score % 10 == 0) {
                        circle.speedX += (circle.speedX > 0) ? 1 : -1;
                        circle.speedY += (circle.speedY > 0) ? 1 : -1;
                    }
                    if (score > 0 && score % 5 == 0 && !showDiamond) {
                        showDiamond = true;
                        diamondStart = time(0);
                        diamond.position.x = rand() % (frame.cols - diamond.image.cols);
                        diamond.position.y = rand() % (frame.rows - diamond.image.rows);
                    }
                }
            }
        }

        circle.move(frame.cols, frame.rows);
        circle.draw(frame);

        if (showDiamond) {
            diamond.move(frame.cols, frame.rows);
            diamond.draw(frame);

            if (diamond.isInsideContour(contours[0])) {
                score += 3;
                showDiamond = false;
            }

            if (difftime(time(0), diamondStart) >= 5) {
                showDiamond = false;
            }
        }

        putText(frame, "SCORE: " + to_string(score), Point(10, 30), FONT_HERSHEY_SIMPLEX, 1.0, Scalar(0, 255, 255), 2);
        imshow("Catch The Candies!", frame);
        if (waitKey(30) == 27) {
            break;
        }
    }
    capture.release();
    destroyAllWindows();
}
