import django_filters
from .models import *
from django_filters import DateFilter

class ReportFilter(django_filters.FilterSet):
    class Meta:
        model= CustomerData
        fields = '__all__'
        exclude = ['cust_id']