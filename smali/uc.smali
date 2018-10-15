.class public Luc;
.super Landroid/os/Handler;
.source "AppDownloadStateListener.java"

# interfaces
.implements Lno$c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    iput-object p1, p0, Luc;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private a(II)V
    .locals 3
    .param p1, "textId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Luc;->a:Landroid/content/Context;

    iget-object v2, p0, Luc;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AppDownloadStateListener"

    const-string/jumbo v2, "showToast()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Luc;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Luc;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string/jumbo v1, "AppDownloadStateListener"

    const-string/jumbo v2, "downloadStatusChanged"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.pendding"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Luc;->sendEmptyMessage(I)Z

    .line 43
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    const v0, 0x7f0c0004

    invoke-direct {p0, v0, v2}, Luc;->a(II)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xc3c09

    if-ne v0, v1, :cond_1

    .line 64
    const v0, 0x7f0c012c

    invoke-direct {p0, v0, v2}, Luc;->a(II)V

    goto :goto_0

    .line 65
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xc3c0a

    if-ne v0, v1, :cond_2

    .line 66
    const v0, 0x7f0c0308

    invoke-direct {p0, v0, v2}, Luc;->a(II)V

    goto :goto_0

    .line 67
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_3

    .line 68
    const v0, 0x7f0c012a

    invoke-direct {p0, v0, v2}, Luc;->a(II)V

    goto :goto_0

    .line 69
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x385

    if-ne v0, v1, :cond_4

    .line 70
    const v0, 0x7f0c00df

    invoke-direct {p0, v0, v2}, Luc;->a(II)V

    goto :goto_0

    .line 71
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x38b

    if-ne v0, v1, :cond_0

    .line 72
    const v0, 0x7f0c00af

    invoke-direct {p0, v0, v2}, Luc;->a(II)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 53
    return-void
.end method
