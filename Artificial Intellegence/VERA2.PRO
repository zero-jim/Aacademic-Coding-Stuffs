
domains
   file = infofile1 ; infofile2 ; infofile3
   name, birth_date, birth_place, father_name, mother_name, father_job,
   mother_job, address, istanbul_address, highschool, semester = symbol
   sex = m or f
   no, phone, entry_to_bu, highschool_average, osym_grade, gpa = real
   code, course_name, description, semester_taken, grade = symbol
   credit, semester_opened, lecture_hour, lab_hour = integer
   
database
   student (real,symbol,symbol,symbol,symbol,symbol,symbol,symbol,
            symbol,symbol,real,symbol,real,symbol,real,real)
   course  (symbol,symbol,real,real,symbol,real,real)
   student_course (real,symbol,symbol,grade)
 
predicates
   registration   (real,symbol,symbol,symbol,symbol,symbol,symbol,symbol,
                   symbol,symbol,real,symbol,real,symbol,real,real)
   delete_student (real)
   update_student (real,symbol,symbol,symbol,symbol,symbol,symbol,symbol,
                   symbol,symbol,real,symbol,real,symbol,real,real)

   insert_course  (symbol,symbol,real,real,symbol,real,real)
   delete_course  (symbol)
   update_course  (symbol,symbol,real,real,symbol,real,real)

   add_course     (real,symbol,symbol)
   drop           (real,symbol,symbol)
   withdraw       (real,symbol,symbol)
   enter_grade    (real,symbol,symbol,grade)

   calculate_gpa(real,symbol)

   list_all_students
   list_all_courses
/* list_upper(credit,real)
   list_lower(credit,real)                 */
   list_course_students (symbol,symbol)
   list_course_grade    (symbol,symbol)

   list_course_info     (symbol,symbol)
   list_student_info    (real)
   list_course_info2    (symbol,symbol)
   list_student_info2   (real,grade)
   listing              (file)
   listing_courses      (file)
   exist_student        (real,string)
   exist_course         (symbol,string)
   dbass1               (dbasedom,string)
   dbass2               (dbasedom,string)
   dbret                (dbasedom,string)
   retract1             (dbasedom,string)
   check_data_symbol    (symbol,symbol,symbol)
   check_data_real      (real,real,real)
   gpa_credit           (real,symbol,real,integer)
   exist_no             (dbasedom,string)
   exist_course_no      (real)
   exist_course_code    (symbol)
   exist_course_st      (real,symbol,symbol)
   write_file           (dbasedom)
   total                (real,symbol,integer,integer,integer,real,real,real)
   convert_grade        (grade,real)
   check                (string)
   read_enable          (file)
   repeat               (file)
   check_all_files
   clearall
   open_files
   close_files

goal
   list_all_students.
   
