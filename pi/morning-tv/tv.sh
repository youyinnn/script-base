#!/bin/bash

if [ $1 == open ]
then 

	amixer set PCM 0%
	chromium-browser https://www.cgtn.com/tv

fi

if [ $1 == play ]
then 
	amixer set PCM 100%
	python mouse.py
fi