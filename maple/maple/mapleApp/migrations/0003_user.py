# Generated by Django 3.1.6 on 2021-02-05 23:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mapleApp', '0002_delete_user'),
    ]

    operations = [
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
