.class public Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
.super Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
.source "YearDatetimeInfor.java"


# static fields
.field private static final serialVersionUID:J = 0x255b19ea2370eaecL


# instance fields
.field private mYearDateSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/YearDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->year_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    .line 24
    return-void
.end method


# virtual methods
.method public addYearDay(Lcom/iflytek/viafly/schedule/framework/entities/YearDate;)Z
    .locals 1
    .param p1, "yearDay"    # Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 39
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
    .line 16
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

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
    .line 16
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;-><init>()V

    .line 87
    .local v0, "yearDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mTimeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 91
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mMultiple:Z

    iput-boolean v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mMultiple:Z

    .line 92
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
    .line 16
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 113
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 100
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getYearDayList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getYearDayList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->isMultiple()Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->isMultiple()Z

    move-result v3

    if-ne v0, v3, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 105
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v2

    .line 108
    goto :goto_0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public getYearDayList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/YearDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "yearDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/YearDate;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    .line 29
    .local v0, "date":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 32
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getYearDayList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->getYearDayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->hashCode()I

    move-result v0

    .line 124
    :cond_0
    return v0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMonthDate(Lcom/iflytek/viafly/schedule/framework/entities/YearDate;)Z
    .locals 1
    .param p1, "yearDay"    # Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDatetimeInfor;->mYearDateSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
