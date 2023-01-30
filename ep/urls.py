from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [
#----------------------------index----------------------------------------------
    path("",views.IndexPage,name="index"),
    path("aboutus/",views.AboutUs,name="aboutus"),
    path("faq/",views.FAQ,name="faq"),

#---------------------------------signin | signup | otp | logout | change password---------------------------------
    path("signup/",views.CustomerSignUp,name="signup"),
    path("signin/",views.CustomerSignIn,name="signin"),
    path("adminsp/",views.AdminSignUp,name="adminsp"),
    path("adminin/",views.AdminSignIn,name="adminin"),
    path("register/",views.Register,name="register"),
    path("forgotpass/",views.ForgotPassword,name="forgotpass"),
    path("changepass/",views.ChangePassword,name="changepass"),
    path("login/",views.LoginUser,name="login"),
    path('otp/',views.OTP,name='otp'),
    path('otpverify/',views.VerifyOtp,name="otpverify"),
    path("logout/",views.Logout,name="logout"),

#-------------------------------customer----------------------------------------
    path("index2/",views.Index2Page,name="index2"),
    path("custforgotpass/",views.CustomerForgotPassword,name="custforgotpass"),
    path("custchangepass/",views.CustomerChangePassword,name="custchangepass"),
    path("profiledata/<int:pk>",views.CustomerProfileData,name="profiledata"),
    path("updatebutton/<int:pk>",views.UpdateButtonClick,name="updatebutton"),
    path("update/<int:pk>",views.UpdateData,name="update"),
    path('downloads/',views.download,name='download'),

#--------------------------------customer request for pickup-----------------------------
    path("scheduleorder/pickup",views.Schedule,name="scheduleorder"),

#-----------------------------customer shop------------------------------------
    path("showpro/",views.ShopProduct,name="showpro"),
    path("prodesc/<int:pk>",views.ShowPro,name="prodesc"),
    path("addtocart/",views.AddCart,name="addtocart"), 
    path("showthecart/<int:pk>",views.ShowCart,name="showthecart"),  
    path("deletecart/<int:pk>",views.DelCart,name="deletecart"),
    path("updatecart/<int:pk>",views.UpdateCart,name="updatecart"),
    path("checkout/<int:pk>",views.CartCheckout,name="checkout"),
    path("invoice/<int:pk>",views.invoice,name="invoice"),


#-----------------------------recycling company-----------------------------------------
    path("companyindex/",views.CompanyIndexPage,name="companyindex"),
    path("companyprofile/",views.CompanyProfile,name="compamyprofile"),
    path("companydata/<int:pk>",views.CompanyProfileData,name="companydata"),
    path("cupdate/<int:pk>",views.CompanyUpdateClick,name="cupdate"),
    path("companyupdate/<int:pk>",views.CompanyUpdateData,name="companyupdate"),
    path("Customer_OrdersDl/",views.CompanyOrderDl,name="custorderdl"),

#-----------------------------recycling company products--------------------------------------
    path("rproduct/",views.RProduct,name="rproduct"),
    path("addrproduct/<int:pk>",views.AddRProduct,name="addrproduct"),
    path("allrproducts/<int:pk>",views.GetAllRProduct,name="allrproducts"),
    path("deleterproduct/<int:pk>",views.DeleteRProduct,name="deleterproduct"),
    path("rpbutton/<int:pk>",views.RPUpdateButton,name="rpbutton"),
    path("rpupdate/<int:pk>",views.UpdateRProduct,name="rpupdate"),

#--------------------------recycling company managing customer orders----------------------------
    path("OrderDetails/<int:pk>",views.OrderInfo,name="odetails"),
    path("OrderSaved/<int:pk>",views.SaveOrder,name="save"),

#------------------------------payment integration-----------------------------------
    path('pay/', views.initiate_payment, name='pay'),
    path('callback/',views.callback, name='callback'),
    path('callbackrc/',views.second, name='callback'),

#------------------------------All orders displaying---------------------------------------------------   
    path("Customer_Orders/",views.OrderDetails,name="custorder"),

#----------------------------recycling company requests to plastic collector------------------------
    path("rpallpro/",views.RPAllProduct,name="rpallpro"),
    path("rpallstatus/",views.RPAllStatus,name="rpallstatus"),
    path("rpclick/<int:pk>",views.RPButtonClick,name="rpclick"),
    path("rprequest/<int:pk>",views.RPButton,name="rprequest"),
    path("compcheckout/",views.CompanyCheckOut,name="compcheckout"),

#-----------------------------plastic collector------------------------------------------------
    path("collectorindex/<int:pk>",views.CollectorIndexPage,name="collectorindex"),
    path("plasticCollectordata/<int:pk>",views.PlasticCollectorProfileData,name="plasticCollectordata"),
    path("plasticCollectorupdatebutton/<int:pk>",views.PlasticCollectorUpdateButtonClick,name="plasticCollectorupdatebutton"),
    path("plasticCollectorupdate/<int:pk>",views.PlasticCollectorUpdateData,name="plasticCollectorupdate"),
    path("ReportsDl/",views.PlasticDataDl,name="plasticdl"),

#--------------------------------Plastic Collector Products----------------------------
    path("addpproduct/<int:pk>",views.AddPProduct,name="addpproduct"),
    path("pproduct/",views.PProduct,name="pproduct"),
    path("allpproducts/<int:pk>",views.GetAllPProduct,name="allpproducts"),
    path("ppbutton/<int:pk>",views.PPUpdateButton,name="ppbutton"),
    path("ppupdate/<int:pk>",views.UpdateProduct,name="ppupdate"),
    path("deleteproduct/<int:pk>",views.DeleteProduct,name="deleteproduct"),

#-------------------------------------plastic collectors managing recyle company requests and customer pickup request-------------------------------
    path("showpreq/",views.ShowPReq,name="showpreq"),
    path("rejectpro/<int:pk>",views.RejectProduct,name="rejectpro"),
    path('requestaccept/<int:pk>',views.reqaccept,name="requestaccept"),
    path("CompanyOrderDetails/<int:pk>",views.CompanyOrderInfo,name="Codetails"),
    path("pickuprequests/",views.ShowPickUp,name="pickuprequests"),
    path("pickupstatus/<int:pk>",views.PickUpStatus,name="pickupstatus"),
  
#--------------------------Creating,showing and downloading Reports of Plastic Collector pickup and Recycling Request,---------------------------------    
    path("rcdata",views.RCData,name="rc_data"),
    path("data",views.CustData,name="custdata"),

    path("adddata/",views.AddData,name="adddata"),
    path("Reports/<int:pk>",views.Report,name="report"),
    path("pdf/",views.ReportPdf.as_view(),name='pdf'),

#----------------------------------Super Admin------------------------------------------
    path("alogin/",views.AdminLogin,name="alogin"),
    path("adminlogin/",views.ALogin,name="adminlogin"),
    path("adminbutton/<int:pk>",views.AButton,name="adminbutton"),
    path("dashboard/",views.Dashboard,name="dashboard"),
    path("showadmin/",views.SAdmin,name="showadmin"),
    path("adminupdate/<int:pk>",views.AUpdate,name="adminupdate"),

#----------------------------------Super Admin can see and download reports of Customer, Recyling Company and Plastic Collector -------------------
    path("PlasticData/",views.AdminPCData,name="aplastic"),
    path("PlasticDataDl/",views.AdminPCDataDl,name="aplasticdl"),
    path("PlasticDataPdf/",views.AdminPCDataPdf.as_view(),name="aplasticpdf"),
    path("CustomerData/",views.AdminCustData,name='acustomer'),
    path("CompanyData/",views.AdminRCData,name="rcdata"),
    path("CustomerDataPdf/",views.AdminCustDataPdf.as_view(),name='acustomerpdf'),
    path("CustomerDataDl/",views.AdminCustDataDl,name='acustomerdl'),
    path("CompanyDataDl/",views.AdminRCDataDl,name="rcdatadl"),
    path("CompanyDataPdf/",views.AdminRCDataPdf.as_view(),name="rcdatapdf"),

]