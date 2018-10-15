.class Lcom/iflytek/viafly/browser/BrowserView$1;
.super Landroid/os/Handler;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/browser/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/browser/BrowserView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/browser/BrowserView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserView$1;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1142
    :goto_0
    return-void

    .line 1138
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$1;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$1700(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/DefineProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/DefineProgressView;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$1;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$1700(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/DefineProgressView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/DefineProgressView;->setProgress(I)V

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
