.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;
.super Landroid/os/Handler;
.source "ResUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->d(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "dispatchMessage activity onStop"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 145
    :sswitch_0
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "MSG_BLC_RESULT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;IILjava/lang/Object;)V

    goto :goto_0

    .line 149
    :sswitch_1
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "MSG_HAS_RESOURCE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 151
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->e(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    goto :goto_0

    .line 154
    :sswitch_2
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "MSG_DOWN_START"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->DOWNLOAD_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 156
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    goto :goto_0

    .line 159
    :sswitch_3
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "MSG_UNZIP_RESULT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 161
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Z)V

    .line 163
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CN_SMS_INSTALL_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_YUEYU_RES_UNZIP_SUCCSEE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 173
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Z)V

    goto/16 :goto_0

    .line 177
    :sswitch_4
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "MSG_INSTALL_COMPLETE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 179
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Z)V

    goto/16 :goto_0

    .line 182
    :sswitch_5
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "MSG_INSTALL_FAILURE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 184
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Z)V

    goto/16 :goto_0

    .line 187
    :sswitch_6
    const-string/jumbo v1, "ResUpdateManager"

    const-string/jumbo v2, "MSG_CHECK_DOWNLOAD_ERROR"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 189
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;I)V

    goto/16 :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x4c4 -> :sswitch_6
    .end sparse-switch
.end method
