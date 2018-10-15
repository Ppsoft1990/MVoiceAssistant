.class Lcom/iflytek/viafly/download/DownloadHandlerService$1;
.super Landroid/os/Handler;
.source "DownloadHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/download/DownloadHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/download/DownloadHandlerService;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/download/DownloadHandlerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$1;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$1;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$1;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
