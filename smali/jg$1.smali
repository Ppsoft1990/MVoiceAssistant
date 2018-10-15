.class Ljg$1;
.super Landroid/os/Handler;
.source "SystemEventUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljg;


# direct methods
.method constructor <init>(Ljg;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Ljg;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 259
    iput-object p1, p0, Ljg$1;->a:Ljg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p0, Ljg$1;->a:Ljg;

    invoke-static {v0}, Ljg;->a(Ljg;)V

    goto :goto_0

    .line 267
    :pswitch_1
    new-instance v6, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v0, p0, Ljg$1;->a:Ljg;

    invoke-static {v0}, Ljg;->b(Ljg;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 268
    .local v6, "cm":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v6}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v7

    .line 269
    .local v7, "isHaveNet":Z
    if-nez v7, :cond_0

    .line 270
    iget-object v0, p0, Ljg$1;->a:Ljg;

    iget-object v1, p0, Ljg$1;->a:Ljg;

    invoke-static {v1}, Ljg;->c(Ljg;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljg;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;IIILjava/lang/Object;)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
