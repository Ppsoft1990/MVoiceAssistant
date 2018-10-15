.class public final Lcom/iflytek/base/newalarm/entities/AlarmData;
.super Ljava/lang/Object;
.source "AlarmData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/newalarm/entities/AlarmData$1;,
        Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;
    }
.end annotation


# instance fields
.field private mAlarmData:Landroid/os/Bundle;

.field private mAlarmId:Ljava/lang/String;

.field private mAlarmMode:I

.field private mAlarmModuleName:Ljava/lang/String;

.field private mAlarmTriggerTime:J


# direct methods
.method private constructor <init>(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmMode:I

    .line 25
    invoke-static {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->access$000(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->access$100(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmData:Landroid/os/Bundle;

    .line 27
    invoke-static {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->access$200(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmTriggerTime:J

    .line 28
    invoke-static {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->access$300(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmMode:I

    .line 29
    invoke-static {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->access$400(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;Lcom/iflytek/base/newalarm/entities/AlarmData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;-><init>(Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;)V

    return-void
.end method

.method private convertTimeToDate(J)Ljava/lang/String;
    .locals 1
    .param p1, "triggerTime"    # J

    .prologue
    .line 98
    invoke-static {p1, p2}, Lcom/iflytek/base/newalarm/AlarmHelper;->fmtDataToMDHM(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-ne p0, p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 131
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 134
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/iflytek/base/newalarm/entities/AlarmData;

    .line 136
    .local v0, "other":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v3, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 137
    iget-object v3, v0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 138
    goto :goto_0

    .line 139
    :cond_4
    iget-object v3, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_5
    iget v3, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmMode:I

    iget v4, v0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmMode:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    iget-object v3, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 144
    iget-object v3, v0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 145
    goto :goto_0

    .line 146
    :cond_7
    iget-object v3, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 147
    goto :goto_0

    .line 148
    :cond_8
    iget-wide v4, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmTriggerTime:J

    iget-wide v6, v0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmTriggerTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public final getAlarmBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getAlarmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlarmMode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmMode:I

    return v0
.end method

.method public final getAlarmModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlarmTriggerTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmTriggerTime:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 118
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmMode:I

    add-int v0, v1, v3

    .line 119
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmTriggerTime:J

    iget-wide v4, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmTriggerTime:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 124
    return v1

    .line 114
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 119
    .restart local v0    # "result":I
    :cond_1
    iget-object v2, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlarmData{mAlarmModuleName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAlarmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAlarmTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmTriggerTime:J

    invoke-direct {p0, v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->convertTimeToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAlarmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAlarmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/newalarm/entities/AlarmData;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
