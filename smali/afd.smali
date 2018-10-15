.class public Lafd;
.super Ladr;
.source "DialogResultHandler.java"


# instance fields
.field private d:Lafb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ladr;-><init>()V

    return-void
.end method

.method private a(Lafb;Z)V
    .locals 7
    .param p1, "result"    # Lafb;
    .param p2, "isTextSearchResult"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    const-string/jumbo v5, "DialogResultHandler"

    const-string/jumbo v6, "handleView"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p1}, Lafb;->b()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "topic":Ljava/lang/String;
    const-string/jumbo v5, "\u7b11\u8bdd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    new-instance v1, Laff;

    invoke-virtual {p1}, Lafb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lafb;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Laff;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v1, "jokeMessage":Laff;
    invoke-virtual {p1}, Lafb;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Laff;->c:Ljava/lang/String;

    .line 144
    if-nez p2, :cond_0

    :goto_0
    iput-boolean v3, v1, Laff;->b:Z

    .line 145
    new-instance v3, Lafd$2;

    invoke-direct {v3, p0, p1}, Lafd$2;-><init>(Lafd;Lafb;)V

    invoke-virtual {v1, v3}, Laff;->a(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {p0, v1}, Lafd;->a(Laee;)V

    .line 169
    .end local v1    # "jokeMessage":Laff;
    :goto_1
    return-void

    .restart local v1    # "jokeMessage":Laff;
    :cond_0
    move v3, v4

    .line 144
    goto :goto_0

    .line 153
    .end local v1    # "jokeMessage":Laff;
    :cond_1
    const-string/jumbo v5, "va_cqa_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    new-instance v0, Laey;

    invoke-virtual {p1}, Lafb;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u6765\u81ea\u4e92\u8054\u7f51"

    invoke-direct {v0, v5, v6}, Laey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v0, "baikeMessage":Laey;
    invoke-virtual {p1}, Lafb;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Laey;->c:Ljava/lang/String;

    .line 157
    if-nez p2, :cond_2

    :goto_2
    iput-boolean v3, v0, Laey;->b:Z

    .line 159
    invoke-virtual {p0, v0}, Lafd;->a(Laee;)V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 157
    goto :goto_2

    .line 162
    .end local v0    # "baikeMessage":Laey;
    :cond_3
    invoke-virtual {p1}, Lafb;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 163
    invoke-virtual {p1}, Lafb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lafb;->c()Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {p0, v5, v6, v3}, Lafd;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_3

    .line 166
    :cond_5
    invoke-virtual {p1}, Lafb;->a()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_6

    :goto_4
    invoke-virtual {p0, v5, v3}, Lafd;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_4
.end method

.method static synthetic a(Lafd;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lafd;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lafd;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lafd;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lafd;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p5}, Lafd;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Ladr;->a()V

    .line 28
    return-void
.end method

.method protected b()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lafc;

    invoke-direct {v0}, Lafc;-><init>()V

    return-object v0
.end method

.method public c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 23
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 32
    invoke-super/range {p0 .. p2}, Ladr;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 34
    const-string/jumbo v2, "DialogResultHandler"

    const-string/jumbo v7, "onSuccess"

    invoke-static {v2, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v5

    .local v5, "mRawText":Ljava/lang/String;
    move-object/from16 v2, p2

    .line 38
    check-cast v2, Lafb;

    move-object/from16 v0, p0

    iput-object v2, v0, Lafd;->d:Lafb;

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lafd;->d:Lafb;

    invoke-virtual {v2}, Lafb;->b()Ljava/lang/String;

    move-result-object v22

    .line 41
    .local v22, "topic":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lafd;->d:Lafb;

    invoke-virtual {v2}, Lafb;->e()Ljava/lang/String;

    move-result-object v11

    .line 42
    .local v11, "pageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lafd;->d:Lafb;

    invoke-virtual {v2}, Lafb;->getSpeechText()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "speechText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    const/4 v3, 0x1

    .line 46
    .local v3, "isTextSearchModde":Z
    :goto_0
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "unknown"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    const-string/jumbo v6, ""

    .line 50
    .local v6, "searchUrl":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 51
    move-object v6, v11

    .line 57
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "\u4e3a\u60a8\u627e\u5230\u4e0b\u9762\u7684\u7ed3\u679c"

    .line 59
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lafd;->d:Lafb;

    invoke-virtual {v2}, Lafb;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lafd;->b(Ljava/lang/String;Z)V

    .line 61
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lafd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lafd;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    .end local v6    # "searchUrl":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 43
    .end local v3    # "isTextSearchModde":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 53
    .restart local v3    # "isTextSearchModde":Z
    .restart local v6    # "searchUrl":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, ""

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lbbt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 72
    .end local v6    # "searchUrl":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "errorword_guide"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 75
    const-string/jumbo v2, "DialogResultHandler"

    const-string/jumbo v7, "open errorword_guide"

    invoke-static {v2, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string/jumbo v9, ""

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move v8, v3

    move-object v10, v5

    invoke-virtual/range {v7 .. v12}, Lafd;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 84
    :cond_6
    const-string/jumbo v2, "DialogResultHandler"

    const-string/jumbo v7, "normal process"

    invoke-static {v2, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lafd;->d:Lafb;

    invoke-virtual {v2}, Lafb;->a()Ljava/lang/String;

    move-result-object v19

    .line 87
    .local v19, "answerText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lafd;->d:Lafb;

    invoke-virtual {v2}, Lafb;->d()Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "picUrl":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 93
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v4, "\u4e3a\u60a8\u627e\u5230\u4e0b\u9762\u7684\u7ed3\u679c"

    .line 95
    :cond_7
    const/16 v20, 0x1

    .line 97
    .local v20, "mIsVoiceResult":Z
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "chat_JsonSex"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-le v2, v7, :cond_8

    .line 98
    const/16 v20, 0x0

    .line 101
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lafd;->b(Ljava/lang/String;Z)V

    .line 103
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lafd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_9
    move-object v15, v4

    .line 111
    .local v15, "mSpeechText":Ljava/lang/String;
    move/from16 v18, v20

    .line 113
    .local v18, "isVoiceResult":Z
    new-instance v12, Lafd$1;

    move-object/from16 v13, p0

    move v14, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v18}, Lafd$1;-><init>(Lafd;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v8, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v9}, Lafd;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 125
    .end local v15    # "mSpeechText":Ljava/lang/String;
    .end local v18    # "isVoiceResult":Z
    .end local v20    # "mIsVoiceResult":Z
    :cond_a
    const-string/jumbo v2, "DialogResultHandler"

    const-string/jumbo v7, "simple answer biz"

    invoke-static {v2, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lafd;->d:Lafb;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lafd;->a(Lafb;Z)V

    goto/16 :goto_2
.end method
