.class public final Lcom/iflytek/base/newalarm/AlarmHelper;
.super Ljava/lang/Object;
.source "AlarmHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmHelper"

.field private static ZTE_MODELS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ZTE S2005"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ZTE S2004"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ZTE S2002"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ZTE a2015"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ZTE g720t"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ZTE b880"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ZTE g719c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ZTE star"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/base/newalarm/AlarmHelper;->ZTE_MODELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fmtDataToMDHM(J)Ljava/lang/String;
    .locals 4
    .param p0, "timeMills"    # J

    .prologue
    .line 38
    const-string/jumbo v1, ""

    .line 40
    .local v1, "formatDate":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AlarmHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static fmtDateToStr(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "dtFormat"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string/jumbo v1, ""

    .line 108
    :goto_0
    return-object v1

    .line 104
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlarmHelper"

    const-string/jumbo v2, "fmtDateToStr error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getOSVersionCode()I
    .locals 1

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isMIUIRom()Z
    .locals 5

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "var0":Z
    const-string/jumbo v1, "miui.os.Build"

    .line 117
    .local v1, "var1":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v0, 0x1

    .line 123
    :goto_0
    const-string/jumbo v2, "Push_Enviroment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isMIUIRom(), return = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v0

    .line 120
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Push_Enviroment"

    const-string/jumbo v3, "isMIUIRom(), Class.forName() occur error!"

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isRegisterService(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 136
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 140
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    .line 141
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 142
    .local v4, "serviceInfos":[Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 144
    aget-object v5, v4, v1

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-class v6, Lcom/iflytek/base/newalarm/AlarmService;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    const/4 v5, 0x1

    .line 154
    .end local v1    # "i":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "serviceInfos":[Landroid/content/pm/ServiceInfo;
    :goto_1
    return v5

    .line 143
    .restart local v1    # "i":I
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "serviceInfos":[Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "serviceInfos":[Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "AlarmHelper"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isZteModel()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 162
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 163
    .local v1, "model":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 167
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/iflytek/base/newalarm/AlarmHelper;->ZTE_MODELS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 168
    sget-object v3, Lcom/iflytek/base/newalarm/AlarmHelper;->ZTE_MODELS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    const/4 v2, 0x1

    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static parseBundleData(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const-string/jumbo v3, "EXTRA_ALARM_MODULE"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "moduleName":Ljava/lang/String;
    const-string/jumbo v3, "EXTRA_ALARM_TRIGGERTIME"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 79
    .local v4, "triggerTime":J
    const-string/jumbo v3, "EXTRA_ALARM_ID"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "alarmId":Ljava/lang/String;
    const-string/jumbo v3, "EXTRA_ALARM_MODE"

    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "alarmMode":I
    new-instance v3, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    invoke-virtual {v3, p0}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v3

    .line 90
    return-object v3
.end method

.method public static parseIntentData(Landroid/content/Intent;)Lcom/iflytek/base/newalarm/entities/AlarmData;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 55
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "EXTRA_ALARM_MODULE"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "moduleName":Ljava/lang/String;
    const-string/jumbo v6, "EXTRA_ALARM_TRIGGERTIME"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 57
    .local v4, "triggerTime":J
    const-string/jumbo v6, "EXTRA_ALARM_ID"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "alarmId":Ljava/lang/String;
    const-string/jumbo v6, "EXTRA_ALARM_MODE"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "alarmMode":I
    new-instance v6, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    invoke-virtual {v6, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v6

    .line 68
    return-object v6
.end method

.method public static saveErrorLog(Ljava/lang/String;)V
    .locals 10
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v8, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_sys_api_ver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v0, "d_sys_release"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v0, "d_method_absence"

    invoke-interface {v8, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v0, "d_user_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v1, "IC00027"

    .line 184
    .local v1, "opCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .local v2, "currentTime":J
    const-string/jumbo v6, "success"

    const-string/jumbo v7, "com.iflytek.cmcc"

    sget-object v9, Lcom/iflytek/blc/log/LogPriority;->Middle:Lcom/iflytek/blc/log/LogPriority;

    move-wide v4, v2

    invoke-static/range {v1 .. v9}, Lcom/iflytek/blc/log/OpLogProxy;->addEventWithTime(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V

    .line 187
    return-void
.end method
