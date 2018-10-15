.class public Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
.super Ljava/lang/Object;
.source "PushSchedule.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/entities/IntimateReminderData;
.implements Ljava/io/Serializable;


# static fields
.field private static DATE_FORMAT_PATTERN:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x6121d92f87ab123dL


# instance fields
.field private mBindScheduleId:Ljava/lang/String;

.field private mDateTime:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

.field private mId:Ljava/lang/String;

.field private mIsAutoOpen:Z

.field private mIsSlient:Z

.field private mIsUsed:Z

.field private mPushPicDesc:Ljava/lang/String;

.field private mPushPicUrl:Ljava/lang/String;

.field private mScheduleContent:Ljava/lang/String;

.field private mScheduleTitle:Ljava/lang/String;

.field private mScheduleTypeStr:Ljava/lang/String;

.field private mTriggerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->DATE_FORMAT_PATTERN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsUsed:Z

    .line 44
    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsSlient:Z

    return-void
.end method


# virtual methods
.method public getBindScheduleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mBindScheduleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mDateTime:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getNextTime()J
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mDateTime:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getNextTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPushPicDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mPushPicDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getPushPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mPushPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleBindId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getBindScheduleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduleContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleContent:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getScheduleContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduleSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lawn;->a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleTypeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTime()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mTriggerTime:J

    return-wide v0
.end method

.method public isAutoOpen()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsAutoOpen:Z

    return v0
.end method

.method public isScheduleDated()Z
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->getNextTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduleUsed()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->isUsed()Z

    move-result v0

    return v0
.end method

.method public isSlient()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsSlient:Z

    return v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsUsed:Z

    return v0
.end method

.method public setAutoOpen(Z)V
    .locals 0
    .param p1, "isAutoOpen"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsAutoOpen:Z

    .line 118
    return-void
.end method

.method public setDateTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V
    .locals 0
    .param p1, "dateTime"    # Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mDateTime:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 94
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setIsSlient(Z)V
    .locals 0
    .param p1, "mIsSlient"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsSlient:Z

    .line 52
    return-void
.end method

.method public setPushPicDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPushPicDesc"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mPushPicDesc:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPushPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushPicUrl"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mPushPicUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setScheduleContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheduleContent"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleContent:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setScheduleTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheduleTitle"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleTitle:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setScheduleTypeStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mScheduleTypeStr"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleTypeStr:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setScheduleUsed(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isused"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->setUsed(ZLjava/lang/String;)V

    .line 191
    return-void
.end method

.method public setTriggerTime(J)V
    .locals 1
    .param p1, "mTriggerTime"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mTriggerTime:J

    .line 153
    return-void
.end method

.method public setUsed(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isUsed"    # Z
    .param p2, "bindScheduleId"    # Ljava/lang/String;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsUsed:Z

    .line 105
    if-eqz p1, :cond_1

    .line 106
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mBindScheduleId:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mBindScheduleId:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ScheduleTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ScheduleContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mScheduleContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", PushPicUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mPushPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mDateTime:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", IsUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", BindScheduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mBindScheduleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", IsAutoOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mIsAutoOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPushPicDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;->mPushPicDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
