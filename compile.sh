#!/bin/bash
source .env
xelatex -jobname cv_with_phone "\def\phonenumber{${PHONE_NUMBER}}\input{main.tex}"
xelatex -jobname cv_without_phone "\def\showphone{false}\input{main.tex}"
rm *.aux *.log *.out