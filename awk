1. Basic statics in matrix

Sum,average,max,min of each row
awk '{sum=0; n=split($0,a);for(i=1;i<=n;i++) sum+=a[i];print sum, sum/n}'
awk '{m=$1;for(i=1;i<=NF;i++)if($i<m)m=$i;print m}' #min
awk '{m=$1;for(i=1;i<=NF;i++)if($i>m)m=$i;print m}' #max

Medain of each row 
awk '{split($0,a);asort(a);mid=int(NF/2);NF%2!=0?median=a[mid+1]:median=(a[mid]+a[mid+1])/2;print median}' 

Sum and average of each colum 
awk '{for(i=1; i<=NF; i++){sum[i]+=$i}} END {for(i=1; i<=NF; i++){printf sum[i]/NR "\t"sum[i]"\n"}}'
max and min use sort

2. Transpose a matrix with TAB as field delimiter
datamash  transpose <test.input

3. Uniq function in each row
awk '{for(i=1; i<NF; i++) for(j=i+1; j<=NF; j++) if($i==$j) $j=x; $0=$0; $1=$1 }1' test.number

4. Five line 2 two line
awk 'ORS=NR%5?"\t":"\n"{print}' test




