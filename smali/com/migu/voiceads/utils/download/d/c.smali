.class public Lcom/migu/voiceads/utils/download/d/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    :cond_0
    new-instance v0, Landroid/app/Notification;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, p5, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p0, p4, p5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, p3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_1
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/app/Notification;
    .locals 4

    new-instance v0, Lm$d;

    invoke-direct {v0, p0}, Lm$d;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p8, v2

    if-lez v1, :cond_1

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p6

    div-long/2addr v2, p8

    long-to-int v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lm$d;->a(IIZ)Lm$d;

    :goto_0
    invoke-virtual {v0, p4}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    invoke-virtual {v0, p5}, Lm$d;->d(Ljava/lang/CharSequence;)Lm$d;

    invoke-virtual {v0, p1}, Lm$d;->a(I)Lm$d;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lm$d;->a(J)Lm$d;

    invoke-virtual {v0}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-object v0

    :cond_1
    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lm$d;->a(IIZ)Lm$d;

    goto :goto_0
.end method
