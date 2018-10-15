.class public Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
.super Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
.source "OnceDatetimeInfor.java"


# static fields
.field private static final serialVersionUID:J = 0x118831c2464f19dbL


# instance fields
.field private mMultiOnceDateSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;",
            ">;"
        }
    .end annotation
.end field

.field private mOnceDateSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;-><init>(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    .line 26
    return-void
.end method


# virtual methods
.method public addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    .locals 1
    .param p1, "date"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    .locals 1
    .param p1, "date"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 72
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
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;-><init>()V

    .line 128
    .local v0, "onceDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mRepeatType:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 131
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiple:Z

    iput-boolean v1, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiple:Z

    .line 132
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
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 153
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 140
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->isMultiple()Z

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->isMultiple()Z

    move-result v3

    if-ne v0, v3, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 145
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v2

    .line 148
    goto :goto_0

    .end local p1    # "o":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 153
    goto :goto_0
.end method

.method public getMultiOnceDateList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 53
    .local v0, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    return-object v1
.end method

.method public getOnceDateList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 62
    .local v0, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v0    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->hashCode()I

    move-result v0

    .line 165
    :cond_0
    return v0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    .locals 1
    .param p1, "date"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMultiDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    .locals 1
    .param p1, "date"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    .locals 1
    .param p1, "oldDate"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .param p2, "newDate"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMultiDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z
    .locals 1
    .param p1, "oldDate"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .param p2, "newDate"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->mMultiOnceDateSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
