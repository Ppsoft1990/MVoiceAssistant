.class final Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk19;
.super Ljava/lang/Object;
.source "AlarmSdk19.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAlarmClockMethodExist()Z
    .locals 6

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 41
    .local v2, "isExist":Z
    :try_start_0
    const-string/jumbo v4, "android.app.AlarmManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 43
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/Class;

    .line 44
    .local v3, "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 45
    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 46
    const/4 v4, 0x2

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    .line 48
    const-string/jumbo v4, "setExact"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    const/4 v2, 0x1

    .line 57
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAlarm(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerTime"    # J
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    .line 27
    invoke-static {}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk19;->isAlarmClockMethodExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const-string/jumbo v0, "AlarmSdk19"

    const-string/jumbo v1, "setExact Method Exist"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string/jumbo v0, "AlarmSdk19"

    const-string/jumbo v1, "setExact Method not Exist"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 33
    const-string/jumbo v0, "setExact"

    invoke-static {v0}, Lcom/iflytek/base/newalarm/AlarmHelper;->saveErrorLog(Ljava/lang/String;)V

    goto :goto_0
.end method
