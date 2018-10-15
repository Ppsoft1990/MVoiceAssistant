.class public interface abstract Lcom/iflytek/base/newalarm/interfaces/IAlarm;
.super Ljava/lang/Object;
.source "IAlarm.java"


# virtual methods
.method public abstract cancelAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
.end method

.method public abstract cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelModuleAlarms(Ljava/lang/String;)V
.end method

.method public abstract getAbortiveAlarms(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/newalarm/entities/AlarmData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I
.end method

.method public abstract setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
.end method

.method public abstract setAlarm(Ljava/lang/String;JILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract unRegistModule(Ljava/lang/String;)I
.end method
