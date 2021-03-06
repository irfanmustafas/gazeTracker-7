
//Author Amit & Manasi
#include <iostream>
#include <highgui.h>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/objdetect/objdetect.hpp"
#include <stdio.h>

using namespace cv;
using namespace std;

/*function Headers*/
//int markerDetect(Mat image); //check this
//int pupilDetect( Mat eyeROI);
void detectAndDisplay( Mat frame );
void calibration();

/*Global variables*/
int iLowH = 130;
int iHighH = 179;

int iLowS = 90;
int iHighS = 255;

int iLowV = 90;
int iHighV = 255;

int iLowpH = 100;
int iHighpH = 150;

int iLowpS = 110;
int iHighpS = 140;

int iLowpV = 100;
int iHighpV = 145;


int thresh=39;  // threshold variable for trackbar
int flag=0;  // to return from function marker Detect
//int mx,my=0;
//int px,py=0;

typedef struct center   // structure for marker centroids
{
	int x=0;
	int y=0;
};

//calibration global var
int calibration_pts=2;
float half_width=10;
float half_length=17;
float width = 2*half_width;
float length = 2*half_length;
int vx[2]={0};
int vy[2]={0};
float thetah[2]={-half_length,half_length};
float thetav[2]={0,width};

float b1,b2,a1,a2;

/*Function Definition*/

void onTrack(int)  // callback func for track bar
	{
		//cout<<thresh;
	}

center markerDetect( Mat image)  // used to detect the marker placed on forhead for gaze vector quantification
	{
		Moments mu;
		int xCen, yCen;
		center mcen;

		Mat imgHSV;
		Mat imgThresholded;
		cvtColor(image, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV

		//Thresholding part starts

		//Thresholding the image
		inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), imgThresholded);

		//Centroid calculation starts

		//morphological opening (remove small objects from the foreground)
		erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
		dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

		//morphological closing (fill small holes in the foreground)
		dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
		erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

		mu = moments(imgThresholded);
		xCen = mu.m10/mu.m00;
		yCen = mu.m01/mu.m00;
		//cout<<xCen<<"\t";
		//cout<<yCen<<endl;

		//Centroid calculation ends


		imshow("Thresholded Image", imgThresholded); //show the thresholded image
		//imshow("Original", image); //show the original image


		mcen.x = xCen;
		mcen.y = yCen;

		return mcen;

	}

