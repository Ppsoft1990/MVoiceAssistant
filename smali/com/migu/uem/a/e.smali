.class public final Lcom/migu/uem/a/e;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/migu/uem/a/e;


# instance fields
.field private a:Landroid/app/AlarmManager;

.field private b:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/uem/a/e;->c:Lcom/migu/uem/a/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/migu/uem/a/e;->a:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/migu/uem/a/e;->a:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/a/e;->b:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/migu/uem/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/e;->b:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/migu/uem/a/e;
    .locals 2

    sget-object v0, Lcom/migu/uem/a/e;->c:Lcom/migu/uem/a/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/a/e;->c:Lcom/migu/uem/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/a/e;

    invoke-direct {v0, p0}, Lcom/migu/uem/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/migu/uem/a/e;->c:Lcom/migu/uem/a/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/a/e;->c:Lcom/migu/uem/a/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/a/e;->a:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/e;->b:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/migu/uem/a/e;->a:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/migu/uem/a/e;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x1388

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/a/e;->a:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/migu/uem/a/e;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/e;->a:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/migu/uem/a/e;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/migu/uem/a/e;->a:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/migu/uem/a/e;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
