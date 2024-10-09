#!/bin/bash 

pgcc -acc=gpu -o hello_acc hello_acc.c
./hello_acc

