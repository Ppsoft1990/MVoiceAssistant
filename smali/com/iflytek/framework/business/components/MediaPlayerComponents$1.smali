.class Lcom/iflytek/framework/business/components/MediaPlayerComponents$1;
.super Ljava/lang/Object;
.source "MediaPlayerComponents.java"

# interfaces
.implements Laqb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/MediaPlayerComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/MediaPlayerComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$1;->this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCollect(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$1;->this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    const-string/jumbo v1, "addCollect"

    invoke-static {v0, v1, p2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->access$000(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public onDeleteCollect(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$1;->this$0:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    const-string/jumbo v1, "deleteCollect"

    invoke-static {v0, v1, p2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->access$000(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onQueryCollect(ZLjava/lang/String;)V
    .locals 0
    .param p1, "collected"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 422
    return-void
.end method

.method public onResult()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method
