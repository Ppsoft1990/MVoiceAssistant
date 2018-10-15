.class public Lavk;
.super Ljava/lang/Object;
.source "TriggerSchedulePool.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lavk;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)Z
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "ret":Z
    iget-object v3, p0, Lavk;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v3, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 78
    .local v2, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v2    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    if-eqz v1, :cond_2

    .line 85
    iput-object v0, p0, Lavk;->a:Ljava/util/ArrayList;

    .line 88
    .end local v0    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_2
    const-string/jumbo v3, "TriggerSchedulePool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete(), ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return v1
.end method

.method a(IJ)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "triggerTime"    # J

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "ret":Z
    iget-object v3, p0, Lavk;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v3, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 59
    .local v2, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    if-ne p1, v4, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v2    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    if-eqz v1, :cond_2

    .line 66
    iput-object v0, p0, Lavk;->a:Ljava/util/ArrayList;

    .line 69
    .end local v0    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_2
    const-string/jumbo v3, "TriggerSchedulePool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteTriggerCach() ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | schedule id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v1
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_0

    .line 32
    const-string/jumbo v1, "TriggerSchedulePool"

    const-string/jumbo v2, "insert() | scheduleList=null -> return false"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    return v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const-string/jumbo v1, "TriggerSchedulePool"

    const-string/jumbo v2, "insert() | alert schedule is complete -> return false"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Lavk;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    const-string/jumbo v1, "TriggerSchedulePool"

    const-string/jumbo v2, "insert() | is exist -> return false"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string/jumbo v0, "TriggerSchedulePool"

    const-string/jumbo v1, "insert(), ret=true"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lavk;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 8
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "ret":Z
    iget-object v2, p0, Lavk;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 104
    iget-object v2, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 105
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 107
    const/4 v1, 0x1

    .line 112
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    const-string/jumbo v2, "TriggerSchedulePool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isExistInTriggerCach() | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v1
.end method

.method c()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lavk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    return-void
.end method
