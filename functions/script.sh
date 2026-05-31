#!/bin/bash

hello_function() {
	echo "Hello world"
}

hello_function

hello_with_vars() {
	echo "Hello, $1! Today is $2"
}

name="Ilya"
hello_with_vars $name "Voscresenie"
