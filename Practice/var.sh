#!/bin/bash

intro="This is my first variable."
echo $intro

about="This is your hostname '$(uname -n)' and you are running '$(uname -o)' OS."
echo $about

var="globle variable"

function func {
    local var="local variable"
    echo "inside function: $var"
}

echo "before function: $var"
func
echo "after function: $var"