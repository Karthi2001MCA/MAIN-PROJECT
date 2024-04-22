"""stud URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from stuapp import views

urlpatterns = [
    path('admin/', admin.site.urls),  
    path('admin_home/', views.admin_home),
    path('admin_add_stud/', views.admin_add_stud),
    path('admin_add_staff/', views.admin_add_staff),
    path('admin_add_travel/', views.admin_add_travel),
    path('admin_add_marklist/', views.admin_add_marklist),
    path('admin_add_fees/', views.admin_add_fee),
    path('admin_add_school_acheivment/', views.admin_add_school_acheivment),
    path('admin_add_school_etc/', views.admin_add_school_etc),
    path('admin_add_school_hostel/', views.admin_add_school_hostel),
    path('admin_view_stud/', views.admin_view_stud),
    path('admin_view_staff/', views.admin_view_staff),
    path('admin_view_fee/', views.admin_view_fee),
    
    #public
    path('view_school/', views.view_school),
    path('', views.public_home),
    path('public_home/', views.public_home),
    path('admin_reg/', views.admin_reg),
    path('login/', views.login),
    path('add_stud/', views.add_stud),
    
    #parent
    path('user_search/', views.user_search),
    path('user_home/', views.user_home),
    path('view_studentravel/', views.view_studentravel),
  
    #staff
    path('staff_home/', views.staff_home),
    path('staff_marklist/', views.staff_marklist),
    path('studenttravel/', views.studenttravel),
    path('payment/', views.payment),    
    path('payment2/',views.payment2,name='payment2'),
    path('payment3/',views.payment3,name='payment3'),
    path('payment4/',views.payment4,name='payment4'),
    path('payment5/',views.payment5,name='payment5'),
    
    #update
     path('Addservice/',views.Addservice,name='Addservice'),
    path('AddVideios/',views.AddVideios,name='AddVideios'),
      path('AddnewsEvents/',views.AddnewsEvents,name='AddnewsEvents'),
      path('AddTraining/',views.AddTraining,name='AddTraining'),
      path('Addjob/',views.Addjob,name='Addjob'),
       path('AddSponserform/',views.AddSponserform,name='AddSponserform'),
        path('view_service/',views.view_service,name='view_service'),
         path('view_newsevents/',views.view_newsevents,name='view_newsevents'),
          path('view_training/',views.view_training,name='view_training'),
          path('view_job/',views.view_job,name='view_job'),
             path('view_sponserservice/',views.view_sponserservice,name='view_sponserservice'),
                path('sponser_reg/',views.sponser_reg,name='sponser_reg'),
                   path('view_sponserform/',views.view_sponserform,name='view_sponserform'),
                     path('view_sponserschool/',views.view_sponserschool,name='view_sponserschool'),
]


