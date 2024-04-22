from django.shortcuts import render,HttpResponseRedirect

import MySQLdb
db=MySQLdb.connect("localhost","root","","db_student")
c=db.cursor()
# Create your views here.
def admin_reg(request):
    # c.execute("select sname from school")
    # data=c.fetchall()
    if 'submit' in request.POST:
        pname=request.POST.get("name")
        phno=request.POST.get("phno")
        school=request.POST.get("school")
        uname=request.POST.get("uname")
        password=request.POST.get("password")
        dist=request.POST.get("dist")
        accno=request.POST.get("accno")
        branch=request.POST.get("branch")
        ifsc=request.POST.get("ifsc")
        if request.FILES.get("img"):
                from django.core.files.storage import FileSystemStorage
                fs=FileSystemStorage()
                myfile=request.FILES.get("img")
                filename=fs.save(myfile.name,myfile)
                upload_url=fs.url(filename)
                c.execute("insert into admin_reg(pname,phno,school,uname,password,image,district,account,branch,ifsc) values('"+ pname +"','"+ phno +"','"+ school +"','"+ uname +"','"+ password +"','"+ upload_url +"','"+ dist +"','"+accno+"','"+branch+"','"+ifsc+"')")
                types="admin"
                c.execute("insert into login(uname,password,type) values('"+ uname +"','"+ password +"','"+ types +"')")
                db.commit()
    elif 'clear' in request.POST:
        return HttpResponseRedirect('/admin_reg/')
    return render(request,'public/admin_reg.html')
def sponser_reg(request):
    # c.execute("select sname from school")
    # data=c.fetchall()
    if 'submit' in request.POST:
        pname=request.POST.get("name")
        phno=request.POST.get("phno")
        school=request.POST.get("school")
        uname=request.POST.get("uname")
        password=request.POST.get("password")
        dist=request.POST.get("dist")
        if request.FILES.get("img"):
                from django.core.files.storage import FileSystemStorage
                fs=FileSystemStorage()
                myfile=request.FILES.get("img")
                filename=fs.save(myfile.name,myfile)
                upload_url=fs.url(filename)
                c.execute("insert into sponser_reg(pname,phno,organization,uname,password,image,district) values('"+ pname +"','"+ phno +"','"+ school +"','"+ uname +"','"+ password +"','"+ upload_url +"','"+ dist +"')")
                types="Sponser"
                c.execute("insert into login(uname,password,type) values('"+ uname +"','"+ password +"','"+ types +"')")
                db.commit()
    elif 'clear' in request.POST:
        return HttpResponseRedirect('/sponser_reg/')
    return render(request,'public/sponser_reg.html')

def login(request):
    data=msg=""
    if 'submit' in request.POST:
        uname=request.POST.get("uname")
        password=request.POST.get("password")

        c.execute("select * from login where uname='"+ uname +"' and password='"+ password +"'")
        data=c.fetchone()
        if data!=None:
            if data[2]=="admin":
                request.session["uname"]=uname
                return HttpResponseRedirect('/admin_home/')
            elif data[2]=="staff":
                request.session["uname"]=uname
                return HttpResponseRedirect('/staff_home/')
            elif data[2]=="Sponser":
                request.session["uname"]=uname
                return HttpResponseRedirect('/view_sponserservice/')
            elif data[2]=="user":
                request.session["uname"]=uname
                return HttpResponseRedirect('/user_home/')
            else:
                msg="User authentication failed"
        else:
                msg="username password mismatches"
                

    elif 'clear' in request.POST:
        return HttpResponseRedirect('/login/')
   
    return render(request,'public/login.html',{"data":data,"msg":msg})

def admin_home(request):
    return render(request,'admin/admin_home.html')

