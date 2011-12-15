# LMS100 Server

This is a de-Max-ified version of the [LMS100 object][1]
by [V2_Lab][2].

[1]: http://www.v2.nl/lab/projects/laser-measurement-system-object-for-max
[2]: http://www.v2.nl/lab

## Dependencies

We use boost, at the moment the build system looks for at least boost
version 1.39, it's quite old (boost is at 1.48 at the moment of this
writing).

Many header-only libraries are used, plus two linked libraries: regex
and unit_test_framework.

## Build instructions

    cd SOURCE_DIR
    mkdir build
    cd build
    cmake ..
    make -j 2 # or more if you have more cores

