for(`less otu_table.xls.balance.ids_old2new.csv`){chomp;@id=(split/,/);$hash{$id[0]}=$id[1];}; for(`less otu_table.xls.balance.arff`){if($_=~/attribute (.*) numeric/){print "\@attribute $hash{$1} numeric\n"}else{print $_} }' >otu_table.xls.balance.arff1
ls D* -d | perl -ne 'chomp;for(`less $_/otu_table.xls.balance.ids_old2new.csv`){chomp;@id=(split/,/);$hash{$id[0]}=$id[1];}; open OUT, ">$_/otu_table.xls.balance.arff1"; for(`less $_/otu_table.xls.balance.arff`){if($_=~/attribute (.*) numeric/){print OUT "\@attribute $hash{$1} numeric\n"}else{print OUT $_} }'

