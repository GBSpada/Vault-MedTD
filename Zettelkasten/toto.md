arch = $(grep -rnwle '#ArchitettureDiCalcolo')
sist = $(grep -rnwle '#SistemiOperativi')

touch archsist.txt
echo "$arch" > archsist.txt
echo "$sist" > archsist.txt

cp ("$cat archsist.txt") lama