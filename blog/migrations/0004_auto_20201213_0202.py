# Generated by Django 3.1.4 on 2020-12-12 20:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("blog", "0003_auto_20201209_2040"),
    ]

    operations = [
        migrations.AlterField(
            model_name="post",
            name="slug",
            field=models.SlugField(max_length=250, unique_for_date="publish"),
        ),
    ]
