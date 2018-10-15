.class Laqj$1;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqj;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqj;


# direct methods
.method constructor <init>(Laqj;)V
    .locals 0
    .param p1, "this$0"    # Laqj;

    .prologue
    .line 371
    iput-object p1, p0, Laqj$1;->a:Laqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    .line 374
    iget-object v2, p0, Laqj$1;->a:Laqj;

    invoke-static {v2}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v0, v2, 0x32

    .line 375
    .local v0, "currentPage":I
    invoke-static {}, Laqh;->a()Laqh;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v4}, Laqh;->a(II)Ljava/util/List;

    move-result-object v1

    .line 376
    .local v1, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicHistory;>;"
    iget-object v2, p0, Laqj$1;->a:Laqj;

    invoke-static {v2}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    iget-object v2, p0, Laqj$1;->a:Laqj;

    invoke-static {v2}, Laqj;->b(Laqj;)Laph;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Laqj$1;->a:Laqj;

    invoke-static {v2}, Laqj;->b(Laqj;)Laph;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v2}, Laph;->b(Z)V

    .line 381
    :cond_0
    return-void

    .line 379
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
