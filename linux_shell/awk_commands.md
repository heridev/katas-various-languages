## The commands to test
1. print all the lines
```
awk '{print}' employee.txt
```

2. Print the lines that include `manage`
```
awk '/manage/ {print}' awk_practice.txt
```

3. by default it splits everything by space and assign to different column numbers($n), $0 is the entire line
```
awk '{print $1, $4}' awk_practice.txt
```
or with a pattern
```
awk '/manage/ {print $1, $4}' awk_practice.txt
```
4. Changing the default delimiter
```
awk 'BEGIN{FS="SPT"} {print $3}' awk_practice.txt
```
5. (Display Line From 3 to 6)  
```
awk NR==3, NR==6 '{print NR, $0}' awk_practice.txt
```
6. print the line number(NR) along with the first column 
```
awk '{print NR, $1}' awk_practice.txt
```
7. print the content of the longest line
```
awk '{if (length($0) > max) max = length($0); longest=$0} END {print longest}' awk_practice.txt
```
8. Using regular expressions
```
awk -e '$1 ~ /p[el]/ {print $0}'
```
9. Using match and how to get the string that matches
```
awk '{
  if(match($0, /manager/)) {
    print "matched:", substr($0, RSTART, RLENGTH), "position: ", RSTART, "end position:", RLENGTH
  } else {
    print "no match found in: ", NR
  }
}' awk_practice.txt
```
9. Finding the maximum and minimum salary
```
awk 'BEGIN{max_salary = -1; min_salary = 99999999;}
  {
    if(min_salary > $4) min_salary = $4;
    if(max_salary < $4) max_salary = $4;
  }
  END { 
    print min_salary, max_salary
  }' awk_practice.txt
```
The BEGIN is executed before any input is processed, and it is typically used for initializing data
The END clause is executed after all inputs are processed, ​​It's useful for performing calculations or generating summary output after processing the entire file.

