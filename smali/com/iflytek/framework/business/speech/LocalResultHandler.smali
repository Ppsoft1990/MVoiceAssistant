.class final Lcom/iflytek/framework/business/speech/LocalResultHandler;
.super Ljava/lang/Object;
.source "LocalResultHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_LocalResultHandler"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRawResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "tempString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    const-string/jumbo v4, "\u3002"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 185
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 187
    .local v0, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 193
    .end local v0    # "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "tempString":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getContactAndSmsFilterResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Laau;
    .locals 3
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v2, "telephone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Lzx;

    .end local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-direct {v0}, Lzx;-><init>()V

    .line 168
    .restart local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/RecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v1

    check-cast v1, Laau;

    :goto_1
    return-object v1

    .line 162
    :cond_0
    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Laoo;

    .end local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-direct {v0}, Laoo;-><init>()V

    .restart local v0    # "filter":Lcom/iflytek/yd/speech/RecognizeFilter;
    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected localPreHandle(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p3, "localResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v3, 0x0

    .line 41
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 42
    :cond_0
    const-string/jumbo v4, "Business_LocalResultHandler"

    const-string/jumbo v5, "localPreHandle asrResult is empty"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    :goto_0
    return v3

    .line 47
    :cond_2
    :try_start_0
    iget-object v4, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v5, "telephone"

    if-eq v4, v5, :cond_3

    iget-object v4, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v5, "message"

    if-ne v4, v5, :cond_1

    .line 49
    :cond_3
    new-instance v2, Laau;

    invoke-direct {v2}, Laau;-><init>()V

    .line 50
    .local v2, "result":Laau;
    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/speech/LocalResultHandler;->getContactAndSmsFilterResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Laau;

    move-result-object v2

    .line 51
    invoke-static {p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    .line 53
    invoke-virtual {v2}, Laau;->c()Ljava/util/List;

    move-result-object v5

    .line 54
    invoke-virtual {v2}, Laau;->d()Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-virtual {v4, p1, v5, v6}, Lhe;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, "re":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 56
    invoke-direct {p0, p3}, Lcom/iflytek/framework/business/speech/LocalResultHandler;->getContactAndSmsFilterResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Laau;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Laau;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget v4, p3, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x1e

    if-le v4, v5, :cond_1

    .line 59
    const/4 v3, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "re":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v2    # "result":Laau;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_LocalResultHandler"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected transPreResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    const-string/jumbo v2, "Business_LocalResultHandler"

    const-string/jumbo v3, "transPreResult oldResult is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    .line 153
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "cacheResultFocus":Ljava/lang/String;
    move-object/from16 v10, p2

    .line 83
    .local v10, "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    move-object/from16 v15, p1

    .line 86
    .local v15, "tempContext":Landroid/content/Context;
    if-eqz v15, :cond_1

    .line 87
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Laay;->b(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-static {}, Labb;->k()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 89
    invoke-static/range {p2 .. p2}, Laay;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v14

    .line 90
    .local v14, "retryResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    invoke-virtual {v14, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V

    move-object v1, v14

    .line 91
    goto :goto_0

    .line 96
    .end local v14    # "retryResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getFocus()Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "resultFocus":Ljava/lang/String;
    if-eqz v13, :cond_2

    if-eqz v8, :cond_2

    const-string/jumbo v2, "telephone"

    .line 98
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "message"

    .line 99
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v12

    .line 102
    .local v12, "rawText":Ljava/lang/String;
    const-string/jumbo v2, "[0-9]+[\u3002]?"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 104
    .local v11, "pattern":Ljava/util/regex/Pattern;
    if-eqz v12, :cond_2

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    const-string/jumbo v5, "message"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .local v1, "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    .end local v11    # "pattern":Ljava/util/regex/Pattern;
    .end local v12    # "rawText":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 151
    .end local v13    # "resultFocus":Ljava/lang/String;
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v2, "Business_LocalResultHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const-string/jumbo v2, "Business_LocalResultHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 153
    goto/16 :goto_0

    .line 114
    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v13    # "resultFocus":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    if-eqz v2, :cond_8

    .line 116
    const-string/jumbo v2, "message"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/speech/InteractionScene;->sms_content:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v2, v3, :cond_3

    .line 118
    const-string/jumbo v2, "sms_content"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 120
    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 123
    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_3
    :try_start_4
    const-string/jumbo v2, "dialog"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 124
    const-string/jumbo v2, "telephone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "message"

    .line 125
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "contacts"

    .line 126
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    :cond_4
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v2, v3, :cond_5

    .line 128
    const-string/jumbo v2, "select_contact_name"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 137
    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :goto_2
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 130
    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_5
    :try_start_6
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_number:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v2, v3, :cond_6

    .line 131
    const-string/jumbo v2, "select_contact_number"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto :goto_2

    .line 133
    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_6
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/speech/InteractionScene;->select_sms_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v2, v3, :cond_9

    .line 134
    const-string/jumbo v2, "select_sms_send_confirm"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto :goto_2

    .line 140
    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_7
    const-string/jumbo v2, "schedule"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 141
    const-string/jumbo v2, "select_sehedule_time"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 150
    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v13    # "resultFocus":Ljava/lang/String;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :catch_1
    move-exception v9

    move-object v1, v10

    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_1

    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v13    # "resultFocus":Ljava/lang/String;
    :cond_8
    move-object v1, v10

    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .end local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_9
    move-object v1, v10

    .end local v10    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v1    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto :goto_2
.end method
