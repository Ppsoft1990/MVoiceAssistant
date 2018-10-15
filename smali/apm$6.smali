.class Lapm$6;
.super Landroid/os/Handler;
.source "MusicListPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapm;


# direct methods
.method constructor <init>(Lapm;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lapm;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 247
    iput-object p1, p0, Lapm$6;->a:Lapm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 253
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lapm$6;->a:Lapm;

    invoke-static {v0}, Lapm;->d(Lapm;)Lapl;

    move-result-object v0

    invoke-virtual {v0}, Lapl;->notifyDataSetChanged()V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
