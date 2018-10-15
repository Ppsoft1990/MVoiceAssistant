.class final Lcom/iflytek/viafly/player/receiver/MediaEventReceiver$1;
.super Landroid/os/Handler;
.source "MediaEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 129
    .local v0, "clickCount":I
    const/4 v1, 0x0

    .line 131
    .local v1, "command":Ljava/lang/String;
    const-string/jumbo v2, "MediaEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handling headset click, count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    packed-switch v0, :pswitch_data_1

    .line 146
    :goto_1
    if-eqz v1, :cond_0

    .line 147
    invoke-static {}, Larc;->a()Larc;

    move-result-object v2

    invoke-virtual {v2, v1}, Larc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_1
    const-string/jumbo v1, "com.iflytek.viafly.player.playstart"

    .line 135
    goto :goto_1

    .line 137
    :pswitch_2
    const-string/jumbo v1, "com.iflytek.viafly.player.playnext"

    .line 138
    goto :goto_1

    .line 140
    :pswitch_3
    const-string/jumbo v1, "com.iflytek.viafly.player.playlast"

    .line 141
    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
