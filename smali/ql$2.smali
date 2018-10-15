.class Lql$2;
.super Ljava/lang/Object;
.source "NovelDetailPageBusinessAdapter.java"

# interfaces
.implements Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lql;


# direct methods
.method constructor <init>(Lql;)V
    .locals 0
    .param p1, "this$0"    # Lql;

    .prologue
    .line 195
    iput-object p1, p0, Lql$2;->a:Lql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsPlayBegin()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    const-string/jumbo v0, "NovelDetailPageBusinessAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTtsPlayBegin, index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lql$2;->a:Lql;

    invoke-static {v2}, Lql;->e(Lql;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {v0}, Lql;->f(Lql;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lof;->m:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    .line 205
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {v0}, Lql;->g(Lql;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lof;->n:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    .line 206
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {v0, v5}, Lql;->c(Lql;I)I

    .line 210
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOVEL_SETTING"

    invoke-virtual {v0, v1, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 212
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.FIRST_USE_NOVEL_SPEAK_MODE_OFFLINE"

    invoke-virtual {v0, v1, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {v0}, Lql;->h(Lql;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {v0}, Lql;->h(Lql;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.FIRST_USE_NOVEL_SPEAK_MODE_OFFLINE"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 224
    :cond_1
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lql;->a(Lql;J)J

    .line 225
    return-void
.end method

.method public onTtsPlayComplete(I)V
    .locals 8
    .param p1, "error"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 229
    const-string/jumbo v3, "NovelDetailPageBusinessAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTtsPlayComplete, error is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3, v6}, Lql;->c(Lql;I)I

    .line 231
    if-nez p1, :cond_3

    .line 232
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->i(Lql;)I

    .line 233
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->j(Lql;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->e(Lql;)I

    move-result v3

    iget-object v4, p0, Lql$2;->a:Lql;

    invoke-static {v4}, Lql;->j(Lql;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 234
    invoke-static {v7}, Lql;->d(Z)Z

    .line 235
    const-string/jumbo v3, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v4, "onTtsPlayComplete, set isNeedSpeakAuto true"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->k(Lql;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setNoHandleRedirect(Z)V

    .line 238
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->l(Lql;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v3

    const-string/jumbo v4, "onPageTo(1)"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3, v6}, Lql;->a(Lql;I)I

    .line 266
    :cond_0
    :goto_0
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->q(Lql;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxi;->a(Landroid/content/Context;)Lxi;

    move-result-object v3

    const-string/jumbo v4, "novel_speak_duration"

    iget-object v5, p0, Lql$2;->a:Lql;

    invoke-static {v5}, Lql;->p(Lql;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lxi;->a(Ljava/lang/String;J)V

    .line 267
    return-void

    .line 241
    :cond_1
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->c(Lql;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    iget-object v3, p0, Lql$2;->a:Lql;

    iget-object v4, p0, Lql$2;->a:Lql;

    invoke-static {v4}, Lql;->e(Lql;)I

    move-result v4

    invoke-static {v3, v4}, Lql;->b(Lql;I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->h(Lql;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 245
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->h(Lql;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 248
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3, v6}, Lql;->a(Lql;I)I

    goto :goto_0

    .line 253
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->m(Lql;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 254
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3}, Lql;->n(Lql;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 255
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lql$2$1;

    invoke-direct {v3, p0}, Lql$2$1;-><init>(Lql$2;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_4
    iget-object v3, p0, Lql$2;->a:Lql;

    invoke-static {v3, v6}, Lql;->a(Lql;I)I

    goto :goto_0
.end method

.method public onTtsPlayInterrupt()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lql$2;->a:Lql;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lql;->c(Lql;I)I

    .line 273
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {v0}, Lql;->r(Lql;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxi;->a(Landroid/content/Context;)Lxi;

    move-result-object v0

    const-string/jumbo v1, "novel_speak_duration"

    iget-object v2, p0, Lql$2;->a:Lql;

    invoke-static {v2}, Lql;->p(Lql;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lxi;->a(Ljava/lang/String;J)V

    .line 274
    return-void
.end method

.method public onTtsPlayPause()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lql$2;->a:Lql;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lql;->c(Lql;I)I

    .line 280
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {v0}, Lql;->s(Lql;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxi;->a(Landroid/content/Context;)Lxi;

    move-result-object v0

    const-string/jumbo v1, "novel_speak_duration"

    iget-object v2, p0, Lql$2;->a:Lql;

    invoke-static {v2}, Lql;->p(Lql;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lxi;->a(Ljava/lang/String;J)V

    .line 281
    return-void
.end method

.method public onTtsPlayProgress(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 198
    const-string/jumbo v0, "NovelDetailPageBusinessAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTtsPlayProgress, pos is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public onTtsPlayResume()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lql$2;->a:Lql;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lql;->c(Lql;I)I

    .line 287
    iget-object v0, p0, Lql$2;->a:Lql;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lql;->a(Lql;J)J

    .line 288
    return-void
.end method
