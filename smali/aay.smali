.class public Laay;
.super Ljava/lang/Object;
.source "DialResultUtil.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Laay;->a:I

    return-void
.end method

.method public static a(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 7
    .param p0, "originalResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    .line 406
    :cond_0
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    iget v3, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    .line 408
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v0, "newRecognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "handleHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;>;"
    const v1, 0x7f0c037e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->confirm:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const v1, 0x7f0c0364

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->confirm:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const v1, 0x7f0c0365

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->confirm:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const v1, 0x7f0c0362

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->cancel:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-object v0
.end method

.method private static a(Landroid/content/Context;Laau;Lcom/iflytek/yd/speech/ViaAsrResult;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filterResult"    # Laau;
    .param p2, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laau;",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "contactSets":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-static {p0, p1}, Laay;->a(Landroid/content/Context;Laau;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-static {p0, p1}, Lazk;->a(Landroid/content/Context;Laau;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v1

    .line 236
    .local v1, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v1    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :goto_0
    return-object v0

    .line 239
    :cond_0
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v2

    .line 240
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v3

    .line 241
    invoke-virtual {p1}, Laau;->d()Ljava/util/List;

    move-result-object v4

    .line 239
    invoke-virtual {v2, p0, v3, v4}, Lhe;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 0
    .param p0, "simpleRetryCount"    # I

    .prologue
    .line 581
    sput p0, Laay;->a:I

    .line 582
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Lcom/iflytek/framework/business/speech/InteractionScene;[Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/util/List;)V
    .locals 0
    .param p0, "focus"    # Ljava/lang/String;
    .param p2, "intentType"    # Lcom/iflytek/framework/business/speech/InteractionScene;
    .param p3, "grammars"    # [Ljava/lang/String;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "retryCount"    # I
    .param p6, "retryContent"    # Ljava/lang/String;
    .param p7, "smsContent"    # Ljava/lang/String;
    .param p8, "speechIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;",
            "Lcom/iflytek/framework/business/speech/InteractionScene;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "contactSets":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .local p9, "showContentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Labb;->a(Ljava/util/List;)V

    .line 119
    invoke-static {p3}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setGrammar([Ljava/lang/String;)V

    .line 120
    invoke-static {p2}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 122
    invoke-static {p4}, Labb;->a(Ljava/lang/Object;)V

    .line 123
    invoke-static {p5}, Labb;->b(I)V

    .line 124
    invoke-static {p8}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setSpeechIntent(Landroid/content/Intent;)V

    .line 125
    invoke-static {p0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 126
    invoke-static {p7}, Labb;->b(Ljava/lang/String;)V

    .line 127
    invoke-static {p6}, Labb;->c(Ljava/lang/String;)V

    .line 128
    invoke-static {p9}, Labb;->b(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method public static a(Laau;)Z
    .locals 3
    .param p0, "result"    # Laau;

    .prologue
    const/4 v1, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "operation":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v2, "search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "sms"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Laau;->c()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {p0}, Laau;->d()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 55
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Laau;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Laau;

    .prologue
    .line 104
    invoke-static {p0, p1}, Lazk;->a(Landroid/content/Context;Laau;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v3, 0x0

    .line 200
    if-eqz p1, :cond_0

    .line 201
    new-instance v2, Laau;

    invoke-direct {v2}, Laau;-><init>()V

    .line 202
    .local v2, "result":Laau;
    const/4 v0, 0x0

    .line 203
    .local v0, "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v5, "telephone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    new-instance v0, Lzx;

    .end local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-direct {v0}, Lzx;-><init>()V

    .line 212
    .restart local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/RecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v2

    .end local v2    # "result":Laau;
    check-cast v2, Laau;

    .line 213
    .restart local v2    # "result":Laau;
    if-nez v2, :cond_3

    .line 222
    .end local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    .end local v2    # "result":Laau;
    :cond_0
    :goto_1
    return v3

    .line 205
    .restart local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    .restart local v2    # "result":Laau;
    :cond_1
    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    new-instance v0, Laoo;

    .end local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-direct {v0}, Laoo;-><init>()V

    .restart local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    goto :goto_0

    .line 207
    :cond_2
    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    new-instance v0, Laav;

    .end local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-direct {v0}, Laav;-><init>()V

    .restart local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    goto :goto_0

    .line 216
    :cond_3
    invoke-static {p0, v2, p1}, Laay;->a(Landroid/content/Context;Laau;Lcom/iflytek/yd/speech/ViaAsrResult;)Ljava/util/List;

    move-result-object v1

    .line 218
    .local v1, "queryResultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 219
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static b(Laau;)Z
    .locals 2
    .param p0, "result"    # Laau;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "create"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p0}, Labc;->a(Laau;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v0, 0x0

    .line 292
    if-nez p1, :cond_0

    .line 321
    :goto_0
    return v0

    .line 295
    :cond_0
    const-string/jumbo v1, "telephone"

    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "message"

    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "contacts"

    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 298
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-eq v1, v2, :cond_2

    .line 299
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_number:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v1, v2, :cond_6

    .line 300
    :cond_2
    invoke-static {p0, p1}, Laay;->a(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 301
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6253\u7535\u8bdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u53d1\u77ed\u4fe1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    :cond_3
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 306
    invoke-static {v0}, Labb;->b(I)V

    goto :goto_0

    .line 309
    :cond_4
    const-string/jumbo v1, "contacts"

    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    const-string/jumbo v2, "<operation>create</operation>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 314
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 320
    :cond_6
    invoke-static {v0}, Labb;->b(I)V

    goto :goto_0
.end method
