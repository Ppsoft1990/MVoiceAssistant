.class public Lqh;
.super Ljava/lang/Object;
.source "HomeBrowserHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/browser/BrowserFrameworkContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lqh;->a:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/iflytek/framework/browser/BrowserFrameworkContainer;)V
    .locals 2
    .param p1, "browserFrameworkContainer"    # Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    .prologue
    .line 50
    monitor-enter p0

    if-nez p1, :cond_3

    .line 51
    :try_start_0
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_1
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 54
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lqh;->c:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_2
    :try_start_2
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    if-nez v0, :cond_4

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqh;->c:Ljava/util/List;

    .line 63
    :cond_4
    iget-object v0, p0, Lqh;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V
    .locals 2
    .param p1, "webView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .param p2, "webInfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .prologue
    .line 140
    const-string/jumbo v0, "BrowserFrameworkHelper"

    const-string/jumbo v1, "addWebViewForLocation "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    iput-object v0, p0, Lqh;->b:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    .line 142
    iget-object v0, p0, Lqh;->b:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    iget-object v1, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laod;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 150
    :cond_1
    iget-object v0, p0, Lqh;->b:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V
    .locals 3
    .param p1, "webInfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .prologue
    .line 154
    const-string/jumbo v1, "BrowserFrameworkHelper"

    const-string/jumbo v2, "addWebViewForLocation "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entry"

    const-string/jumbo v2, "addWebViewForLocation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v1, "webInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public a(Lcom/iflytek/viafly/browser/BrowserParams;)V
    .locals 3
    .param p1, "param"    # Lcom/iflytek/viafly/browser/BrowserParams;

    .prologue
    .line 163
    const-string/jumbo v1, "BrowserFrameworkHelper"

    const-string/jumbo v2, "openContentWebPage "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string/jumbo v1, "BrowserFrameworkHelper"

    const-string/jumbo v2, "openWebPageWithParam faile, param is null"

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entry"

    const-string/jumbo v2, "openWebPageWithParam"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string/jumbo v3, "BrowserFrameworkHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openChannelByFocus begin, focus is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, ""

    .line 113
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v3, "weather"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "BLC_ADDRESS_CONFIG010001"

    invoke-virtual {v3, v4}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string/jumbo v1, "\u5929\u6c14"

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string/jumbo v2, "http://yd.voicecloud.cn/llbx-wap/weather/index.html"

    .line 126
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    const-string/jumbo v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 119
    .restart local v1    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "news"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "BLC_ADDRESS_CONFIG010002"

    invoke-virtual {v3, v4}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string/jumbo v1, "\u65b0\u95fb"

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const-string/jumbo v2, "http://m.toutiao.com/"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BrowserFrameworkHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V
    .locals 3
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p3, "status"    # Z
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string/jumbo v1, "BrowserFrameworkHelper"

    const-string/jumbo v2, "openBusinessWebPage "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entry"

    const-string/jumbo v2, "openBusinessWebPage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string/jumbo v1, "viaResult"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v1, "BrowserFrameworkHelper"

    const-string/jumbo v2, "openContentWebPage "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "BrowserFrameworkHelper"

    const-string/jumbo v2, "openContentWebPage faile, url is null"

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Laod;->a()Laod;

    move-result-object v1

    invoke-virtual {v1, p2}, Laod;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entry"

    const-string/jumbo v2, "openContentWebPage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lqh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .param p1, "isConnect"    # Z

    .prologue
    .line 178
    const-string/jumbo v0, "BrowserFrameworkHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetConnectChange isConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 197
    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 198
    .local v0, "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    const-string/jumbo v2, "window.clearInputFocus()"

    invoke-virtual {v0, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 201
    .end local v0    # "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 187
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->b(Z)Z

    .line 190
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->i()V

    .line 208
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->j()V

    .line 214
    :cond_0
    return-void
.end method
