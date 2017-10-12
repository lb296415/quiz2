all: doc output

output: collegemain.o college.o course.o
		g++ collegemain.o college.o course.o -o output

collegemain.o: collegemain.cc course.h node.h college.h
				g++ -c collegemain.cc course.h node.h college.h

college.o: college.cc college.h course.h node.h
		   g++ -c college.cc course.h node.h

course.o: course.cc course.h
		  g++ -c course.cc

clean: 

		rm *.o output

doc:

		doxygen -g docu.html
		doxygen docu.html