#Admin add pages
def admin_add_stud(request):
    msg=""
    if 'submit' in request.POST:
        name=request.POST.get("name")
        clas=request.POST.get("clas")
        age=request.POST.get("age")
        gender=request.POST.get("gender")
        parent=request.POST.get("parent")
        email=request.POST.get("email")
        phno=request.POST.get("phno")
        adno=request.POST.get("adno")
        address=request.POST.get("address")
        c.execute("select school from admin_reg where uname="+ request.session["uname"] +"'")
        school=c.fetchone()        
        c.execute("insert into student(name,clas,age,gender,parent,email,phno,adno,address,school) values('"+ name +"','"+ clas +"','"+ age +"','"+ gender +"','"+ parent +"','"+ email +"','"+ phno +"','"+ adno +"','"+ address +"','"+ school[0] +"')")
        db.commit()
        msg="Success Fully Added"
    if 'clear' in request.POST:
        return HttpResponseRedirect("/admin_add_stud/")
    return render(request,'admin/admin_add_stud.html',{"msg":msg})

def admin_add_staff(request):
    msg=""
    if 'submit' in request.POST:
        name=request.POST.get("name")        
        age=request.POST.get("age")
        gender=request.POST.get("gender")    
        course=request.POST.get("course")   
        email=request.POST.get("email")
        phno=request.POST.get("phno")        
        address=request.POST.get("address")
        password=request.POST.get("password")
        c.execute("select school from admin_reg where uname='"+ request.session["uname"] +"'")
        school=c.fetchone()        
        c.execute("insert into staff(name,age,gender,course,email,phno,address,school,password) values('"+ name +"','"+ age +"','"+ gender +"','"+ course +"','"+ email +"','"+ phno +"','"+ address +"','"+ school[0] +"','"+ password +"')")
        types="staff"
        c.execute("insert into login(uname,password,type) values('"+ email +"','"+ password +"','"+ types +"')")
        db.commit()
        msg="Success Fully Added"
    if 'clear' in request.POST:
        return HttpResponseRedirect("/admin_add_staff/")
    return render(request,'admin/admin_add_staff.html',{"msg":msg})

