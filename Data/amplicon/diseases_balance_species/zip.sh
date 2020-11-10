ls D* -d|grep -v D000067877|perl -ne 'chomp;$_=~s/\///;print "cd /mnt/d/database/GMrepo/amplicon/diseases_balance_species/$_; zip -m $_.zip otu_table.xls.balance.arff otu_table.xls.balance.libsvm otu_table.xls.balance.lastColAsLabels.csv\n"' |sh

