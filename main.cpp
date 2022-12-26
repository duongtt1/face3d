// #include "net.h"
#include "scrfd.h"
#if defined(USE_NCNN_SIMPLEOCV)
#include "simpleocv.h"
#else
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#endif
#include <stdio.h>
#include <iostream>
#include <vector>

using namespace cv;
using namespace std;

#define THRESGOLD 2.5

double calc_distange(cv::Point2f p1, cv::Point2f p2)
{
    auto dist = sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y));
    return dist;
}
int main(int argc, char **argv)
{
    Mat img;
    Mat img2;
    SCRFD *g_scrfd = new SCRFD;
    std::string result = "straight";
    VideoCapture cap(0);

    if (!cap.isOpened())
    {
        cout << "Can't open camera" << endl;
        return 0;
    }

    g_scrfd->load("500m");
    
    std::vector<FaceObject> faceobjects;
    std::vector<cv::Point2f> pts;

    while (true)
    {
        cap.read(img);

        cv::resize(img, img2, cv::Size(640, 480));
        
        g_scrfd->detect(img2, faceobjects);

        g_scrfd->landmark(img2, faceobjects[0], pts);
        
        auto left = calc_distange(pts[5], pts[234]);
        auto right = calc_distange(pts[5], pts[454]);
        
        auto eye1 =  calc_distange(pts[145], pts[159]);
        auto eye2 =  calc_distange(pts[374], pts[386]);
        std::cout << "eye left: " << eye1 << " eye right: " << eye2 << std::endl;

        if (left < right)
        {
            auto ratio = right / left;
            if (ratio > THRESGOLD)
            {
                result = "left";
            }
            else
            {
                result = "straight";
            }
        }
        else if (right < left)
        {
            auto ratio = left / right;
            if (ratio > THRESGOLD)
            {
                result = "right";
            }
            else
            {
                result = "straight";
            }
        }
        else
        {
            result = "straight";
        }



        for (int i = 0; i < pts.size(); i++)
            cv::circle(img2, pts[i], 2, cv::Scalar(255, 255, 0), -1);

        cv::rectangle(img2, faceobjects[0].rect, cv::Scalar(0, 255, 0));

        if (true)
        {
            cv::circle(img2, faceobjects[0].landmark[0], 2, cv::Scalar(255, 255, 0), -1);
            cv::circle(img2, faceobjects[0].landmark[1], 2, cv::Scalar(255, 255, 0), -1);
            cv::circle(img2, faceobjects[0].landmark[2], 2, cv::Scalar(255, 255, 0), -1);
            cv::circle(img2, faceobjects[0].landmark[3], 2, cv::Scalar(255, 255, 0), -1);
            cv::circle(img2, faceobjects[0].landmark[4], 2, cv::Scalar(255, 255, 0), -1);
        }

        char text[256];
        sprintf(text, "%.1f%%", faceobjects[0].prob * 100);

        int baseLine = 0;
        cv::Size label_size = cv::getTextSize(text, cv::FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseLine);

        int x = faceobjects[0].rect.x;
        int y = faceobjects[0].rect.y - label_size.height - baseLine;
        if (y < 0)
            y = 0;
        if (x + label_size.width > img2.cols)
            x = img2.cols - label_size.width;

        cv::rectangle(img2, cv::Rect(cv::Point(x, y), cv::Size(label_size.width, label_size.height + baseLine)), cv::Scalar(255, 255, 255), -1);

        cv::putText(img2, text, cv::Point(x, y + label_size.height), cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 0), 1);
        cv::putText(img2, result, cv::Point(0, 30), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(0, 0, 255), 2);

        pts.clear();
        
        cv::imshow("img", img2);
        
        if (waitKey(30) >= 0)
            break;
    }

    delete g_scrfd;
    return 0;
}