def admin_add_travel(request):
    msg=""
    if 'submit' in request.POST:
        bno=request.POST.get("bno")
        routes=request.POST.get("routes")        
        btype=request.POST.get("type")
        if request.FILES.get("img"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("img")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            c.execute("select school from admin_reg where uname='"+ request.session["uname"] +"'")
            school=c.fetchone()  
            c.execute("insert into travel(bno,route,btype,image,school) values('"+ bno +"','"+ routes +"','"+ btype +"','"+ upload_url +"','"+ school[0] +"')") 
            db.commit()
            msg="Success fully added"
        else:
            msg="choose image"
    if 'clear' in request.POST:
        return HttpResponseRedirect("/admin_add_travel/")
    return render(request,'admin/admin_add_travel.html',{"msg":msg})

def payment(request):
    # return render(request,'payment/payment1.html')
    if request.POST:
        card=request.POST.get("test")
        request.session["card"]=card
        cardno=request.POST.get("cardno")
        request.session["card_no"]=cardno
        pinno=request.POST.get("pinno")
        request.session["pinno"]=pinno
        return HttpResponseRedirect("/payment2")
    return render(request,"payment/payment1.html")

def payment2(request):
    cno=request.session["card_no"]
    amount=request.session["amount"]
    if request.POST:
        return HttpResponseRedirect("/payment3")
    return render(request,"payment/payment2.html",{"cno":cno,"amount":amount})

def payment3(request):
    return render(request,"payment/payment3.html")

def payment4(request):
    return render(request,"payment/payment4.html")

def payment5(request):
    cno=request.session["card_no"]
    import datetime
    today = datetime.date.today()
    name =  request.session["adno"]
    amount = request.session["amount"]
    return render(request,"payment/payment5.html",{"cno":cno,"today":today,"name":name,"amount":amount})
def AddVideios(request):
    if request.POST :
        name=request.POST.get("t1")
        type=request.POST.get("t2")
        import datetime
        today = datetime.date.today()
        if request.FILES.get("t3"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("t3")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            
            c.execute("insert into videos(`name`,`type`,`Video`,`date`) values('"+str(name)+"','"+str(type)+"','"+str(upload_url)+"','"+str(today)+"')") 
            db.commit()
       
    return render(request,"admin/AddVideios.html")
def Addjob(request):
    if request.POST :
        name=request.POST.get("t1")
        
        dis=request.POST.get("t3")
        edate=request.POST.get("t5")
        import datetime
        today = datetime.date.today()
        if request.FILES.get("t4"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("t4")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            
            c.execute("insert into job(`name`,`dis`,`application`,`date`,`enddate`) values('"+str(name)+"','"+str(dis)+"','"+str(upload_url)+"','"+str(today)+"','"+str(edate)+"')") 
            db.commit()
    qry="select * from job"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"admin/AddJob.html",{"data":data})
def AddSponserform(request):
    if request.POST :
        name=request.POST.get("t1")
        
        dis=request.POST.get("t3")
        
        import datetime
        today = datetime.date.today()
        if request.FILES.get("t4"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("t4")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            
            c.execute("insert into sponserform(`name`,`dis`,`form`,`date`) values('"+str(name)+"','"+str(dis)+"','"+str(upload_url)+"','"+str(today)+"')") 
            db.commit()
    qry="select * from sponserform"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"admin/AddSponserform.html",{"data":data})
def AddTraining(request):
    if request.POST :
        name=request.POST.get("t1")
        
        dis=request.POST.get("t3")
        edate=request.POST.get("t5")
        import datetime
        today = datetime.date.today()
        if request.FILES.get("t4"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("t4")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            
            c.execute("insert into training(`subject`,`dis`,`video`,`date`,`enddate`) values('"+str(name)+"','"+str(dis)+"','"+str(upload_url)+"','"+str(today)+"','"+str(edate)+"')") 
            db.commit()
    qry="select * from training"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"admin/AddTraining.html",{"data":data})
def AddnewsEvents(request):
    if request.POST :
        name=request.POST.get("t1")
        
        dis=request.POST.get("t3")
        edate=request.POST.get("t5")
        import datetime
        today = datetime.date.today()
        if request.FILES.get("t4"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("t4")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            
            c.execute("insert into newsevents(`name`,`discrib`,`image`,`date`,`enddate`) values('"+str(name)+"','"+str(dis)+"','"+str(upload_url)+"','"+str(today)+"','"+str(edate)+"')") 
            db.commit()
    qry="select * from newsevents"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"admin/AddnewsEvents.html",{"data":data})
def Addservice(request):
    msg=""
    if request.POST :
        name=request.POST.get("t1")
        types=request.POST.get("t2")
        dis=request.POST.get("t3")
        edate=request.POST.get("t5")
        import datetime
        today = datetime.date.today()
        if request.FILES.get("t4"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("t4")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            print("insert into service(`name`,`type`,`discrib`,`app`,`date`,`enddate`) values('"+str(name)+"','"+str(types)+"','"+str(dis)+"','"+str(upload_url)+"'+'"+str(today)+"','"+str(edate)+"')")
            c.execute("insert into service(`name`,`type`,`discrib`,`app`,`date`,`enddate`) values('"+str(name)+"','"+str(types)+"','"+str(dis)+"','"+str(upload_url)+"','"+str(today)+"','"+str(edate)+"')") 
            db.commit()
            msg="Added Successfully"
    return render(request,"admin/Addservice.html",{"msg":msg})
def view_sponserschool(request):

    qry="select `pid`,`pname`,`phno`,`school`,`account`,`branch`,`ifsc`  from admin_reg"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"user/view_institution.html",{"data":data})
def view_sponserform(request):

    qry="select * from sponserform"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"user/view_sponserform.html",{"data":data})
def view_service(request):

    qry="select * from service"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"user/view_service.html",{"data":data})
