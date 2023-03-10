# Generated by Django 3.1 on 2021-04-19 19:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ep', '0002_auto_20210418_2001'),
    ]

    operations = [
        migrations.AddField(
            model_name='plasticrequest',
            name='payment_status',
            field=models.CharField(default='pending', max_length=50),
        ),
        migrations.AddField(
            model_name='plasticrequest',
            name='transaction_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='ep.transaction'),
        ),
    ]
