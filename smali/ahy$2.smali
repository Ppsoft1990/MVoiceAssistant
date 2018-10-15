.class Lahy$2;
.super Landroid/os/Handler;
.source "MicOfflineUsageGuideManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahy;


# direct methods
.method constructor <init>(Lahy;)V
    .locals 0
    .param p1, "this$0"    # Lahy;

    .prologue
    .line 151
    iput-object p1, p0, Lahy$2;->a:Lahy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lqr;

    .line 156
    .local v0, "anchor":Lqr;
    if-nez v0, :cond_0

    .line 157
    const-string/jumbo v2, "MicOfflineUsageGuideHelper"

    const-string/jumbo v3, "obj carried by msg is lost"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 162
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 163
    .local v1, "delayMsg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 164
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lahy$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 167
    .end local v1    # "delayMsg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lahy$2;->a:Lahy;

    invoke-static {v2, v0}, Lahy;->a(Lahy;Lqr;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
