.class public Lcom/baidu/aiupdatesdk/obf/f;
.super Ljava/lang/Object;
.source "AsNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/aiupdatesdk/obf/f$a;
    }
.end annotation


# static fields
.field public static a:Lcom/baidu/aiupdatesdk/obf/f$a;

.field private static b:Lcom/baidu/aiupdatesdk/obf/f;


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/app/NotificationManager;

.field private f:Lm$d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    .line 36
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/f;->e:Landroid/app/NotificationManager;

    .line 37
    new-instance v0, Lm$d;

    invoke-direct {v0, p1}, Lm$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/f;->f:Lm$d;

    .line 38
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/f;->f:Lm$d;

    const-string/jumbo v1, "bdp_update_logo"

    invoke-static {p1, v1}, Lcom/baidu/aiupdatesdk/obf/t;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lm$d;->a(I)Lm$d;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.baidu.aiupdatesdk.4as"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/obf/f;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/f;->b:Lcom/baidu/aiupdatesdk/obf/f;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/f;

    invoke-direct {v0, p0}, Lcom/baidu/aiupdatesdk/obf/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/f;->b:Lcom/baidu/aiupdatesdk/obf/f;

    .line 47
    :cond_0
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/f;->b:Lcom/baidu/aiupdatesdk/obf/f;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/f;->e:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 107
    return-void
.end method

.method public a(Lcom/baidu/aiupdatesdk/obf/f$a;)V
    .locals 7
    .param p1, "argListener"    # Lcom/baidu/aiupdatesdk/obf/f$a;

    .prologue
    const/4 v6, 0x0

    .line 56
    sput-object p1, Lcom/baidu/aiupdatesdk/obf/f;->a:Lcom/baidu/aiupdatesdk/obf/f$a;

    .line 57
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v1, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.baidu.aiupdatesdk.ACTION_AS_DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    const-string/jumbo v5, "bdp_update_as_download_complete"

    invoke-static {v4, v5}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "tip":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    const-string/jumbo v5, "bdp_update_as_notify_title"

    invoke-static {v4, v5}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "appName":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->f:Lm$d;

    invoke-virtual {v3, v6, v6, v6}, Lm$d;->a(IIZ)Lm$d;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v0}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v2}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v3

    const/4 v4, 0x0

    .line 66
    invoke-virtual {v3, v4}, Lm$d;->c(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 67
    invoke-virtual {v3, v4, v5}, Lm$d;->a(J)Lm$d;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v2}, Lm$d;->d(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    iget v5, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    const/high16 v6, 0x8000000

    .line 70
    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v3

    const/4 v4, 0x1

    .line 73
    invoke-virtual {v3, v4}, Lm$d;->b(Z)Lm$d;

    move-result-object v3

    const/4 v4, 0x4

    .line 74
    invoke-virtual {v3, v4}, Lm$d;->b(I)Lm$d;

    .line 75
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->e:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 76
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->e:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/f;->f:Lm$d;

    invoke-virtual {v5}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 8
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "percent"    # I

    .prologue
    const/4 v7, 0x0

    .line 84
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    const-string/jumbo v4, "bdp_update_as_notify_title"

    invoke-static {v3, v4}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "appName":Ljava/lang/String;
    if-lez p2, :cond_0

    const-string/jumbo v1, ""

    .line 86
    .local v1, "tip":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/f;->f:Lm$d;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, p2, v7}, Lm$d;->a(IIZ)Lm$d;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v0}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v1}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v2

    .line 89
    invoke-virtual {v2, p1}, Lm$d;->c(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 90
    invoke-virtual {v2, v3}, Lm$d;->d(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 91
    invoke-virtual {v2, v4, v5}, Lm$d;->a(J)Lm$d;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    iget v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x8000000

    .line 93
    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v2

    .line 96
    invoke-virtual {v2, v7}, Lm$d;->a(Z)Lm$d;

    move-result-object v2

    const/4 v3, 0x4

    .line 97
    invoke-virtual {v2, v3}, Lm$d;->b(I)Lm$d;

    .line 98
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/f;->e:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->c:I

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/f;->f:Lm$d;

    invoke-virtual {v4}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 99
    return-void

    .line 85
    .end local v1    # "tip":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/f;->d:Landroid/content/Context;

    const-string/jumbo v4, "bdp_update_tip_waiting"

    invoke-static {v3, v4}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
