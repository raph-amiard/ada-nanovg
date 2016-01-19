#! /bin/bash

if [ ! -d "OpenGLAda" ]; then
    git clone https://github.com/flyx/OpenGLAda.git
fi

if [ ! -d "nanovg" ]; then
   git clone https://github.com/memononen/nanovg.git
fi
