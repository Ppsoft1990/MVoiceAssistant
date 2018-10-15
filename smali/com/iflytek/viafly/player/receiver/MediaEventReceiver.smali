.class public Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaEventReceiver.java"


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;

.field private static b:I

.field private static c:J

.field private static d:Z

.field private static e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->a:Landroid/os/PowerManager$WakeLock;

    .line 34
    sput v2, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->c:J

    .line 36
    sput-boolean v2, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->d:Z

    .line 119
    new-instance v0, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v18, "MediaEventReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onReceive action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string/jumbo v18, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 47
    invoke-static {}, Larc;->a()Larc;

    move-result-object v18

    const-string/jumbo v19, "com.iflytek.viafly.player.playpause"

    invoke-virtual/range {v18 .. v19}, Larc;->a(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string/jumbo v18, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 50
    const-string/jumbo v18, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    .line 51
    .local v10, "event":Landroid/view/KeyEvent;
    if-eqz v10, :cond_0

    .line 55
    invoke-static {}, Lil;->a()Lil;

    move-result-object v18

    const-string/jumbo v19, "com.iflytek.cmcc.IFLY_MEDIA_BUTTON_EVENT"

    invoke-virtual/range {v18 .. v19}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v16

    .line 57
    .local v16, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    const-wide/16 v20, 0x64

    cmp-long v18, v18, v20

    if-gez v18, :cond_2

    .line 58
    const-string/jumbo v18, "MediaEventReceiver"

    const-string/jumbo v19, "onReceive ACTION_MEDIA_BUTTON, duraion below threshold, return"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 63
    .local v14, "keycode":I
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    .line 64
    .local v12, "eventtime":J
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    .line 66
    .local v11, "eventAction":I
    const/4 v7, 0x0

    .line 67
    .local v7, "command":Ljava/lang/String;
    sparse-switch v14, :sswitch_data_0

    .line 82
    :goto_1
    if-eqz v7, :cond_0

    .line 83
    if-nez v11, :cond_5

    .line 84
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    if-nez v18, :cond_5

    .line 85
    const/16 v18, 0x4f

    move/from16 v0, v18

    if-ne v14, v0, :cond_7

    .line 86
    sget-wide v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->c:J

    sub-long v18, v12, v18

    const-wide/16 v20, 0x320

    cmp-long v18, v18, v20

    if-ltz v18, :cond_3

    .line 87
    const/16 v18, 0x0

    sput v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    .line 90
    :cond_3
    sget v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    add-int/lit8 v18, v18, 0x1

    sput v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    .line 91
    const-string/jumbo v18, "MediaEventReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Got headset click, count = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lil;->a()Lil;

    move-result-object v18

    const-string/jumbo v19, "com.iflytek.cmcc.IFLY_MEDIA_BUTTON_EVENT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Lil;->a(Ljava/lang/String;J)V

    .line 95
    sget-object v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->e:Landroid/os/Handler;

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    sget-object v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->e:Landroid/os/Handler;

    const/16 v19, 0x2

    sget v20, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 100
    .local v15, "msg":Landroid/os/Message;
    sget v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    const-wide/16 v8, 0x320

    .line 101
    .local v8, "delay":J
    :goto_2
    sget v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 102
    const/16 v18, 0x0

    sput v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->b:I

    .line 104
    :cond_4
    sput-wide v12, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->c:J

    .line 105
    sget-object v18, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->e:Landroid/os/Handler;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    .end local v8    # "delay":J
    .end local v15    # "msg":Landroid/os/Message;
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->isOrderedBroadcast()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/player/receiver/MediaEventReceiver;->abortBroadcast()V

    goto/16 :goto_0

    .line 70
    :sswitch_0
    const-string/jumbo v7, "com.iflytek.viafly.player.playstart"

    .line 71
    goto/16 :goto_1

    .line 73
    :sswitch_1
    const-string/jumbo v7, "com.iflytek.viafly.player.playnext"

    .line 74
    goto/16 :goto_1

    .line 76
    :sswitch_2
    const-string/jumbo v7, "com.iflytek.viafly.player.playlast"

    .line 77
    goto/16 :goto_1

    .line 100
    .restart local v15    # "msg":Landroid/os/Message;
    :cond_6
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 107
    .end local v15    # "msg":Landroid/os/Message;
    :cond_7
    invoke-static {}, Larc;->a()Larc;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Larc;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
    .end sparse-switch
.end method
