.class public abstract Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
.super Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
.source "BaseTimeDatetimeInfor.java"


# static fields
.field private static final serialVersionUID:J = -0xb07e0b1db66b4adL


# instance fields
.field protected mMultiTimeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Time;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Time;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)V
    .locals 1
    .param p1, "repeat"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    .line 29
    return-void
.end method


# virtual methods
.method public addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    .locals 1
    .param p1, "time"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    .locals 1
    .param p1, "time"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

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
    .line 17
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 143
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 127
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    instance-of v0, p1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 131
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 132
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->isMultiple()Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->isMultiple()Z

    move-result v3

    if-ne v0, v3, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 135
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 138
    goto :goto_0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_3
    move v0, v2

    .line 143
    goto :goto_0
.end method

.method public getMultiTimeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Time;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 69
    .local v0, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 72
    return-object v1
.end method

.method public getTimeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Time;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 38
    .local v0, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v0    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 41
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->hashCode()I

    move-result v0

    .line 154
    :cond_0
    return v0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    .locals 1
    .param p1, "time"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    .locals 1
    .param p1, "time"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    .locals 1
    .param p1, "oldTime"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .param p2, "newTime"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z
    .locals 1
    .param p1, "oldTime"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .param p2, "newTime"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
