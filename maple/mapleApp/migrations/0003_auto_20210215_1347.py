# Generated by Django 3.1.6 on 2021-02-15 13:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mapleApp', '0002_auto_20210212_1204'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='payment',
            field=models.CharField(choices=[('card', '카드'), ('cash', '현금')], max_length=20, verbose_name='결제구분'),
        ),
        migrations.AlterField(
            model_name='order',
            name='status',
            field=models.CharField(choices=[('prep', '준비중'), ('ord', '주문'), ('done', '완료')], max_length=20, verbose_name='완료여부'),
        ),
        migrations.AlterField(
            model_name='staff',
            name='jobtitle',
            field=models.CharField(choices=[('J20', '메니저'), ('J40', '인턴'), ('J50', '아르바이트'), ('J10', 'CEO'), ('J30', '사원')], max_length=20, verbose_name='직급'),
        ),
    ]
