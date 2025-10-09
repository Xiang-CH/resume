#!/bin/bash
source .env
xelatex -jobname resume_chen_xiang_with_phone "\def\phonenumber{${PHONE_NUMBER}}\input{main.tex}"
xelatex -jobname resume_chen_xiang "\def\showphone{false}\input{main.tex}"
rm *.aux *.log *.out