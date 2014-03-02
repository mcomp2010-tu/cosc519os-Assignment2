// COSC_OS_HW2.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <iostream>



using namespace std;
#define BUFFER_SIZE 1024
#define COPY_SIZE 512

/*
   MyCopyMemory - A wrapper for CopyMemory

   buf     - destination buffer
   pbData  - source buffer
   cbData  - size of block to copy, in bytes
   bufsize - size of the destination buffer
*/

void MyCopyMemory(TCHAR *buf, TCHAR *pbData, SIZE_T cbData, SIZE_T bufsize) 
{
    CopyMemory(buf, pbData, min(cbData,bufsize));
}

int main()
{
    TCHAR buf[BUFFER_SIZE] = TEXT("This is the destination");
    TCHAR pbData[BUFFER_SIZE] = TEXT("This is the source");

    MyCopyMemory(buf, pbData, COPY_SIZE*sizeof(TCHAR), BUFFER_SIZE*sizeof(TCHAR));

    _tprintf(TEXT("Destination buffer contents: %s\n"), buf);

	int i;
	cout << "Please enter an integer value: ";
	cin >> i;
	return 0;
}
