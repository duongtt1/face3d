// Tencent is pleased to support the open source community by making ncnn available.
//
// Copyright (C) 2021 THL A29 Limited, a Tencent company. All rights reserved.
//
// Licensed under the BSD 3-Clause License (the "License"); you may not use this file except
// in compliance with the License. You may obtain a copy of the License at
//
// https://opensource.org/licenses/BSD-3-Clause
//
// Unless required by applicable law or agreed to in writing, software distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

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

int main(int argc, char **argv)
{
    Mat img;
    Mat img2;
    SCRFD *g_scrfd = new SCRFD;

    VideoCapture cap(0);

    if (!cap.isOpened())
    {
        cout << "Can't open camera" << endl;
        return 0;
    }

    g_scrfd->load("1g");

    while (true)
    {
        cap.read(img);

        cv::resize(img, img2, cv::Size(800, 600));

        // cv::imshow("VideoCapture", img);
        std::vector<FaceObject> faceobjects;
        g_scrfd->detect(img2, faceobjects);
        g_scrfd->draw(img2, faceobjects);
        cv::imshow("img", img2);
        if (waitKey(30) >= 0)
            break;
    }

    delete g_scrfd;
    return 0;
}