.class Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;
.super Landroid/os/Handler;
.source "ResUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

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

    .line 175
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "dispatchMessage activity onStop"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 181
    :sswitch_0
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "MSG_BLC_RESULT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 185
    :sswitch_1
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "MSG_HAS_RESOURCE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 187
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V

    goto :goto_0

    .line 191
    :sswitch_2
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "MSG_DOWN_START"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->DOWNLOAD_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 193
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V

    goto :goto_0

    .line 196
    :sswitch_3
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "MSG_UNZIP_RESULT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 198
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Z)V

    .line 200
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->d(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CN_SMS_INSTALL_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Z)V

    goto :goto_0

    .line 209
    :sswitch_4
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "MSG_INSTALL_COMPLETE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 211
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Z)V

    goto/16 :goto_0

    .line 214
    :sswitch_5
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "MSG_INSTALL_FAILURE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 216
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v1, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Z)V

    goto/16 :goto_0

    .line 219
    :sswitch_6
    const-string/jumbo v1, "BaseUpdateDialog"

    const-string/jumbo v2, "MSG_CHECK_DOWNLOAD_ERROR"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 221
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b(I)V

    goto/16 :goto_0

    .line 179
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
