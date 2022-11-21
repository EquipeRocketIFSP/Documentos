set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Irina Chang Ferreira" w lines, 'commits_by_author.dat' using 1:3 title "hshima" w lines, 'commits_by_author.dat' using 1:4 title "Thunder8598" w lines, 'commits_by_author.dat' using 1:5 title "Caique Daniel" w lines, 'commits_by_author.dat' using 1:6 title "Murilo Pires" w lines, 'commits_by_author.dat' using 1:7 title "Marcos Querino" w lines, 'commits_by_author.dat' using 1:8 title "Luís Renato Moreira da Costa" w lines, 'commits_by_author.dat' using 1:9 title "marcos.querino@aluno.ifsp.edu.br" w lines, 'commits_by_author.dat' using 1:10 title "Henrique Shimada" w lines, 'commits_by_author.dat' using 1:11 title "murilospires" w lines, 'commits_by_author.dat' using 1:12 title "mqjunioretecgv@gmail.com" w lines, 'commits_by_author.dat' using 1:13 title "Luis-Renato-Costa" w lines, 'commits_by_author.dat' using 1:14 title "Irina Ferreira" w lines
