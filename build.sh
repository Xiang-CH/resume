#!/bin/bash
source .env
xelatex -jobname chen_xiang-resume "\def\phonenumber{${PHONE_NUMBER_ONE}}\def\phonenumbertwo{${PHONE_NUMBER_TWO}}\input{main.tex}"
xelatex -jobname 陈想-简历 "\def\phonenumbertwo{${PHONE_NUMBER_TWO}}\input{main_zh.tex}"
xelatex -jobname chen_xiang-resume-no-phone "\def\showphone{false}\input{main.tex}"
xelatex -jobname 陈想-简历-无电话 "\def\showphone{false}\input{main_zh.tex}"
rm *.aux *.log *.out