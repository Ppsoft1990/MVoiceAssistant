.class Lbam$5;
.super Landroid/os/Handler;
.source "VersionCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0
    .param p1, "this$0"    # Lbam;

    .prologue
    .line 142
    iput-object p1, p0, Lbam$5;->a:Lbam;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget-object v0, p0, Lbam$5;->a:Lbam;

    invoke-static {v0}, Lbam;->e(Lbam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "dispatchMessage finish flag is true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 151
    :sswitch_0
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "MSG_BLC_RESULT"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lbam$5;->a:Lbam;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lbam;->a(Lbam;IILjava/lang/Object;)V

    goto :goto_0

    .line 155
    :sswitch_1
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "MSG_CHECK_DOWNLOAD_ERROR"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lbam$5;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4c4 -> :sswitch_1
    .end sparse-switch
.end method
