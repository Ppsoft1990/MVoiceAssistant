.class Lamp$1$1;
.super Ljava/lang/Object;
.source "BookBizManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamp$1;->onChapterInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

.field final synthetic b:Lamp$1;


# direct methods
.method constructor <init>(Lamp$1;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 0
    .param p1, "this$1"    # Lamp$1;

    .prologue
    .line 1013
    iput-object p1, p0, Lamp$1$1;->b:Lamp$1;

    iput-object p2, p0, Lamp$1$1;->a:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lamp$1$1;->b:Lamp$1;

    iget-object v0, v0, Lamp$1;->a:Lamp;

    invoke-static {v0}, Lamp;->c(Lamp;)Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lamp$1$1;->b:Lamp$1;

    iget-object v0, v0, Lamp$1;->a:Lamp;

    iget-object v1, p0, Lamp$1$1;->a:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-static {v0, v1}, Lamp;->a(Lamp;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    .line 1022
    :goto_0
    return-void

    .line 1020
    :cond_0
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "isServiceBound false, not perform"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
