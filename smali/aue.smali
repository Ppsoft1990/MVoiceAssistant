.class public Laue;
.super Ljava/lang/Object;
.source "PushShowUtil.java"


# static fields
.field private static a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    sput-object v0, Laue;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 35
    return-void
.end method

.method public static a(I)I
    .locals 3
    .param p0, "range"    # I

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v1, -0x1

    .line 72
    :goto_0
    return v1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "result":I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 71
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 72
    goto :goto_0
.end method

.method public static a(JJ)Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "type":Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    .local v0, "currentTime":J
    cmp-long v3, p0, v4

    if-eqz v3, :cond_0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_0

    cmp-long v3, p0, p2

    if-gtz v3, :cond_0

    .line 156
    cmp-long v3, p0, v0

    if-lez v3, :cond_1

    .line 157
    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->UnEffective:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    .line 164
    :cond_0
    :goto_0
    const-string/jumbo v3, "PushShowUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLifeTime(), ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v2

    .line 158
    :cond_1
    cmp-long v3, p2, v0

    if-gez v3, :cond_2

    .line 159
    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->Dated:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    goto :goto_0

    .line 161
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noticeID"    # I

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const-string/jumbo v0, "PushShowUtil"

    const-string/jumbo v1, "clearNotifyBarNotice() param is illegal"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "PushShowUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearNotifyBarNotice() | noticeID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Loe;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JILcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)V
    .locals 5
    .param p0, "msgId"    # Ljava/lang/String;
    .param p1, "datetime"    # J
    .param p3, "requestCode"    # I
    .param p4, "alarmCallback"    # Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;

    .prologue
    .line 77
    if-eqz p4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    :cond_0
    const-string/jumbo v2, "PushShowUtil"

    const-string/jumbo v3, "setAlarm param not legal"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string/jumbo v2, "PushShowUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlarm() | set="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v2, Laue;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_1

    .line 84
    sget-object v2, Laue;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v3, "PushShowUtil"

    invoke-interface {v2, v3, p4}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "notice_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    .line 89
    invoke-virtual {v2, p1, p2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "PushShowUtil"

    .line 90
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 91
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 93
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 95
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    sget-object v2, Laue;->a:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 7

    .prologue
    .line 50
    const/4 v3, 0x1

    .line 51
    .local v3, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 53
    .local v1, "hour":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 55
    .local v2, "minute":I
    const/16 v4, 0x16

    if-ne v1, v4, :cond_0

    const/16 v4, 0x1e

    if-ge v2, v4, :cond_1

    :cond_0
    const/16 v4, 0x17

    if-ge v1, v4, :cond_1

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    .line 58
    :cond_1
    const-string/jumbo v4, "PushShowUtil"

    const-string/jumbo v5, "-------->> current time is in 22:30~09:00"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v3, 0x0

    .line 61
    :cond_2
    const-string/jumbo v4, "PushShowUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInCanDisturbeTime() | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v3
.end method

.method public static a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z
    .locals 6
    .param p0, "notice"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1

    .line 117
    :cond_0
    invoke-static {p0}, Laue;->b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Laue;->a(JJ)Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    move-result-object v0

    .line 121
    .local v0, "lifetime":Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 122
    .local v1, "ret":Z
    const-string/jumbo v2, "PushShowUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isInPeriod(), ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z
    .locals 6
    .param p0, "item"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
