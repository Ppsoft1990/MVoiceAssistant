.class Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$2;
.super Ljava/lang/Object;
.source "MainSpeechPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$2;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 163
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$2;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v4}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$2;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v4}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e2

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const/4 v2, 0x1

    .line 164
    .local v2, "isUseByMethod":Z
    :goto_0
    if-nez v2, :cond_0

    .line 165
    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$2;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v4}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_0
    return-void

    .end local v2    # "isUseByMethod":Z
    :cond_1
    move v2, v3

    .line 163
    goto :goto_0
.end method
