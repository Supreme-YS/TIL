# Generated by Django 3.1.6 on 2021-02-05 07:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='SampleProduct',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pd_name', models.CharField(max_length=100)),
                ('pd_price', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_id', models.CharField(max_length=50, verbose_name='사용자명')),
                ('user_pwd', models.CharField(max_length=50, verbose_name='비밀번호')),
                ('user_mail', models.CharField(max_length=100, verbose_name='이메일주소')),
            ],
        ),
    ]
