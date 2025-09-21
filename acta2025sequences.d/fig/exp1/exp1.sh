##


cmd=main7cdawg; rm -f $cmd.dot $cmd.pdf && make STR='\#abcadabcabc\$$' OPT='-w -L -f 18' $cmd.pdf && make $cmd.pdf 

cmd=main6stree; rm -f $cmd.dot $cmd.pdf && make STR='\#abcadabcabc\$$' OPT='-w -L -f 18' $cmd.pdf && make $cmd.pdf

cmd=main6stree; rm -f $cmd.dot $cmd.pdf && make STR='\$$cbacbadacba\#' OPT='-w -L -f 18' $cmd.pdf ; make $cmd.pdf


