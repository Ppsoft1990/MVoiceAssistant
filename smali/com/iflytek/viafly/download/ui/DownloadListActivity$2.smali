.class Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;
.super Landroid/os/Handler;
.source "DownloadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/download/ui/DownloadListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 631
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 633
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 634
    .local v0, "itemIndex":I
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lagi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lagi;->b(I)V

    goto :goto_0

    .line 637
    .end local v0    # "itemIndex":I
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->performClick()Z

    goto :goto_0

    .line 642
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V

    .line 643
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->e(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V

    goto :goto_0

    .line 646
    :pswitch_3
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    const-string/jumbo v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
