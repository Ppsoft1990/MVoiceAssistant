.class Lcom/iflytek/viafly/guide/ProtocolView$1;
.super Landroid/os/Handler;
.source "ProtocolView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/guide/ProtocolView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/guide/ProtocolView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/guide/ProtocolView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/guide/ProtocolView;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/iflytek/viafly/guide/ProtocolView$1;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x0

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView$1;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/ProtocolView;->a(Lcom/iflytek/viafly/guide/ProtocolView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView$1;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/ProtocolView;->a(Lcom/iflytek/viafly/guide/ProtocolView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView$1;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-static {v1, v4, v5}, Lcom/iflytek/viafly/guide/ProtocolView;->a(Lcom/iflytek/viafly/guide/ProtocolView;J)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView$1;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/ProtocolView;->b(Lcom/iflytek/viafly/guide/ProtocolView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/iflytek/viafly/guide/ProtocolView$1;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/ProtocolView;->b(Lcom/iflytek/viafly/guide/ProtocolView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/guide/ProtocolView$1;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-static {v1, v4, v5}, Lcom/iflytek/viafly/guide/ProtocolView;->a(Lcom/iflytek/viafly/guide/ProtocolView;J)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
