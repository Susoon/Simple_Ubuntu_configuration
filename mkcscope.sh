#!/bin/sh

rm -rf cscope.files cscope.out

find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h'-o -name '*.cu' \) -print > cscope.files

cscope -i cscope.files
