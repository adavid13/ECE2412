clc;
clear;

x = letter2grade(80);

function[grade] = letter2grade(score)
if((score<=100)&&(score>=90))
    grade = "A";
end
if((score<90)&&(score>=80))
    grade = "B";
end
if((score<80)&&(score>=70))
    grade = "C";
end
if((score<70)&&(score>=60))
    grade = "D";
end
if(score<60)
    grade = "F";
end
if((score<0)||(score>100))
    grade = ("Please enter a score between 0 and 100.");
end
end

