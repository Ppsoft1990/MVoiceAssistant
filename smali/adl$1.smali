.class Ladl$1;
.super Landroid/os/Handler;
.source "SpecificBroadcastSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladl;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladl;


# direct methods
.method constructor <init>(Ladl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Ladl;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 169
    iput-object p1, p0, Ladl$1;->a:Ladl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x7f0c008d

    const v5, 0x7f0c008c

    const/4 v6, 0x1

    .line 172
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 174
    :sswitch_0
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_REFRESH_LIST"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-virtual {v3}, Ladl;->a()V

    goto :goto_0

    .line 178
    :sswitch_1
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_M_INSTALL_SPECIAL_SPEECH_PLUGIN"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v3, p0, Ladl$1;->a:Ladl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4}, Ladl;->a(Ladl;I)V

    goto :goto_0

    .line 182
    :sswitch_2
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_M_INSTALL_OFFLINE_SPEECH_PLUGIN"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v1, ""

    .line 184
    .local v1, "m_offline_tip":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 185
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    :goto_1
    iget-object v3, p0, Ladl$1;->a:Ladl;

    .line 190
    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->special_broadcast_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    iget-object v5, p0, Ladl$1;->a:Ladl;

    iget-object v5, v5, Ladl;->b:Larn;

    .line 189
    invoke-static {v3, v6, v1, v4, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;ILjava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Larn;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 196
    .end local v1    # "m_offline_tip":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_INSTALL_OFFLINE_SPEECH_PLUGIN"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "isNeedMPmCheck":Z
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    const/4 v0, 0x1

    .line 201
    :cond_2
    if-nez v0, :cond_4

    .line 202
    const-string/jumbo v2, ""

    .line 203
    .local v2, "tip":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_3

    .line 204
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    :goto_2
    iget-object v3, p0, Ladl$1;->a:Ladl;

    .line 209
    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->special_broadcast_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    iget-object v5, p0, Ladl$1;->a:Ladl;

    iget-object v5, v5, Ladl;->b:Larn;

    .line 208
    invoke-static {v3, v6, v2, v4, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;ILjava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Larn;)V

    goto/16 :goto_0

    .line 206
    :cond_3
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 214
    .end local v2    # "tip":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Ladl$1;->a:Ladl;

    const/16 v4, 0x7d1

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4, v5}, Ladl;->a(Ladl;II)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "isNeedMPmCheck":Z
    :sswitch_4
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_SHOW_TIP"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 231
    iget-object v4, p0, Ladl$1;->a:Ladl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ladl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :sswitch_5
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_BLC_RESULT"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Ladl$1;->a:Ladl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Ladl;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 239
    :sswitch_6
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_CHECK_DOWNLOAD_ERROR"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Ladl$1;->a:Ladl;

    iget-object v4, p0, Ladl$1;->a:Ladl;

    invoke-static {v4}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ladl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :sswitch_7
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_AUDITION"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Ladl$1;->a:Ladl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ladl;->f(I)V

    goto/16 :goto_0

    .line 247
    :sswitch_8
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_GET_NET_RES_INFO"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lno;->b(I)V

    .line 249
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ladl$1;->removeMessages(I)V

    goto/16 :goto_0

    .line 252
    :sswitch_9
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_START_AUDITION"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Ladl$1;->a:Ladl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ladl;->k(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Ladl$1;->a:Ladl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4}, Ladl;->b(Ladl;I)I

    .line 255
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->c(Ladl;)Ladn;

    move-result-object v4

    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->b(Ladl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v3

    iget-object v5, p0, Ladl$1;->a:Ladl;

    iget-object v6, p0, Ladl$1;->a:Ladl;

    invoke-virtual {v4, v3, v5, v6}, Ladn;->a(ILandroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->b(Ladl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Z)V

    .line 259
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ladl$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 264
    :sswitch_a
    const-string/jumbo v3, "SpecificBroadcastSettingFragment"

    const-string/jumbo v4, "MSG_START_AUDITION"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->c(Ladl;)Ladn;

    move-result-object v3

    invoke-virtual {v3}, Ladn;->c()V

    .line 266
    iget-object v3, p0, Ladl$1;->a:Ladl;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ladl;->b(Ladl;I)I

    goto/16 :goto_0

    .line 269
    :sswitch_b
    iget-object v3, p0, Ladl$1;->a:Ladl;

    invoke-static {v3}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0x4c4 -> :sswitch_6
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_1
    .end sparse-switch
.end method
