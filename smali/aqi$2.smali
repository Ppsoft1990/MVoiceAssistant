.class Laqi$2;
.super Landroid/os/Handler;
.source "MusicNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqi;


# direct methods
.method constructor <init>(Laqi;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Laqi;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 241
    iput-object p1, p0, Laqi$2;->a:Laqi;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Laqi$2;->a:Laqi;

    invoke-virtual {v0}, Laqi;->e()V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Laqi$2;->a:Laqi;

    invoke-virtual {v0}, Laqi;->g()V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