clauses
   registration  (No,Name,Sex,Birth_date,Birth_place,Father_name,
                  Mother_name,Father_job,Mother_job,Address,Phone,
                  Highschool,Highschool_average,Istanbul_address,
                  Entry_to_bu,Osym_grade):-
      existfile  ("student"), !,
      not  (exist_student (No, "student")),
      dbass1 (student(No,Name,Sex,Birth_date,Birth_place,Father_name,
                      Mother_name,Father_job,Mother_job,Address,Phone,
                      Highschool,Highschool_average,Istanbul_address,
                      Entry_to_bu,Osym_grade), "student").
   registration  (No,Name,Sex,Birth_date,Birth_place,Father_name,
                  Mother_name,Father_job,Mother_job,Address,Phone,
                  Highschool,Highschool_average,Istanbul_address,
                  Entry_to_bu,Osym_grade):-
      dbass2 (student(No,Name,Sex,Birth_date,Birth_place,Father_name,
                      Mother_name,Father_job,Mother_job,Address,Phone,
                      Highschool,Highschool_average,Istanbul_address,
                      Entry_to_bu,Osym_grade),"student").

   delete_student (No) :-
      dbret (student(No,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_), "student").

   update_student  (No,Name,Sex,Birth_date,Birth_place,Father_name,
                    Mother_name,Father_job,Mother_job,Address,Phone,
                    Highschool,Highschool_average,Istanbul_address,
                    Entry_to_bu,Osym_grade) :-
      check ("student"),
      retract1 (student(No,Name1,Sex1,Bd1,Bp1,Fn1,Mn1,Fj1,Mj1,Adr1,
                        Ph1,Hs1,Ha1,Ia1,Entry1,Osym1), "student"), !,
      check_data_symbol (Name,Name1,Name2),
      check_data_symbol (Sex,Sex1,Sex2),
      check_data_symbol (Birth_date,Bd1,Bd2),
      check_data_symbol (Birth_place,Bp1,Bp2),
      check_data_symbol (Father_name,Fn1,Fn2),
      check_data_symbol (Mother_name,Mn1,Mn2),
      check_data_symbol (Father_job,Fj1,Fj2),
      check_data_symbol (Mother_job,Mj1,Mj2),
      check_data_symbol (Address,Adr1,Adr2),
      check_data_real   (Phone,Ph1,Ph2),
      check_data_symbol (Highschool,Hs1,Hs2),
      check_data_real   (Highschool_average,Ha1,Ha2),
      check_data_symbol (Istanbul_address,Ia1,Ia2),
      check_data_real   (Entry_to_bu,Entry1,Entry2),
      check_data_real   (Osym_grade,Osym1,Osym2),
      openappend  (infofile1,"student"),
      writedevice (infofile1),
      write_file  (student(No,Name2,Sex2,Bd2,Bp2,Fn2,Mn2,Fj2,Mj2,
                           Adr2,Ph2,Hs2,Ha2,Ia2,Entry2,Osym2)), nl,
      closefile   (infofile1).

   insert_course (Code,Course_name,Credit,Semester,Desc,Lec_hour,Lab_hour):-
      check("course"), !,
      not (exist_course(Code, "course")),
      dbass1 (course(Code,Course_name,Credit,Semester,Desc,Lec_hour,Lab_hour),"course").

   insert_course (Code,Course_name,Credit,Semester,Desc,Lec_hour,Lab_hour):-
      dbass2 (course(Code,Course_name,Credit,Semester,Desc,Lec_hour,Lab_hour),"course").

   delete_course (Code):-
      dbret (course(Code,_,_,_,_,_,_),"course").
         
   update_course (Code,Course_name,Credit,Semester,Desc,Lec_hour,Lab_hour):-
      check ("course"),
      retract1 (course(Code,Course_name1,Credit1,Semester1,Desc1,Lec_hour1,Lab_hour1),
                "course"), !,
      check_data_symbol (Course_name,Course_name1,Course_name2),
      check_data_real   (Credit,Credit1,Credit2),
      check_data_real   (Semester,Semester1,Semester2),
      check_data_symbol (Desc,Desc1,Desc2),
      check_data_real   (Lec_hour,Lec_hour1,Lec_hour2),
      check_data_real   (Lab_hour,Lab_hour1,Lab_hour2),
      openappend  (infofile3,"course"),
      writedevice (infofile3),
      write_file  (course(Code,Course_name2,Credit2,Semester2,Desc2,Lec_hour2,Lab_hour2)),nl,
      closefile   (infofile3).

   add_course (No,_,_):-
      check ("student"),
      not (exist_course_no(No)),!,
      write ("Error:no student of given no exists !"),nl.

   add_course (_,Code,_):-
      check ("course"),
      not (exist_course_code(Code)),!,
      write ("Error:no course of given code exists !"),nl.
  
   add_course (No,Code,Semester_taken):-
      existfile ("stcourse"),
      exist_course_st (No,Code,Semester_taken),!,
      write ("Error:same code already exists !"),nl.
      
   add_course (No,Code,Semester_taken):-
      existfile ("stcourse"),!,
      dbass1 (student_course(No,Code,Semester_taken," "),"stcourse").

   add_course (No,Code,Semester_taken):-
      dbass2  (student_course(No,Code,Semester_taken," "),"stcourse").
      
   drop (No,Code,Semester):-
      check ("stcourse"),
      not (exist_course_st(No,Code,Semester)),!,
      write ("Error : no such record exists !"),nl.

   drop (No,Code,Semester):-
      openmodify (infofile1,"stcourse"),
      closefile (infofile1),
      dbret (student_course(No,Code,Semester,_),"stcourse").
    
   withdraw (Num,Cod,Sem):-
      enter_grade (Num,Cod,Sem,w).

   enter_grade (No,Code,Semester_taken,Grade):-
      check ("stcourse"),
      retract1 (student_course(No,Code,Semester_taken,_),"stcourse"),!,
      openappend  (infofile1,"stcourse"),
      writedevice (infofile1),
      write_file  (student_course(No,Code,Semester_taken,Grade)),nl,
      closefile   (infofile1).

   list_all_students:-
      check ("student"),
      openread (infofile1,"student"),
      read_enable (infofile1),
      listing (infofile1).
      
   list_all_students:- closefile(infofile1).
      
   list_all_courses:-
      check ("course"),
      openread (infofile3,"course"),
      read_enable (infofile3),
      listing_courses (infofile3).
      
   list_all_courses:- closefile(infofile3).
      
