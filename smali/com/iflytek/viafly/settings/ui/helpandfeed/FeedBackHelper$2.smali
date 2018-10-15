.class Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;
.super Ljava/lang/Object;
.source "FeedBackHelper.java"

# interfaces
.implements Lvq$a;


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
    .line 134
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlcFeedbackError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    :cond_0
    return-void
.end method

.method public onBlcFeedbackResult(Lcom/iflytek/yd/business/BasicInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/yd/business/BasicInfo;

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;->this$0:Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    :cond_0
    return-void
.end method