def view_sponserservice(request):

    qry="select * from service"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"user/view_sponserservice.html",{"data":data})
def view_newsevents(request):

    qry="select * from newsevents"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"user/view_newsevents.html",{"data":data})
def view_job(request):

    qry="select * from job"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"user/view_job.html",{"data":data})
def view_training(request):

    qry="select * from training"  
    c.execute(qry)
    data=c.fetchall()
    return render(request,"user/view_training.html",{"data":data})
def admin_add_marklist(request):
    c.execute("select adno from student")
    data=c.fetchall()
    if request.POST:
        if request.FILES.get("img"):
            from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage()
            myfile=request.FILES.get("img")
            filename=fs.save(myfile.name,myfile)
            upload_url=fs.url(filename)
            adno=request.POST.get("adno")
            exam=request.POST.get("exam")     
            c.execute("insert into marklist(adno,exam,image) values('"+ adno +"','"+ exam +"','"+ upload_url +"')") 
            db.commit()         
    return render(request,'admin/admin_add_marklist.html',{"data":data})

def admin_add_fee(request):
    c.execute("select adno from student")
    data=c.fetchall()
    if request.POST:
            adno=request.POST.get("adno")
            term=request.POST.get("term")    
            request.session["adno"]=adno
            request.session["term"]=term  
            # payment
            c.execute("select amount from fees_data where term='"+ term +"'")
            amount=c.fetchone()
            request.session["amount"]=amount[0]
            c.execute("insert into fees(adno,term,fee) values('"+ str(adno) +"','"+ term +"','"+str(amount[0]) +"')") 
            db.commit()    
            return HttpResponseRedirect("/payment/") 
    return render(request,'admin/admin_add_fees.html',{"data":data})

def admin_add_school_acheivment(request):
    c.execute("select adno from student")
    data=c.fetchall()
    if request.POST:
            sub=request.POST.get("sub")
            descr=request.POST.get("descr")    
            c.execute("select school from admin_reg where uname='"+ request.session["uname"] +"'")
            school=c.fetchone()              
            c.execute("insert into acheivement(sub,descr,school) values('"+ sub +"','"+ descr +"','"+ school[0] +"')") 
            db.commit()     
    return render(request,'admin/admin_add_school_acheivment.html',{"data":data})

def admin_add_school_etc(request):
    c.execute("select adno from student")
    data=c.fetchall()
    if request.POST:
            if request.FILES.get("img"):
                from django.core.files.storage import FileSystemStorage
                fs=FileSystemStorage()
                myfile=request.FILES.get("img")
                filename=fs.save(myfile.name,myfile)
                upload_url=fs.url(filename)
                sub=request.POST.get("sub")
                descr=request.POST.get("descr")    
                c.execute("select school from admin_reg where uname='"+ request.session["uname"] +"'")
                school=c.fetchone()              
                c.execute("insert into etc(sub,descr,school,image) values('"+ sub +"','"+ descr +"','"+ school[0] +"','"+ upload_url +"')") 
                db.commit()     
    return render(request,'admin/admin_add_school_etc.html',{"data":data})

def admin_add_school_hostel(request):
    c.execute("select adno from student")
    data=c.fetchall()
    if request.POST:
        if request.FILES.get("img"):
                from django.core.files.storage import FileSystemStorage
                fs=FileSystemStorage()
                myfile=request.FILES.get("img")
                filename=fs.save(myfile.name,myfile)
                upload_url=fs.url(filename)
                fees=request.POST.get("fees")
                food=request.POST.get("food")    
                c.execute("select school from admin_reg where uname='"+ request.session["uname"] +"'")
                school=c.fetchone()              
                c.execute("insert into hostel(fees,food,school,image) values('"+ fees +"','"+ food +"','"+ school[0] +"','"+ upload_url +"')") 
                db.commit()     
    return render(request,'admin/admin_add_school_hostel.html',{"data":data})

#Admin view pages

