.class public Lavi;
.super Ljava/lang/Object;
.source "TriggerHandlerWrapper.java"

# interfaces
.implements Lave;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lave;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lave;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Lave;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p2, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "base TriggerHandler is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lavi;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lavi;->b:Lave;

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->a(I)V

    .line 34
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 54
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 1
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 38
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 39
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "datedScheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->a(Ljava/util/ArrayList;)V

    .line 64
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0}, Lave;->a()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;J)Z
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "delayMilliSecond"    # J

    .prologue
    .line 73
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1, p2, p3}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;J)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0}, Lave;->b()V

    .line 94
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->b(I)V

    .line 44
    return-void
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 1
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 68
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 69
    return-void
.end method

.method public c(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->c(I)Z

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lavi;->b:Lave;

    invoke-interface {v0, p1}, Lave;->d(I)V

    .line 89
    return-void
.end method
