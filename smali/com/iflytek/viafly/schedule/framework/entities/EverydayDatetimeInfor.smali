.class public Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;
.super Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
.source "EverydayDatetimeInfor.java"


# static fields
.field private static final serialVersionUID:J = 0x578d2f660a561882L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)V

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;-><init>()V

    .line 41
    .local v0, "everydayDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mTimeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 44
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mMultiple:Z

    iput-boolean v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->mMultiple:Z

    .line 45
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
    .line 13
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 66
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 53
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->isMultiple()Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->isMultiple()Z

    move-result v3

    if-ne v0, v3, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 58
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v2

    .line 61
    goto :goto_0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/EverydayDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->hashCode()I

    move-result v0

    .line 74
    :cond_0
    return v0
.end method
