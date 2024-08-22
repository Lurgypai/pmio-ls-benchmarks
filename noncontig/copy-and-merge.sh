#!/bin/bash

cp ../../merger/out/smartMerge .

./smartMerge --outFile test.out.merged --bufferFolder buffers --outDataFile buffers/data-log.merged --maxDataSize 131072
