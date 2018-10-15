.class Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$1;
.super Landroid/os/Handler;
.source "FeedBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$1;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$1;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->onBlcResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
