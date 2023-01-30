from django.db import models
from django import forms
from django.contrib.auth import get_user_model

class Master(models.Model):
    role = models.CharField(max_length=50)
    email = models.EmailField(max_length=50)
    password = models.CharField(max_length=50)
    otp = models.BigIntegerField(default=123)
    is_verified = models.BooleanField(default=False)
    is_active = models.BooleanField(default = True)
    is_created = models.DateTimeField(auto_now_add=True)
    is_updated = models.DateTimeField(auto_now_add=True)

    
class Customer(models.Model):
    master_id=models.ForeignKey(Master,on_delete=models.CASCADE)
    fname = models.CharField(max_length=50)
    lname = models.CharField(max_length=50)
    contact = models.BigIntegerField()
    address = models.CharField(max_length=500)
    gender = models.CharField(max_length=50)
    state = models.CharField(max_length=50)
    city = models.CharField(max_length=50,default="")
    postalcode = models.BigIntegerField(null=True)
    image = models.ImageField(upload_to="customerimg/")


class Company(models.Model):
    master_id=models.ForeignKey(Master,on_delete=models.CASCADE)
    comp_name = models.CharField(max_length=50)
    comp_address = models.CharField(max_length=500)
    comp_contact = models.BigIntegerField()
    comp_image = models.ImageField(upload_to="companyimg/")
    comp_city = models.CharField(max_length=30,default="")
    comp_state = models.CharField(max_length=50,default="")
    comp_postalcode = models.BigIntegerField(null=True)
    comp_fb = models.CharField(max_length=1000)
    comp_insta = models.CharField(max_length=1000)
    comp_linkedin = models.CharField(max_length=1000)
    comp_twitter = models.CharField(max_length=1000) 
    comp_website = models.CharField(max_length=200)
    owner_fname = models.CharField(max_length=50)
    owner_lname = models.CharField(max_length=50)
    owner_gender = models.CharField(max_length=50)
    owner_contact = models.CharField(max_length=50)
    owner_email = models.EmailField(max_length=50)
       
class PlasticC(models.Model):
    master_id=models.ForeignKey(Master,on_delete=models.CASCADE)
    pc_name = models.CharField(max_length=50)
    pc_address = models.CharField(max_length=50)
    pc_contact = models.BigIntegerField()
    pc_image = models.ImageField(upload_to="plasticcimg/")
    pc_fb = models.CharField(max_length=1000)
    pc_insta = models.CharField(max_length=1000)
    pc_linkedin = models.CharField(max_length=1000)
    pc_twitter = models.CharField(max_length=1000) 
    pc_website = models.CharField(max_length=200)
    owner_fname = models.CharField(max_length=50)
    owner_lname = models.CharField(max_length=50)
    owner_gender = models.CharField(max_length=50)
    owner_contact = models.BigIntegerField(default=0000000000)
    owner_email = models.EmailField(max_length=50)

class PlasticProduct(models.Model):
    plasticc_id=models.ForeignKey(PlasticC,on_delete=models.CASCADE)
    pproduct_name = models.CharField(max_length=100)
    pproduct_date = models.DateTimeField(auto_now_add=True)
    pproduct_price = models.BigIntegerField(default=0)
    pproduct_image = models.ImageField(upload_to="pproductimg/")
    pproduct_quantity = models.BigIntegerField(default=0)

class RecycleProduct(models.Model):
    company_id=models.ForeignKey(Company,on_delete=models.CASCADE)
    rproduct_name = models.CharField(max_length=100)
    rproduct_date = models.DateTimeField(auto_now_add=True)
    rproduct_price = models.BigIntegerField(default=0)
    rproduct_image = models.ImageField(upload_to="rproductimg/")
    rproduct_quantity = models.PositiveIntegerField()
    rproduct_desc = models.CharField(max_length=500)


    
class Transaction(models.Model):
    made_by = models.ForeignKey(Master, related_name='transactions',on_delete=models.CASCADE)
    made_on = models.DateTimeField(auto_now_add=True)
    amount = models.BigIntegerField()
    order_id = models.CharField(unique=True, max_length=100, null=True, blank=True)
    checksum = models.CharField(max_length=100, null=True, blank=True)

    def save(self, *args, **kwargs):
        if self.order_id is None and self.made_on and self.id:
            self.order_id = self.made_on.strftime('PAY2ME%Y%m%dODR') + str(self.id)
        return super().save(*args, **kwargs)

class ScheduleOrder(models.Model):
    cust_id = models.ForeignKey(Customer,on_delete=models.CASCADE)
    cust_name = models.CharField(max_length=50)
    cust_number = models.BigIntegerField()
    sc_date_time = models.DateTimeField()
    sc_comment = models.CharField(max_length=200)
    pickup_status = models.CharField(max_length=50, default="pending")

class PlasticRequest(models.Model):
    comp_id=models.ForeignKey(Company,on_delete=models.CASCADE)
    plasticc_id=models.ForeignKey(PlasticC,on_delete=models.CASCADE)
    pproduct_id=models.ForeignKey(PlasticProduct,on_delete=models.CASCADE)
    request_date = models.DateTimeField()
    request_quantity = models.BigIntegerField(default=0)
    status = models.CharField(max_length=20,default="pending")
    transaction_id = models.ForeignKey(Transaction,on_delete=models.CASCADE,null=True)
    payment_status = models.CharField(max_length=50,default="pending")

class CustomerData(models.Model):
    cust_id = models.ForeignKey(Customer,on_delete=models.CASCADE)
    plastic_id = models.ForeignKey(PlasticC,on_delete=models.CASCADE)
    total_collection = models.FloatField()
    wastage = models.FloatField()
    usage = models.FloatField()
    collection_date = models.DateField()
    
        
class PlasticData(models.Model):
    rc_id = models.ForeignKey(Company,on_delete=models.CASCADE)
    plastic_id = models.ForeignKey(PlasticC,on_delete=models.CASCADE)
    total_collection = models.FloatField()
    wastage = models.FloatField()
    usage = models.FloatField()
    collection_date = models.DateField()
    types = models.CharField(max_length=100)

class AddToCart(models.Model):
    rp_id=models.ForeignKey(RecycleProduct,on_delete=models.CASCADE)
    cust_id=models.ForeignKey(Customer,on_delete=models.CASCADE)
    cart_price=models.BigIntegerField(default=0)
    cart_quantity=models.BigIntegerField(default=1) 
    cart_date=models.DateTimeField(auto_now_add=True)
    cart_subtotal=models.BigIntegerField(default=0)
    order_date = models.DateTimeField(auto_now_add=True)
    payment_status = models.CharField(max_length=50,default="pending")
    order_status = models.CharField(max_length=50)
    transaction_id = models.ForeignKey(Transaction,on_delete=models.CASCADE,null=True)
    company_id = models.ForeignKey(Company,on_delete=models.CASCADE,default=1)
    order_comment = models.CharField(max_length=200,default="")

class Order(models.Model):
    customer_id=models.ForeignKey(Customer,on_delete=models.CASCADE)
    product_id = models.ForeignKey(RecycleProduct,on_delete=models.CASCADE)
    order_qty = models.BigIntegerField()
    transaction_id = models.ForeignKey(Transaction,on_delete=models.CASCADE)
    payment_status = models.CharField(max_length=20,default="")
    is_placed = models.DateTimeField(auto_now_add=True)