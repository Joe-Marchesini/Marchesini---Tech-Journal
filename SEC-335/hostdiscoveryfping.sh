#!/bin/bash

fping -a -q -g 10.0.5.2 10.0.5.50 -r 1 > sweep.txt
