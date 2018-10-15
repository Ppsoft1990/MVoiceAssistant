.class Lamg$1;
.super Lamq;
.source "HomeCollectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamg;


# direct methods
.method constructor <init>(Lamg;)V
    .locals 0
    .param p1, "this$0"    # Lamg;

    .prologue
    .line 70
    iput-object p1, p0, Lamg$1;->a:Lamg;

    invoke-direct {p0}, Lamq;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCollectGetResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "bookMarkInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamg$1;->a:Lamg;

    invoke-static {v0}, Lamg;->a(Lamg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    .line 82
    iget-object v0, p0, Lamg$1;->a:Lamg;

    invoke-static {v0}, Lamg;->a(Lamg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lamg$1;->a:Lamg;

    invoke-static {v0}, Lamg;->a(Lamg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    const-string/jumbo v0, "HomeCollectHelper"

    const-string/jumbo v1, " onBookMarkGetResult has complete and size > 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    invoke-virtual {v0}, Lamk;->c()V

    .line 90
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    iget-object v1, p0, Lamg$1;->a:Lamg;

    invoke-static {v1}, Lamg;->a(Lamg;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamk;->b(Ljava/util/List;)I

    .line 93
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lamn;

    invoke-direct {v1}, Lamn;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 74
    const-string/jumbo v0, "HomeCollectHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
