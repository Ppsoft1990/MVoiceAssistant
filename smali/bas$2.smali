.class final Lbas$2;
.super Landroid/os/Handler;
.source "NoteSpeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    sget-object v0, Lbas;->a:Lbar;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lbas;->a:Lbar;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lbar;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
