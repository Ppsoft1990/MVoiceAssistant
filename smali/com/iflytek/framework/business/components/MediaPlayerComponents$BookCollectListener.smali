.class Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;
.super Lamq;
.source "MediaPlayerComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/MediaPlayerComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BookCollectListener"
.end annotation


# instance fields
.field private mContentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/MediaPlayerComponents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;->this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    invoke-direct {p0}, Lamq;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;->mContentIds:Ljava/util/List;

    .line 389
    return-void
.end method


# virtual methods
.method public onResultCode(ILjava/lang/String;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "netErrorCode"    # Ljava/lang/String;

    .prologue
    .line 393
    const/16 v0, 0x7d

    if-ne v0, p1, :cond_1

    .line 394
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;->this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    const-string/jumbo v1, "addCollect"

    invoke-static {v0, v1, p2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->access$000(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const/16 v0, 0x7e

    if-ne v0, p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;->this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    const-string/jumbo v1, "deleteCollect"

    invoke-static {v0, v1, p2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->access$000(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSubCollectResult()V
    .locals 3

    .prologue
    .line 402
    const-string/jumbo v1, "Business_MediaPlayerComponents"

    const-string/jumbo v2, "onSubBookMarkResult "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;->mContentIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;->mContentIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;->mContentIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    .local v0, "contentId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 408
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lamk;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
