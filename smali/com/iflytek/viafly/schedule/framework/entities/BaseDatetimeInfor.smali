.class public abstract Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
.super Ljava/lang/Object;
.source "BaseDatetimeInfor.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x4b6dfdb2a91c476L


# instance fields
.field protected mMultiple:Z

.field protected mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)V
    .locals 0
    .param p1, "repeat"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 20
    return-void
.end method


# virtual methods
.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 82
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 77
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    if-eqz v1, :cond_0

    .line 78
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiple()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->mMultiple:Z

    return v0
.end method

.method public setMultiple(Z)V
    .locals 0
    .param p1, "multi"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->mMultiple:Z

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[RepeatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
