# output as png image
set terminal png

# save file to "benchmark.png"
set output "benchmark.png"

# graph title
set title "ab -n 100 -c 50 -g out-*.data http://wptest-*.rumahweb.net/

#nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

#x-axis label
set xlabel "request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "out.data" using column 9 with smooth sbezier lines
plot 	"out-nginx.data" using 9 smooth sbezier with lines title "nginx", \
	"out-lsws.data" using 9 smooth sbezier with lines title "lsws", \
	"out-apache.data" using 9 smooth sbezier with lines title "apache"
