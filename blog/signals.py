from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Post
import elasticsearch


@receiver(post_save, sender=Post)
def add_to_index(sender, instance, created, **kwargs):
    if created:
        payload = {}
        [field.name for field in User._meta.get_fields()]
        for field in Post._meta.get_fields():
            payload[field.name] = getattr(instance, field.name)
            elasticsearch.index("blogs", doc_type="post", id=instance.id, body=payload)
