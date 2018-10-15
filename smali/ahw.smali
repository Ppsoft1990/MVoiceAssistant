.class public Lahw;
.super Landroid/os/Handler;
.source "HomeHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    invoke-static {}, Lagv;->g()Lahg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahg;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HomeHandler"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    invoke-static {}, Lagv;->h()Lahk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahk;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(Landroid/os/Message;)V

    .line 99
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahp;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 103
    :pswitch_4
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahp;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_5
    invoke-static {}, Lagv;->n()Lahh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahh;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 115
    :pswitch_6
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 119
    :pswitch_7
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahp;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 122
    :pswitch_8
    invoke-static {}, Lagv;->e()Lahf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahf;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 125
    :pswitch_9
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahp;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 135
    :pswitch_a
    invoke-static {}, Lagv;->m()Lahe;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahe;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 138
    :pswitch_b
    invoke-static {}, Lagv;->i()Lagx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lagx;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 141
    :pswitch_c
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahp;->a(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method
