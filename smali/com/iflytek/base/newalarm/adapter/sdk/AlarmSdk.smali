.class public final Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;
.super Ljava/lang/Object;
.source "AlarmSdk.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmSdk"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mAlarmManager:Landroid/app/AlarmManager;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelAlarm(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    const-string/jumbo v1, "AlarmSdk"

    const-string/jumbo v2, "cancelAlarm but pendingIntent is empty"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlarmSdk"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setAlarm(IJLandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "triggerTime"    # J
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 38
    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    const-string/jumbo v2, "AlarmSdk"

    const-string/jumbo v3, "setAlarm but pendingIntent is empty"

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .local v1, "versionCode":I
    const-string/jumbo v2, "AlarmSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAlarm versionCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 49
    const-string/jumbo v2, "AlarmSdk"

    const-string/jumbo v3, "setAlarm alarm "

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 60
    .end local v1    # "versionCode":I
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AlarmSdk"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "versionCode":I
    :cond_2
    const/16 v2, 0x17

    if-ge v1, v2, :cond_3

    .line 53
    :try_start_1
    const-string/jumbo v2, "AlarmSdk"

    const-string/jumbo v3, "setAlarm setExact"

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk19;->setAlarm(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 62
    .end local v1    # "versionCode":I
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string/jumbo v2, "AlarmSdk"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v1    # "versionCode":I
    :cond_3
    :try_start_2
    const-string/jumbo v2, "AlarmSdk"

    const-string/jumbo v3, "setAlarm setAlarmClock"

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk23;->setAlarm(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
