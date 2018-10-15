.class Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;
.super Lamq;
.source "BookCollectListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    invoke-direct {p0}, Lamq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 334
    const/16 v0, 0x3ee

    if-ne v0, p1, :cond_0

    .line 336
    const-string/jumbo v0, "BookCollectListActivity"

    const-string/jumbo v1, "\u5220\u9664\u5931\u8d25"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    return-void
.end method

.method public onSubCollectResult()V
    .locals 4

    .prologue
    .line 342
    const-string/jumbo v1, "BookCollectListActivity"

    const-string/jumbo v2, "onSubBookMarkResult "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 347
    .local v0, "bookMarkInfo":Lamo;
    if-eqz v0, :cond_2

    .line 348
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v2

    invoke-virtual {v0}, Lamo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamk;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    .end local v0    # "bookMarkInfo":Lamo;
    :cond_3
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
