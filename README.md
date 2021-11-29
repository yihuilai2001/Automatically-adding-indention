## Automatically-adding-indentation

### Background
 Indention in a traditional article is to add empty line or proper whitespace between words or
 paragraph to make the content easier to read or even more well-organized. As for ‘indent’ of
 the code usually refers to add proper number of ‘\t’ (i.e. tab character) at the beginning of the
 code. The C-style-indention whose ‘\t’ numbers at the beginning of each lines are mainly
 controlled by pairs of brackets, i.e. ‘{’ and ‘}’ characters, is widely used in many famous
 languages like C/C++, Java.
 
### Description
Write a Lex program to deal with code indentation of coding style mentioned above.

### Method
Maintain a counter to count the number of padding tabs in the beginning of the line. Decrease/Increase the counter at the right time.


Sample Input
--
 int main(){
for(int i = 0; i < 10 ; i ++) // need 1 tab { // need 1 tab

for(int j = 0 ; j <= i ; j ++) // need 2 tab

printf(“*”); // need 2 tab

 printf(“\n”); // need 2 tab } // need 1 tab
 
} // need 0 tab

Sample Output
--
 int main(){
for(int i = 0; i < 10 ; i ++) // need 1 tab { // need 1 tab
for(int j = 0 ; j <= i ; j ++) // need 2 tab printf(“*”); // need 2 tab
printf(“\n”); // need 2 tab
} // need 1 tab } // need 0 tab
