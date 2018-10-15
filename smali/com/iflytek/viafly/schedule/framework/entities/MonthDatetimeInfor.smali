.class public Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
.super Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;
.source "MonthDatetimeInfor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x2f8e73a4f7b3de7fL


# instance fields
.field private mMonthDaySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

    .line 22
    return-void
.end method


# virtual methods
.method public addMonthDay(Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;)Z
    .locals 1
    .param p1, "monthDay"    # Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 37
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
    .line 14
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

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
    .line 14
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;-><init>()V

    .line 85
    .local v0, "monthDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mTimeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mTimeSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMultiTimeSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 89
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMultiple:Z

    iput-boolean v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMultiple:Z

    .line 90
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
    .line 14
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 111
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 98
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMonthDayList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMonthDayList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->isMultiple()Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->isMultiple()Z

    move-result v3

    if-ne v0, v3, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 103
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v2

    .line 106
    goto :goto_0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method public getMonthDayList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, "monthDayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    .line 27
    .local v0, "day":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v0    # "day":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 30
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

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

.method public removeMonthDay(Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;)Z
    .locals 1
    .param p1, "monthDay"    # Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->mMonthDaySet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
