#cd ../../authTemo/Authorship\ attribution/Authorwise_clean/
cd completepythonbased/test/gujarati/data
mkdir ../grams
for i in *
do
	mkdir ../grams/$i
	cd $i
	for j in *
	do
	~/Projects/workspace/irProject/completepythonbased/authAttrib/textToTokenPerLineWithSpace.py $j ../../temp0.tokens
	cat ../../temp0.tokens
	cat ../../temp0.tokens | $GU_POS/chunking1.py > ../../temp1.features
	crfsuite tag -m $GU_POS/POS-CROSSVAL.model ../../temp1.features > ../../grams/$i/$j.tags
	#python $GU_POS/joinWordTag.py $file temp2.txt ../k2b/$file
	echo $i/$j
	done
	cd ../
done	

rm ../temp0.tokens ../temp1.features