def admin_view_stud(request):
    c.execute("select school from admin_reg where uname='"+ request.session["uname"] +"'")
    school=c.fetchone()   
    c.execute("select * from student where school='"+ school[0] +"'")
    data=c.fetchall()

    return render(request,'admin/admin_view_stud.html',{"data":data})

def admin_view_staff(request):
    c.execute("select school from admin_reg where uname='"+ request.session["uname"] +"'")
    school=c.fetchone()   
    c.execute("select * from staff where school='"+ school[0] +"'")
    data=c.fetchall()
    return render(request,'admin/admin_view_staff.html',{"data":data})

def admin_view_fee(request):
    data=""
    if request.POST:
        adno=request.POST.get("adno")
        c.execute("SELECT student.*,fees.fee,fees.term  FROM student join fees on fees.adno=student.adno where student.adno='"+ adno +"'")
        data=c.fetchall()
    return render(request,'admin/admin_view_fee.html',{"data":data})



def staff_home(request):
    return render(request,'staff/staff_home.html')
    
def staff_marklist(request):
    if request.POST:
        adno=request.POST.get("admission number")
        examdate=request.POST.get("exam date")
        exam=request.POST.get("exam name")
        maths=request.POST.get("maths")
        english=request.POST.get("english")
        malayalam=request.POST.get("malayalam")
        social=request.POST.get("social")
        hindi=request.POST.get("hindi")
        science=request.POST.get("science")
        totalmarks=int(malayalam)+int(maths)+int(english)+int(science)+int(social)+int(hindi)
        grade=request.POST.get("grade")
        if int(malayalam)<20 or int(maths)<20 or int(english)<20 or int(science)<20 or int(social) <20 or int(hindi)<20 :
            grade="Fail"
        elif totalmarks>240:
            grade="A Plus"
            
        elif totalmarks>210 and totalmarks<240:
            grade="A"

        elif totalmarks>180 and totalmarks<210:
            grade="B"

        elif totalmarks>150 and totalmarks<180:
            grade="C"

        elif totalmarks<=150:
            grade="D"
            

        c.execute("insert into marklist_staff(adno,examdate,exam,maths,english,malayalam,social,hindi,science,totalmarks,grade) values('"+ adno +"','"+ str(examdate) +"','"+ exam +"','"+ maths +"','"+ english +"','"+ malayalam +"','"+ social +"','"+ hindi +"' ,'"+ science +"','"+ str(totalmarks)+"','"+grade+"')")
        db.commit()
    return render(request,'staff/marklist.html')

def admin_view_marklist(request):
    return render(request,'admin/admin_view_marklist.html')

def public_home(request):
    return render(request,'public/public_home.html')

def user_home(request):
    return render(request,'user/user_home.html')

def view_school(request):
    # c.execute("select admin_reg.*,etc.*,hostel.*,travel.*,acheivement.* from admin_reg inner join etc on admin_reg.school=etc.school inner join hostel on hostel.school=admin_reg.school JOIN acheivement on acheivement.school=admin_reg.school inner join travel on travel.school=admin_reg.school GROUP by admin_reg.school")
    # data=c.fetchall()
    
        
    school_data=data=hostel_data=fee_data=etc_data=travel_data=achieve_data=""
    if request.POST.get("dist"):
        dist=request.POST.get("dist")
        c.execute("select * from admin_reg where district='"+ dist +"'")
        data=c.fetchall() 
    else:
        data=""
    if request.GET.get("id"):
        data=""
        school_data=request.GET.get("id")

    if request.GET.get("data")=="hostel":
        data=""
        c.execute("select * from hostel where school='"+ request.GET.get("adno") +"'")
        hostel_data=c.fetchall()

    if request.GET.get("data")=="fees":
        data=""
        c.execute("select * from fees_data")
        fee_data=c.fetchall()

    if request.GET.get("data")=="etc":
        data=""
        c.execute("select * from etc where school='"+ request.GET.get("adno") +"'")
        etc_data=c.fetchall()

    if request.GET.get("data")=="travel":
        data=""
        c.execute("select * from travel where school='"+ request.GET.get("adno") +"'")
        travel_data=c.fetchall()
    

    if request.GET.get("data")=="acheive":
        data=""
        c.execute("select * from acheivement where school='"+ request.GET.get("adno") +"'")
        achieve_data=c.fetchall()
    
        

    return render(request,'public/view_school.html',{"data":data,"school_data":school_data,"hostel_data":hostel_data,"fee_data":fee_data,"etc_data":etc_data,"travel_data":travel_data,"achieve_data":achieve_data})

