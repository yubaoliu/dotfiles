/**
 * @file    DisplayImage.cpp
 * @Synopsis  hello
 * @author  yubaoliu89@gmail.com
 * @version 1.0
 * @date    2022-04-30
 */
#include "hello.h"
#include <opencv2/opencv.hpp>
#include <stdio.h>
using namespace cv;
int main(int argc, char** argv)
{
    if (argc != 2) {
        printf("usage: DisplayImage.out <Image_Path>\n");
        return -1;
    }
    // echo <<“Hello world !”<< endl;
    print_hello();

    std::string str;
    Mat image;

    if (image.cols > 0) {
        int b = 0;
    }

    image = imread(argv[1], 1);

    if (!image.data) {
        printf("No image data \n");
        return -1;
    }
    namedWindow("Display Image", WINDOW_AUTOSIZE);
    imshow("Display Image", image);

    str = "good";
    waitKey(0);
    return 0;
}
