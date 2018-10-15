.class Lm$g;
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
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm$d;)Landroid/app/Notification;
    .locals 5
    .param p1, "b"    # Lm$d;

    .prologue
    .line 87
    iget-object v0, p1, Lm$d;->r:Landroid/app/Notification;

    .line 88
    .local v0, "result":Landroid/app/Notification;
    iget-object v1, p1, Lm$d;->a:Landroid/content/Context;

    iget-object v2, p1, Lm$d;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lm$d;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lm$d;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 91
    iget v1, p1, Lm$d;->j:I

    if-lez v1, :cond_0

    .line 92
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 94
    :cond_0
    return-object v0
.end method
