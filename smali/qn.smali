.class public Lqn;
.super Lqj;
.source "WebDetailPageBusinessAdatper.java"


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V
    .locals 0
    .param p1, "lxWebView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lqj;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lqj;->a()V

    .line 31
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lqj;->a(IILandroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lqj;->a(Landroid/webkit/WebView;I)V

    .line 117
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lqj;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lqj;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isEventCallBackForJS"    # Z

    .prologue
    .line 25
    invoke-super {p0, p1}, Lqj;->a(Z)V

    .line 26
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lqj;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lqj;->b()V

    .line 36
    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lqj;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isLongPress"    # Z

    .prologue
    .line 106
    invoke-super {p0, p1}, Lqj;->b(Z)V

    .line 107
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lqj;->c()V

    .line 41
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lqj;->d()V

    .line 46
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lqj;->e()V

    .line 51
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lqj;->f()V

    .line 56
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lqj;->g()V

    .line 61
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lqj;->h()V

    .line 67
    iget-boolean v0, p0, Lqn;->g:Z

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lqn;->c()V

    .line 71
    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lqj;->i()V

    .line 76
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lqj;->j()V

    .line 81
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "WebDetailPageBusinessAdatper"

    const-string/jumbo v1, "------>> onPlayButtonClick begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lqn;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b()V

    .line 92
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lqj;->l()V

    .line 97
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lqj;->m()V

    .line 138
    iget-object v0, p0, Lqn;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a_()V

    .line 139
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lqj;->n()V

    .line 144
    return-void
.end method

.method public o()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lqj;->o()V

    .line 149
    return-void
.end method
