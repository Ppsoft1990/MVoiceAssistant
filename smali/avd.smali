.class public Lavd;
.super Ljava/lang/Object;
.source "DelaySchedulePool.java"


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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lavd;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 28
    iget-object v1, p0, Lavd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 29
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 33
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 1
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 37
    iget-object v0, p0, Lavd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lavd;->a:Ljava/util/ArrayList;

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
    .line 20
    iget-object v0, p0, Lavd;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "ret":Z
    if-eqz p1, :cond_1

    .line 43
    iget-object v3, p0, Lavd;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 46
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 53
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    const-string/jumbo v3, "DelaySchedulePool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete() | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | schedule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lavd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    return-void
.end method

.method public c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 5
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "ret":Z
    if-eqz p1, :cond_1

    iget-object v2, p0, Lavd;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lavd;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 60
    iget-object v2, p0, Lavd;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 61
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    const-string/jumbo v2, "DelaySchedulePool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exist() | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v1
.end method