def user_search(request):
    stud_data=mark_data=fee_data=staff_data=""
    if request.POST:
        adno=request.POST.get("adno")
        phno=request.POST.get("phno")
        # c.execute("select marklist.*,fees.* from marklist join fees on marklist.adno=fees.adno where fees.adno='"+ adno +"' ")
        # data=c.fetchall()
        c.execute("select * from student where adno='"+ adno +"' and phno='"+ phno +"'")
        stud_data=c.fetchone()



    if request.GET.get("data")=="mark":
        c.execute("select * from marklist_staff where adno='"+ request.GET.get("adno") +"'")
        mark_data=c.fetchall()

    if request.GET.get("data")=="fee":
        c.execute("select * from fees where adno='"+ request.GET.get("adno") +"'")
        fee_data=c.fetchall()

    if request.GET.get("data")=="staff":
        c.execute("select school from student where adno='"+ request.GET.get("adno") +"'")
        school=c.fetchone()
        c.execute("select * from staff where school='"+ school[0] +"'")
        staff_data=c.fetchall()


    return render(request,'user/user_search.html',{"data":stud_data,"mark_data":mark_data,"fee_data":fee_data,"staff_data":staff_data})
        
def studenttravel(request):
    if 'submit' in request.POST:
        adno=request.POST.get("adno")
        busno=request.POST.get("busno")
        name=request.POST.get("name")
        parent=request.POST.get("parent")
        address=request.POST.get("address")
        clas=request.POST.get("clas")
        location=request.POST.get("location")
        fees=request.POST.get("fees")
        phno=request.POST.get("phno")
        
        
           
        c.execute("insert into student_travel(adno,busno,name,parent,address,clas,location,fees,phno) values('"+ adno +"','"+ busno +"','"+ name +"','"+ parent +"','"+ address +"','"+ clas +"','"+ location +"','"+ fees +"','"+ phno +"')") 
        db.commit()
    
    return render(request,'staff/studenttravel.html',)

def view_studentravel(request):
    data=""
    if request.POST:
        adno=request.POST.get("adno")
        c.execute("select * from student_travel where adno='"+ adno +"'")
        data=c.fetchall()
    return render(request,'user/view_studentravel.html',{"data":data})

def add_stud(request):
    c.execute("select distinct(school) from admin_reg")
    school1=c.fetchall() 
    if 'submit' in request.POST:
        name=request.POST.get("name")
        clas=request.POST.get("clas")
        age=request.POST.get("age")
        gender=request.POST.get("gender")
        parent=request.POST.get("parent")
        email=request.POST.get("email")
        phno=request.POST.get("phno")
        adno=request.POST.get("adno")
        address=request.POST.get("address")
        school=request.POST.get("school")               
        c.execute("insert into student(name,clas,age,gender,parent,email,phno,adno,address,school) values('"+ name +"','"+ clas +"','"+ age +"','"+ gender +"','"+ parent +"','"+ email +"','"+ phno +"','"+ adno +"','"+ address +"','"+ school+"')")
        db.commit()
        types="user"
        c.execute("insert into login(uname,password,type) values('"+ email +"','"+ phno +"','"+ types +"')")
        db.commit()
    if 'clear' in request.POST:
        return HttpResponseRedirect("/add_stud/")
    return render(request,'public/add_stud.html',{"school":school1})