/*   list_upper(Credit_limit,Gpa_limit):-
      check_all_files,
      open_files,
      read_enable(infofile1),
      readterm(Dbasedom,student(No,Name,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),
      gpa_credit(No,_,Gpa,Total_credit),
      Gpa>=Gpa_limit,
      Total_credit>=Credit_limit,  
      write(No,Name,Gpa,Total_credit).

   list_upper(_,_):-close_files.
 
   list_lower(Gpa_limit,Credit_limit):-
      check_all_files, 
      open_files,
      read_enable(infofile1),
      readterm(Dbasedom,student(No,Name,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),
      gpa_credit(No,_,Gpa,Total_credit),
      Gpa<Gpa_limit,
      Total_credit>=Credit_limit,
      write(No,Name,Gpa,Total_credit).

   list_lower(_,_):-close_files.      */

   list_course_students(Code,Semester_taken):-
      check_all_files,
      open_files,
      read_enable(infofile3),
      readterm(Dbasedom,course(Code,Course_name,_,_,_,_,_)),!,
      write(Code,Course_name,Semester_taken),nl,
      list_course_info(Code,Semester_taken),
      close_files.
      
   list_course_students(_,_):-
      write("Error-no such course exists !"),nl,
      close_files.
      
   list_course_info(Code,Semester_taken):-
      read_enable(infofile2),
      readterm(Dbasedom,student_course(Num,Code,Semester_taken,_)),
      list_student_info(Num),
      list_course_info(Code,Semester_taken).
      
   list_student_info(Num):-
      closefile(infofile1),
      openread(infofile1,"student"),
      read_enable(infofile1),
      readterm(Dbasedom,student(Num,Nam,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),!,
      write(Num,Nam),nl.
      
   list_course_grade(Code,Semester_taken):-
      check_all_files,
      open_files,
      read_enable(infofile3),
      readterm(Dbasedom,course(Code,Course_name,_,_,_,_,_)),!,
      write(Code,Course_name,Semester_taken),nl,
      list_course_info2(Code,Semester_taken),
      close_files.
      
   list_course_grade(_,_):-
      write("Error-no such course exists !"),nl,
      close_files.
      
   list_course_info2(Code,Semester_taken):-
      read_enable(infofile2),
      readterm(Dbasedom,student_course(Num,Code,Semester_taken,Grade)),
      list_student_info2(Num,Grade),
      list_course_info2(Code,Semester_taken).
      
   list_student_info2(Num,Grade):-
      closefile(infofile1),
      openread(infofile1,"student"),
      read_enable(infofile1),
      readterm(Dbasedom,student(Num,Nam,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),!,
      write(Num,Nam,Grade),nl.

   calculate_gpa(No,Semester):-
      check("student"),
      open_files,
      readdevice(infofile1),
      repeat(infofile1),
      readterm(Dbasedom,student(No,Name,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),!,
      gpa_credit(No,Semester,Gpa,Total_credit),
      write(No,Name,Gpa,Total_credit),
      close_files.

   calculate_gpa(_,_):-
      write("Error:no student of given no exists!").

   listing (infofile1):-
      repeat (infofile1),
      readterm (Dbasedom,student(No,Name,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),
      write ("No   = ",No),nl,
      write ("Name = ",Name),nl,
      listing (infofile1).

   listing_courses (infofile3):-
      repeat (infofile3),
      readterm (Dbasedom,course(Code,Course_name,Semester,_,_,_,_)),
      write ("Code = ",Code),nl,
      write ("Name = ",Course_Name) ,nl,
      write ("Semester = ",Semester),nl,
      listing_courses (infofile3).

   exist_student(No,Datafile):-
      exist_no(student(No,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_),Datafile),
      write("error:student number is not unique").
 
   exist_course_no (No):-
      exist_no (student(No,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_),
                "student").
  
   exist_course_code (Code):-
      exist_no (course(Code,_,_,_,_,_,_),"course").

   exist_course_st (No,Code,Semester):-
      exist_no (student_course(No,Code,Semester,_),"stcourse").
      
   exist_course(Code,Datafile):-
      exist_no(course(Code,_,_,_,_,_,_),Datafile),
      write("error:course number is not unique").
 
   dbass1(Term,Datafile):-
      openappend(infofile1,Datafile),
      writedevice(infofile1),
      write(Term),nl,
      closefile(infofile1).

   dbass2(Term,Datafile):-
      openwrite(infofile1,Datafile),
      writedevice(infofile1),
      write(Term),nl,
      closefile(infofile1).
                                      
   dbret(Term,Datafile):-
      check(Datafile),
      retract1(Term,Datafile).

   retract1(Term,Datafile):-
      clearall,
      consult(Datafile),
      retract(Term),!,
      save(Datafile).

   retract1(_,_):-
      write("Error:no fact of given data exists"),
      fail.
  
   clearall:-
      retract(student(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),fail.
   clearall:-
      retract(course(_,_,_,_,_,_,_)),fail.
   clearall:-
      retract(student_course(_,_,_,_)),fail.
   clearall.             

   check_data_symbol(X,Y,Z):-
      X="0",!,
      Z=Y.

   check_data_symbol(X,_,Z):-
      Z=X.
   
   check_data_real(X,Y,Z):-
      X=0,!,
      Z=Y.

   check_data_real(X,_,Z):-
      Z=X.

   gpa_credit(Num,Sem,Gpa_val,Tot_credit):-
      total(Num,Sem,0,_,Tot_credit,0,_,Gpa_tot),
      Gpa_val=Gpa_tot/Tot_credit.

   exist_no(Term,Datafile):-
      openread(infofile1,Datafile),
      readdevice(infofile1),
      repeat(infofile1),
      readterm(Dbasedom,Term),!,
      closefile(infofile1).

   exist_no(_,_):-
      closefile(infofile1),
      fail.
       
   write_file(Term):-
      write(Term).    
 
   total(N,S,C,Sum1,Cfinal,G,Sum2,Gfinal):-
      Cfinal=C,
      Gfinal=G,
      read_enable(infofile2),
      readterm(Dbasedom,student_course(N,Code,S,Grade)),
      convert_grade(Grade,Grade_val),
      read_enable(infofile3),!,
      readterm(Dbasedom,course(Code,_,Credit,_,_,_,_)),
      Sum1=C+Credit,
      Sum2=G+(Grade_val*Credit),
      write(Sum1,Sum2),
      total(N,S,Sum1,_,_,Sum2,_,_).

   convert_grade(G,G_val):-
      G=aa,!,
      G_val=4.00.

  convert_grade(G,G_val):-
      G=ba,!,
      G_val=3.50.

   convert_grade(G,G_val):-
      G=bb,!,
      G_val=3.00.

   convert_grade(G,G_val):-
      G=cb,!,
      G_val=2.50.
 
   convert_grade(G,G_val):-
      G=cc,!,
      G_val=2.00.

   convert_grade(G,G_val):-
      G=dc,!,
      G_val=1.50.

   convert_grade(G,G_val):-
      G=dd,!,
      G_val=1.00.

   convert_grade(G,G_val):-
      G=f,
      G_val=0.00.
  
   check_all_files:-
      check("student"),
      check("course"),
      check("stcourse").
      
   check(Fname):-existfile(Fname),!.

   check(Fname):-  
      write("Error:the file ",Fname," is not found!"),
      fail.
   
   read_enable(File):-
      readdevice(File),
      repeat(File).

   open_files:-
      openread(infofile1,"student"),
      openread(infofile2,"stcourse"),
      openread(infofile3,"course").

   close_files:-
      closefile(infofile1),
      closefile(infofile2),
      closefile(infofile3).

   repeat(_).

   repeat(File):-not(eof(File)),repeat(File).

   
