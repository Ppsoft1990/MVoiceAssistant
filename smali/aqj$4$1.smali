.class Laqj$4$1;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqj$4;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafn;

.field final synthetic b:Laqj$4;


# direct methods
.method constructor <init>(Laqj$4;Lafn;)V
    .locals 0
    .param p1, "this$1"    # Laqj$4;

    .prologue
    .line 743
    iput-object p1, p0, Laqj$4$1;->b:Laqj$4;

    iput-object p2, p0, Laqj$4$1;->a:Lafn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 747
    iget-object v2, p0, Laqj$4$1;->b:Laqj$4;

    iget-object v2, v2, Laqj$4;->a:Laqj;

    invoke-static {v2}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b()Lafn;

    move-result-object v1

    .line 748
    .local v1, "playResult":Lafn;
    iget-object v2, p0, Laqj$4$1;->a:Lafn;

    invoke-virtual {v2}, Lafn;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafn;->d(Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Laqj$4$1;->b:Laqj$4;

    iget-object v2, v2, Laqj$4;->a:Laqj;

    invoke-static {v2}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v0

    .line 750
    .local v0, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Laqj$4$1;->a:Lafn;

    invoke-virtual {v3}, Lafn;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 751
    iget-object v2, p0, Laqj$4$1;->b:Laqj$4;

    iget-object v2, v2, Laqj$4;->a:Laqj;

    invoke-static {v2}, Laqj;->b(Laqj;)Laph;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Laqj$4$1;->b:Laqj$4;

    iget-object v2, v2, Laqj$4;->a:Laqj;

    invoke-static {v2}, Laqj;->b(Laqj;)Laph;

    move-result-object v2

    iget-object v3, p0, Laqj$4$1;->b:Laqj$4;

    iget-object v3, v3, Laqj$4;->a:Laqj;

    invoke-virtual {v3}, Laqj;->z()Z

    move-result v3

    invoke-interface {v2, v3}, Laph;->b(Z)V

    .line 755
    :cond_0
    return-void
.end method
