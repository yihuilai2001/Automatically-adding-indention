%{
int count=0;
%}
right [^\n]+[{][^\n]*
leftcode [.*][{][^\t]+[\n]
othercommon [^\n]*[(][^\n]*[)][^\n]*
common [^\t\n]+[;][^\n]*
onlyright [{][^\n]*
onlyleft [}][^\n]*
other [A-Za-z]+
donothing \n
tab \t
%%
{right} {for(int i=0;i<count;i++)printf("\t");ECHO;count++;}
{leftcode}  {for(int i=0;i<count;i++)printf("\t");ECHO;count++;}
{onlyright}	{for(int i=0;i<count;i++)printf("\t");ECHO;count++;}
{othercommon}	{for(int i=0;i<count;i++)printf("\t");ECHO;}
{common}	{for(int i=0;i<count;i++)printf("\t");ECHO;}
{onlyleft}	{count--;for(int i=0;i<count;i++)printf("\t");ECHO;}
{other}		{for(int i=0;i<count;i++)printf("\t");ECHO;}
{tab} 		{;}
%% 
int main(int argc, char *argv[]){
	yylex();
	return(0);
}
