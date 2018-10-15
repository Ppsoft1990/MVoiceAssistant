.class final Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk23;
.super Ljava/lang/Object;
.source "AlarmSdk23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAlarmClockMethodExist()Z
    .locals 5

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 38
    .local v2, "isExist":Z
    :try_start_0
    const-string/jumbo v3, "android.app.AlarmManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v3, "getNextAlarmClock"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    const/4 v2, 0x1

    .line 49
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isSetAlarmClockMethodExist()Z
    .locals 6

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, "isExist":Z
    :try_start_0
    const-string/jumbo v4, "android.app.AlarmManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 57
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Class;

    .line 58
    .local v3, "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const-class v5, Landroid/app/AlarmManager$AlarmClockInfo;

    aput-object v5, v3, v4

    .line 59
    const/4 v4, 0x1

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    .line 60
    const-string/jumbo v4, "setAlarmClock"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 69
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAlarm(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 4
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerTime"    # J
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    .line 23
    invoke-static {}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk23;->isAlarmClockMethodExist()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk23;->isSetAlarmClockMethodExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    const-string/jumbo v1, "AlarmSdk23"

    const-string/jumbo v2, "isAlarmClockMethodExist"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 26
    .local v0, "alarmClockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0, v0, p4}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 33
    .end local v0    # "alarmClockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string/jumbo v1, "AlarmSdk23"

    const-string/jumbo v2, "setAlarmClockMethod not Exist"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 30
    const-string/jumbo v1, "setAlarmClock"

    invoke-static {v1}, Lcom/iflytek/base/newalarm/AlarmHelper;->saveErrorLog(Ljava/lang/String;)V

    goto :goto_0
.end method
