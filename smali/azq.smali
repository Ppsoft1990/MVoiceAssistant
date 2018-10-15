.class public Lazq;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static a:I

.field private static b:Z

.field private static volatile c:Z

.field private static d:Z

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lazq;->a:I

    .line 40
    sput-boolean v0, Lazq;->b:Z

    .line 42
    sput-boolean v0, Lazq;->c:Z

    .line 61
    sput-boolean v0, Lazq;->d:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lazq;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7
    .param p0, "notify"    # Landroid/app/Notification;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "content"    # Ljava/lang/CharSequence;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 140
    :try_start_0
    const-string/jumbo v4, "android.app.Notification"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 141
    .local v2, "notificationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/Class;

    .line 142
    .local v3, "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    .line 143
    const/4 v4, 0x1

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    .line 144
    const/4 v4, 0x2

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    .line 145
    const/4 v4, 0x3

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    .line 146
    const-string/jumbo v4, "setLatestEventInfo"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 147
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v4, "NotificationHelper"

    const-string/jumbo v5, "reflect"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "notificationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NotificationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLatestEventInfo Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 165
    :try_start_0
    sget-object v3, Lazq;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :try_start_1
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v2

    const-string/jumbo v4, "com.iflytek.cmccACTION_PAUSE_ALERT_PLAYING"

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v2, "notification"

    .line 168
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 169
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 170
    const-string/jumbo v2, "NotificationHelper"

    const-string/jumbo v4, "clearNotification()"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v3

    .line 175
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 171
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationHelper"

    const-string/jumbo v3, "clearNotification failed"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string/jumbo v0, "NotificationHelper"

    const-string/jumbo v1, "playRing()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lazq$1;

    invoke-direct {v1, p0, p1}, Lazq$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "isOngoing"    # Z
    .param p5, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v5, Lazq;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 88
    :try_start_0
    const-string/jumbo v4, "NotificationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showNotification() | title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v4, "notification"

    .line 91
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 92
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, p3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 94
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 95
    .local v3, "notify":Landroid/app/Notification;
    const v4, -0xff0100

    iput v4, v3, Landroid/app/Notification;->ledARGB:I

    .line 96
    const/16 v4, 0x12c

    iput v4, v3, Landroid/app/Notification;->ledOnMS:I

    .line 97
    const/16 v4, 0xbb8

    iput v4, v3, Landroid/app/Notification;->ledOffMS:I

    .line 98
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 99
    if-eqz p4, :cond_2

    .line 100
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 104
    :goto_0
    const v4, 0x7f0203c0

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 105
    iput-object p1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 106
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "notificationIntent":Landroid/content/Intent;
    sget v4, Lof;->m:I

    if-ne v4, p3, :cond_3

    .line 110
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "notificationIntent":Landroid/content/Intent;
    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 115
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "notificationIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_1
    const-string/jumbo v4, "isFromNotification"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p0, v4, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 127
    .local v0, "contentIntent2":Landroid/app/PendingIntent;
    invoke-static {v3, p0, p1, p2, v0}, Lazq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 128
    invoke-virtual {v2, p3, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 130
    invoke-static {p0, p5}, Lazq;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    monitor-exit v5

    .line 132
    return-void

    .line 102
    .end local v0    # "contentIntent2":Landroid/app/PendingIntent;
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    :cond_2
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 131
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notify":Landroid/app/Notification;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 111
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    .restart local v2    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v3    # "notify":Landroid/app/Notification;
    :cond_3
    :try_start_1
    sget v4, Lof;->i:I

    if-ne v4, p3, :cond_0

    .line 112
    const/4 v4, 0x1

    sput-boolean v4, Lazq;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
