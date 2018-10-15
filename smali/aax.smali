.class public Laax;
.super Ljava/lang/Object;
.source "DialLocalHelperImp.java"

# interfaces
.implements Ladi;


# static fields
.field private static b:Laax;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "DialLocalHelperImp"

    iput-object v0, p0, Laax;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static a()Laax;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Laax;->b:Laax;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Laax;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Laax;->b:Laax;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Laax;

    invoke-direct {v0}, Laax;-><init>()V

    sput-object v0, Laax;->b:Laax;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Laax;->b:Laax;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 43
    if-nez p1, :cond_0

    .line 44
    const-string/jumbo v5, "DialLocalHelperImp"

    const-string/jumbo v6, "mContext is null"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 65
    :goto_0
    return v2

    .line 47
    :cond_0
    const-string/jumbo v5, "DialLocalHelperImp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRemoteAppRunning in\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "result":Z
    const-string/jumbo v5, "activity"

    .line 50
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 51
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v0, :cond_1

    .line 53
    const-string/jumbo v5, "DialLocalHelperImp"

    const-string/jumbo v6, "appList is null"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 57
    .local v3, "running":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 58
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Laax;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    const-string/jumbo v4, "DialLocalHelperImp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRemoteAppRunning out\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v2, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "running":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    const-string/jumbo v4, "DialLocalHelperImp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRemoteAppRunning out\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p1}, Lzu;->d(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "com.iflytek.dial"

    return-object v0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {}, Laax;->a()Laax;

    move-result-object v3

    invoke-virtual {v3, p1}, Laax;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-static {p1}, Lzu;->d(Landroid/content/Context;)I

    move-result v1

    .line 77
    .local v1, "localCallSettingValue":I
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v3

    invoke-virtual {v3}, Ladh;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v3

    iget-object v4, v3, Ladh;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 80
    :try_start_0
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v3

    iget-object v3, v3, Ladh;->b:Ljava/lang/Object;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v3

    invoke-virtual {v3}, Ladh;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ladh;->c(I)Z

    .line 90
    :cond_0
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v3

    invoke-virtual {v3}, Ladh;->c()I

    move-result v2

    .line 92
    .local v2, "remoteCallSettingValue":I
    const-string/jumbo v3, "DialLocalHelperImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remoteCallSettingValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",localCallSettingValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-lt v2, v1, :cond_1

    .line 94
    const-string/jumbo v3, "DialLocalHelperImp"

    const-string/jumbo v4, "dial installed, canlce broadcast of lingxi"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v3, 0x0

    .line 98
    .end local v1    # "localCallSettingValue":I
    .end local v2    # "remoteCallSettingValue":I
    :goto_1
    return v3

    .line 81
    .restart local v1    # "localCallSettingValue":I
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "DialLocalHelperImp"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 98
    .end local v1    # "localCallSettingValue":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method
