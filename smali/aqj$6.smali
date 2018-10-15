.class Laqj$6;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqj;
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
    .line 793
    iput-object p1, p0, Laqj$6;->a:Laqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 797
    :goto_0
    iget-object v1, p0, Laqj$6;->a:Laqj;

    invoke-static {v1}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->t()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 799
    iget-object v1, p0, Laqj$6;->a:Laqj;

    invoke-static {v1}, Laqj;->c(Laqj;)Lapg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Laqj$6;->a:Laqj;

    invoke-static {v1}, Laqj;->c(Laqj;)Lapg;

    move-result-object v1

    iget-object v2, p0, Laqj$6;->a:Laqj;

    invoke-static {v2}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->u()I

    move-result v2

    iget-object v3, p0, Laqj$6;->a:Laqj;

    invoke-static {v3}, Laqj;->a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->v()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lapg;->a(II)V

    .line 803
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MusicPlayerPresenter"

    const-string/jumbo v2, "playTimeTask"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
