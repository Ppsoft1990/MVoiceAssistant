.class Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;
.super Ljava/lang/Object;
.source "NewsDetailPageBusinessAdapter.java"

# interfaces
.implements Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsPlayBegin()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->playing:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    invoke-static {v0, v1}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;)Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .line 150
    return-void
.end method

.method public onTtsPlayComplete(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 154
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    sget-object v3, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->stop:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    invoke-static {v2, v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;)Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .line 155
    if-nez p1, :cond_2

    .line 156
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->k(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)I

    .line 157
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->e(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->l(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->m(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 176
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->b(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;I)I

    goto :goto_0

    .line 166
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->n(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->o(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 168
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2$1;-><init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onTtsPlayInterrupt()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->stop:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    invoke-static {v0, v1}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;)Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .line 181
    return-void
.end method

.method public onTtsPlayPause()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->pause:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    invoke-static {v0, v1}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;)Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .line 186
    return-void
.end method

.method public onTtsPlayProgress(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onTtsPlayResume()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->playing:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    invoke-static {v0, v1}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;)Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .line 191
    return-void
.end method
