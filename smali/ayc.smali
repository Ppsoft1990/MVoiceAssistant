.class public Layc;
.super Ljava/lang/Object;
.source "TranslateSpeechBusinessHelper.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Layc;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V
    .locals 3
    .param p1, "result"    # Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .prologue
    .line 123
    iget-object v1, p0, Layc;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Layc;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 128
    const-string/jumbo v1, "translate_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Layc;->a:Landroid/content/Context;

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "micMain"

    invoke-virtual {v1, v2}, Lxq;->k(Ljava/lang/String;)V

    .line 136
    :goto_1
    iget-object v1, p0, Layc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Layc;->a:Landroid/content/Context;

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "mic"

    invoke-virtual {v1, v2}, Lxq;->j(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 13
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v9, 0x1

    .line 42
    const-string/jumbo v10, "TranslateSpeechBusinessHelper"

    const-string/jumbo v11, "handleLastResult "

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v10, "translation"

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getFocus()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 55
    :cond_2
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v10

    const-string/jumbo v11, "translation"

    invoke-interface {v10, v11}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getResultFilter(Ljava/lang/String;)Lcom/iflytek/yd/speech/RecognizeFilter;

    move-result-object v5

    check-cast v5, Laxq;

    .line 56
    .local v5, "recognizeFilter":Laxq;
    invoke-virtual {v5, p1}, Laxq;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/TranslationFilterResult;

    .line 57
    .local v1, "filterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    const-string/jumbo v10, "TranslateSpeechBusinessHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleLastResult filterResult "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getOperation()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "operation":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTip()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "tip":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v10

    if-ne v10, v9, :cond_3

    move v0, v9

    .line 62
    .local v0, "IsTextSearchResult":Z
    :goto_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v10, v11}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    .line 65
    .local v2, "isSpeechDialogMode":Z
    const-string/jumbo v10, "launch"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 66
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Layc;->a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V

    goto :goto_0

    .line 61
    .end local v0    # "IsTextSearchResult":Z
    .end local v2    # "isSpeechDialogMode":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    .restart local v0    # "IsTextSearchResult":Z
    .restart local v2    # "isSpeechDialogMode":Z
    :cond_4
    const-string/jumbo v10, "exit"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 71
    const-string/jumbo v10, "switch"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 72
    const-string/jumbo v9, "[x1][k2]"

    invoke-static {v7, v9}, Lpz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTranslated()Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "translateStr":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getOriginal()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "originalStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 103
    new-instance v6, Lcom/iflytek/viafly/translate/entity/TranslateResult;

    invoke-direct {v6}, Lcom/iflytek/viafly/translate/entity/TranslateResult;-><init>()V

    .line 104
    .local v6, "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setOriginal(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setTranslated(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTargetLg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setTargetLg(Ljava/lang/String;)V

    .line 107
    iget-object v10, p0, Layc;->a:Landroid/content/Context;

    invoke-static {v10}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v10

    const-string/jumbo v11, "N_MIC_TRANS"

    invoke-virtual {v10, v11}, Lalq;->a(Ljava/lang/String;)V

    .line 108
    iget-object v10, p0, Layc;->a:Landroid/content/Context;

    invoke-static {v10}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v10

    const-string/jumbo v11, "MIC_TRANS"

    invoke-virtual {v10, v11}, Lalq;->a(Ljava/lang/String;)V

    .line 110
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 111
    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setNeedBrocast(Z)V

    .line 114
    :cond_6
    invoke-direct {p0, v6}, Layc;->a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V

    goto/16 :goto_0

    .line 116
    .end local v6    # "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    :cond_7
    const-string/jumbo v9, "TranslateSpeechBusinessHelper"

    const-string/jumbo v10, "handleLastResult, parse result is null"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
