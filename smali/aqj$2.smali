.class Laqj$2;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqj;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Laqj;


# direct methods
.method constructor <init>(Laqj;J)V
    .locals 0
    .param p1, "this$0"    # Laqj;

    .prologue
    .line 389
    iput-object p1, p0, Laqj$2;->b:Laqj;

    iput-wide p2, p0, Laqj$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    .line 392
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v1

    iget-wide v2, p0, Laqj$2;->a:J

    invoke-virtual {v1, v2, v3, v4}, Laqg;->a(JI)Ljava/util/List;

    move-result-object v0

    .line 393
    .local v0, "favorList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicFavor;>;"
    iget-object v1, p0, Laqj$2;->b:Laqj;

    invoke-static {v1}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    iget-object v1, p0, Laqj$2;->b:Laqj;

    invoke-static {v1}, Laqj;->b(Laqj;)Laph;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Laqj$2;->b:Laqj;

    invoke-static {v1}, Laqj;->b(Laqj;)Laph;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Laph;->b(Z)V

    .line 398
    :cond_0
    return-void

    .line 396
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
