for i in `ls */otu_table.xls.balance.csv.LogisticRegression.hypertuned.confusion_matrix.svg`;  
do   
new=${i//svg/new.svg}

echo "cat $i |\
 sed 's/text_7/text_7\" fill=\"white/' |\
 sed 's/text_8/text_8\" fill=\"white/' |\
 sed 's/text_13/text_13\" fill=\"white/' |\
 sed 's/text_14/text_14\" fill=\"white/' > $new"

done  
