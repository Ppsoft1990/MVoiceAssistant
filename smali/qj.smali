.class public Lqj;
.super Ljava/lang/Object;
.source "DefaultBrowserEventHandler.java"

# interfaces
.implements Lqk;


# instance fields
.field public a:Landroid/content/Context;

.field protected b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

.field protected e:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

.field protected f:Lcom/iflytek/yd/speech/ISpeechHandler;

.field protected g:Z

.field protected h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V
    .locals 2
    .param p1, "lxWebView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 50
    invoke-virtual {p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lqj;->a:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getLxBaseComponents()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lqj;->c:Ljava/util/HashMap;

    .line 53
    iget-object v0, p0, Lqj;->c:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iput-object v0, p0, Lqj;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 54
    iget-object v0, p0, Lqj;->c:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    iput-object v0, p0, Lqj;->e:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    .line 55
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    iput-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 60
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lqj;->h:Landroid/os/Handler;

    .line 61
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lqj;->c()V

    .line 70
    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 73
    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 156
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "------>> onActivityResult begin, requestCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,resultCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "titleName":Ljava/lang/String;
    const-string/jumbo v1, "DefaultBrowserEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "------>> onProgressChanged begin, proggress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,title is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "------>> onReceivedError begin, errorCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,description is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,failingUrl is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "titleName":Ljava/lang/String;
    const-string/jumbo v1, "DefaultBrowserEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "------>> onPageStarted begin, url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,title is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isEventCallBackForJS"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lqj;->g:Z

    .line 65
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 309
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "------>> onKeyDown begin, keyCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lqj;->d()V

    .line 77
    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 80
    :cond_0
    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "titleName":Ljava/lang/String;
    iget-boolean v1, p0, Lqj;->g:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v2, "onPageFinished()"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 216
    :cond_0
    const-string/jumbo v1, "DefaultBrowserEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "------>> onPageFinished begin, url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,title is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "isLongPress"    # Z

    .prologue
    .line 192
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onHomeKeyClick begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onHomeKeyClick()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lqj;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lqj;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stopAll()V

    .line 86
    :cond_0
    iget-object v0, p0, Lqj;->e:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lqj;->e:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->stopPlayMedia()V

    .line 89
    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 3
    .param p1, "forRedirect"    # Z

    .prologue
    .line 238
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "------>> onPagePause begin, forRedirect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-nez p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lqj;->b()V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lqj;->f()V

    .line 244
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onPagePause()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 247
    :cond_1
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lqj;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lqj;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stop()V

    .line 94
    :cond_0
    iget-object v0, p0, Lqj;->e:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lqj;->e:Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->stopPlayMedia()V

    .line 97
    :cond_1
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->onResume()V

    .line 104
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->resumeTimers()V

    .line 105
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->onPause()V

    .line 109
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onActivityResume begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lqj;->e()V

    .line 116
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onActivityResume()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onActivityPause begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lqj;->f()V

    .line 126
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onActivityPause()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onActivityStop begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lqj;->f()V

    .line 137
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->freeMemory()V

    .line 139
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onActivityStop()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 146
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onActivityDestroy begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lqj;->a()V

    .line 149
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onActivityDestroy()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onPlayButtonClick begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onPlayButtonClick()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onRefreshButtonClick begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lqj;->a()V

    .line 173
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onRefreshButtonClick()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 251
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onPageResume begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Lqj;->e()V

    .line 254
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onPageResume()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 262
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onPageDestroy begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lqj;->a()V

    .line 265
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onPageDestroy()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lqj;->f()V

    .line 269
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->f()V

    .line 270
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->removeAllViews()V

    .line 273
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 292
    const-string/jumbo v0, "DefaultBrowserEventHandler"

    const-string/jumbo v1, "------>> onPageDestroyForRedirect begin"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lqj;->f:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 298
    :cond_0
    iget-boolean v0, p0, Lqj;->g:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onPageDestroy()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 301
    :cond_1
    invoke-virtual {p0}, Lqj;->f()V

    .line 302
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->f()V

    .line 303
    iget-object v0, p0, Lqj;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->removeAllViews()V

    .line 305
    return-void
.end method
