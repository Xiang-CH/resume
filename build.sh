#!/bin/bash
source .env
xelatex -jobname resume_chen_xiang_with_phone "\def\phonenumber{${PHONE_NUMBER_ONE}}\def\phonenumbertwo{${PHONE_NUMBER_TWO}}\input{main.tex}"
xelatex -jobname resume_chen_xiang "\def\showphone{false}\input{main.tex}"
rm *.aux *.log *.out