center pupilDetect(Mat frame)
	{
		Mat frame_gray;  // gray_scale image
		string window_name = "Capture - Face detection";
		vector<Rect> eyes;  // vector of segmented eyes
		Mat eyeROI;
		Mat eyeROI_thresh;		// Region of interesti.e. eyes
		Moments mu;
		int xCen;
		int yCen;
		center pcen;

		// RNG rng(12345);

		if( !frame.empty() )
		{
			cvtColor( frame, frame_gray, CV_BGR2GRAY );
			equalizeHist( frame_gray, frame_gray );   // pre processing

			//-- 1. Load the cascades
			String eyes_cascade_name = "../config/haarcascade_eye_tree_eyeglasses.xml";
			CascadeClassifier eyes_cascade;

			if( !eyes_cascade.load( eyes_cascade_name ) )
			{
				printf("--(!)Error loading eye\n");
			}

			//-- Detect eyes
			eyes_cascade.detectMultiScale( frame_gray, eyes, 1.1, 2, 0 |CV_HAAR_SCALE_IMAGE, Size(30, 30) );

			for( size_t j = 0; j < eyes.size(); j++ )     //draw circle around every detected eye
			{
				//int j=0;
				eyeROI = frame_gray( eyes[j] );			// extracting gray eyes from the gray scale image
				//eyeROI = frame( eyes[j] );            //extracting colored eyes form the original image
				Point center( eyes[j].x + eyes[j].width*0.5, eyes[j].y + eyes[j].height*0.5 );
				int radius = cvRound( (eyes[j].width + eyes[j].height)*0.25 );
				circle( frame, center, 2*radius, Scalar( 255, 0, 0 ), 4, 8, 0 );
				imshow("original image",frame);
				imshow("eyes", eyeROI);

				//cv::threshold(eyeROI, eyeROI, thresh, 255, cv::THRESH_BINARY_INV);    //binary thresholding of gray scale eyes
				//cv::threshold(eyeROI, eyeROI_thresh, thresh, 255, cv::THRESH_BINARY_INV|CV_THRESH_OTSU);
				Canny(eyeROI,eyeROI_thresh,iLowpH,iHighpH,3);

				//cvtColor(eyeROI, eyeROI, COLOR_BGR2HSV); //Convert the captured eyeROI from BGR to HSV
				//inRange(eyeROI, Scalar(iLowpH, iLowpS, iLowpV), Scalar(iHighpH, iHighpS, iHighpV), eyeROI_thresh); // callback func for hsv thresholding using trackbars created in main

				//morphological opening (remove small objects from the foreground)
				erode(eyeROI, eyeROI, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
				dilate( eyeROI, eyeROI, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

				//morphological closing (fill small holes in the foreground)
				dilate( eyeROI, eyeROI, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
				erode(eyeROI, eyeROI, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

				cv::imshow("eyeROI", eyeROI_thresh);

				mu = moments(eyeROI_thresh);
				//mu = moments(eyeROI);
				xCen = mu.m10/mu.m00;
				yCen = mu.m01/mu.m00;
				//cout<<xCen<<"\t";
				//cout<<yCen<<endl;


				//cout<< xmin;
				//cout<<ymin;

					pcen.x=xCen;
					pcen.y=yCen;
					return pcen;
					//-- Show what you got
					imshow( window_name, frame );
				}

		}
		else
		{
			printf(" --(!) No frame loaded(!)--");
		}

	}

void calibration()
	{
		b1 = ((thetah[1] - thetah[2])/(float)(vx[1]-vx[2]));
		a1 = ((vx[1]*thetah[2]-thetah[1]*vx[2])/(float)(vx[1]-vx[2]));

		b2 = ((thetav[1] - thetav[2])/(float)(vy[1]-vy[2]));
		a2 = ((vy[1]*thetav[2]-thetav[1]*vy[2])/(float)(vy[1]-vy[2]));

		cout << "b1= "<<b1<<" a1= "<<a1<<"b2= "<<b2<<" a2= "<<a2;
	}

int main( int argc, char** argv )
	{
		//int mx,my=0;
		//int px,py=0;
		center mcen;
		center pcen;

		//realtime tracking vars
		float thetah,thetav=0; //
		int vx_local,vy_local;           // eye-marker vector

		VideoCapture cap(0); //capture the video from web cam
		Mat imgOriginal;     //image object

		if ( !cap.isOpened() )  // if not success, exit program
		{
			cout << "Cannot open the web cam" << endl;
			return -1;
		}

		while(true)    // marker detection
		{

			bool bSuccess = cap.read(imgOriginal); // read a new frame from video

			if (!bSuccess) //if not success, break loop
			{
				cout << "Cannot read a frame from video stream" << endl;
				break;
			}

			namedWindow("Control", CV_WINDOW_AUTOSIZE); //create a window called "Control"
			//Create trackbars in "Control" window
			cvCreateTrackbar("LowH", "Control", &iLowH, 179); //Hue (0 - 179)
			cvCreateTrackbar("HighH", "Control", &iHighH, 179);

			cvCreateTrackbar("LowS", "Control", &iLowS, 255); //Saturation (0 - 255)
			cvCreateTrackbar("HighS", "Control", &iHighS, 255);

			cvCreateTrackbar("LowV", "Control", &iLowV, 255); //Value (0 - 255)
			cvCreateTrackbar("HighV", "Control", &iHighV, 255);
			cvCreateTrackbar("finalize", "Control", &flag, 1);



			if (flag==0)
				{
					mcen = markerDetect(imgOriginal);
					cout<<"mcen.x= "<<mcen.x<<" mcen.y= "<<mcen.y<<endl;
				}
			//Closing all the windows
			else if (flag==1)
				{
				destroyWindow("Control");
				destroyWindow("Thresholded Image");
				destroyWindow("Original");
				cout<<"mcen.x= "<<mcen.x<<" mcen.y= "<<mcen.y<<endl;  //print the centrois of marker
				flag=0;
				break;
				}


			if (waitKey(30) == 27) //wait for 'esc' key press for 30ms. If 'esc' key is pressed, break loop
			{
				cout << "esc key is pressed by user" << endl;
				break;
			}
		}

		while(true)   // pupil thresholding
		{
			bool bSuccess = cap.read(imgOriginal); // read a new frame from video

			if (!bSuccess) //if not success, break loop
			{
			cout << "Cannot read a frame from video stream" << endl;
			break;
			}
		/*	namedWindow("pupil Thresholding",CV_WINDOW_AUTOSIZE);
			cvCreateTrackbar("Thresh", "pupil Thresholding", &thresh, 255,onTrack); // create a trackbar for pupil thresholding - grayThreshold (0 - 255)
			cvCreateTrackbar("finalize", "pupil Thresholding", &flag, 1);
			*/

			namedWindow("Control", CV_WINDOW_AUTOSIZE); //create a window called "Control"
			//Create trackbars in "Control" window
			cvCreateTrackbar("LowpH", "Control", &iLowpH, 255); //Hue (0 - 179)
			cvCreateTrackbar("HighpH", "Control", &iHighpH, 255);

			cvCreateTrackbar("LowpS", "Control", &iLowpS, 255); //Saturation (0 - 255)
			cvCreateTrackbar("HighpS", "Control", &iHighpS, 255);

			cvCreateTrackbar("LowpV", "Control", &iLowpV, 255); //Value (0 - 255)
			cvCreateTrackbar("HighpV", "Control", &iHighpV, 255);
			cvCreateTrackbar("finalize", "Control", &flag, 1);

			if(flag==0)
			pcen = pupilDetect(imgOriginal);
			else
			{
			destroyWindow("Control");
			destroyWindow("pupil Thresholding");
			destroyWindow("eyes");
			destroyWindow("eyeROI");
			destroyWindow("original image");
			cout << pcen.x << " " << pcen.y << endl;
			flag=0;
			break;
			}

			if (waitKey(30) == 27) //wait for 'esc' key press for 30ms. If 'esc' key is pressed, break loop
			{
				cout << "esc key is pressed by user" << endl;
				break;
			}

		}

		for(int i=0;i<calibration_pts;i++)    //getting 2 vectors for calibration
		{

			while(true)
			{
					bool bSuccess = cap.read(imgOriginal); // read a new frame from video
					if (!bSuccess) //if not success, break loop
					{
						cout << "Cannot read a frame from video stream" << endl;
						break;
					}

					namedWindow("calibration",CV_WINDOW_AUTOSIZE);
					cvCreateTrackbar("finalize", "calibration", &flag, 1,onTrack); // create a trackbar for pupil thresholding - grayThreshold (0 - 255)

					if (flag==0)
					{
						pcen = pupilDetect(imgOriginal);
						vx[i] = mcen.x - pcen.x;
						vy[i] = mcen.y - pcen.y;
						cout << "vx[i] : " << vx[i] << " " << "vy[i] : " <<  vy[i] << endl;
					}
					else
					{
						flag=0;
						destroyWindow("calibration");
						break;
					}

					if (waitKey(30) == 27) //wait for 'esc' key press for 30ms. If 'esc' key is pressed, break loop
					{
						cout << "esc key is pressed by user" << endl;
						break;
					}
			}
		}

		calibration();  // calibrate

		while(true)			// real time tracking
		{
				bool bSuccess = cap.read(imgOriginal); // read a new frame from video
				if (!bSuccess) //if not success, break loop
				{
					cout << "Cannot read a frame from video stream" << endl;
					break;
				}

				mcen = markerDetect(imgOriginal);
				pcen = pupilDetect(imgOriginal);
				vx_local = mcen.x - pcen.x;
				vy_local = mcen.y - pcen.y;
				cout<< "pcen.x= "<<pcen.x<<"mcen.x= "<<mcen.x;
				thetah = b1*vx_local + a1;
				thetav = b2*vy_local + a2;
				cout << " Thetah = "<<thetah <<" Thetav ="<<thetav << endl;

				if (waitKey(30) == 27) //wait for 'esc' key press for 30ms. If 'esc' key is pressed, break loop
				{
					cout << "esc key is pressed by user" << endl;
					break;
				}
		}


	return 0;
	}
