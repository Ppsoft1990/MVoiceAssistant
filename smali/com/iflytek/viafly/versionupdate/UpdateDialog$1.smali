.class Lcom/iflytek/viafly/versionupdate/UpdateDialog$1;
.super Landroid/os/Handler;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/versionupdate/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/UpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/UpdateDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "BaseUpdateDialog"

    const-string/jumbo v1, "dispatchMessage finish flag is true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 108
    :sswitch_0
    const-string/jumbo v0, "BaseUpdateDialog"

    const-string/jumbo v1, "MSG_BLC_RESULT"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 112
    :sswitch_1
    const-string/jumbo v0, "BaseUpdateDialog"

    const-string/jumbo v1, "MSG_CHECK_DOWNLOAD_ERROR"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$1;->a:Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->b(I)V

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4c4 -> :sswitch_1
    .end sparse-switch
.end method
