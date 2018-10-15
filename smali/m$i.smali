.class Lm$i;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lm$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm$d;)Landroid/app/Notification;
    .locals 13
    .param p1, "b"    # Lm$d;

    .prologue
    .line 108
    iget-object v0, p1, Lm$d;->a:Landroid/content/Context;

    iget-object v1, p1, Lm$d;->r:Landroid/app/Notification;

    iget-object v2, p1, Lm$d;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lm$d;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lm$d;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Lm$d;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Lm$d;->i:I

    iget-object v7, p1, Lm$d;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Lm$d;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Lm$d;->g:Landroid/graphics/Bitmap;

    iget v10, p1, Lm$d;->n:I

    iget v11, p1, Lm$d;->o:I

    iget-boolean v12, p1, Lm$d;->p:Z

    invoke-static/range {v0 .. v12}, Lo;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
