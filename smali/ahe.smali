.class public Lahe;
.super Laht;
.source "HomeLanguageHelper.java"


# instance fields
.field private a:I

.field private c:Z

.field private d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 1
    .param p1, "homeContext"    # Lahu;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 24
    iput v0, p0, Lahe;->a:I

    .line 26
    iput-boolean v0, p0, Lahe;->c:Z

    .line 31
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v0, p0, Lahe;->d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {p0}, Lahe;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahe;->d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 87
    iget-object v0, p0, Lahe;->d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 88
    iget-object v0, p0, Lahe;->d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const-string/jumbo v1, "\u5f53\u524d\u8bed\u8a00\u662f\u7ca4\u8bed\uff0c\u6682\u4e0d\u652f\u6301\u8fdb\u5165\u8be5\u9891\u9053\uff0c\u8bf7\u5207\u6362\u6210\u666e\u901a\u8bdd\u540e\u518d\u5c1d\u8bd5\u3002"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 89
    iget-object v0, p0, Lahe;->d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const/4 v1, 0x1

    const-string/jumbo v2, "\u77e5\u9053\u4e86"

    sget-object v3, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setSingleButton(ZLjava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 91
    :cond_0
    iget-object v0, p0, Lahe;->d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lahe;->d:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v5, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-super {p0, p1}, Laht;->a(Landroid/os/Message;)V

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 47
    :pswitch_0
    invoke-direct {p0}, Lahe;->h()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p0}, Lahe;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lahe;->h()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lahe;->d(Z)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public c(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 57
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lahe;->a:I

    .line 58
    invoke-super {p0, p1}, Laht;->c(Z)Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0
    .param p1, "isNeedShowYueyuModeDialog"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lahe;->c:Z

    .line 79
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lahe;->c:Z

    return v0
.end method
