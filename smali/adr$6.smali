.class Ladr$6;
.super Landroid/os/Handler;
.source "AbsResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladr;


# direct methods
.method constructor <init>(Ladr;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Ladr;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 259
    iput-object p1, p0, Ladr$6;->a:Ladr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Ladr$6;->a:Ladr;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-virtual {v1, v0}, Ladr;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
