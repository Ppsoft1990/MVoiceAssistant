.class Lamz$4;
.super Landroid/os/Handler;
.source "BookNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamz;


# direct methods
.method constructor <init>(Lamz;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lamz;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 531
    iput-object p1, p0, Lamz$4;->a:Lamz;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 534
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 536
    :pswitch_0
    iget-object v0, p0, Lamz$4;->a:Lamz;

    invoke-virtual {v0}, Lamz;->c()V

    goto :goto_0

    .line 539
    :pswitch_1
    iget-object v0, p0, Lamz$4;->a:Lamz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamz;->a(Z)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
