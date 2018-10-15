.class public Lack;
.super Lacj;
.source "ContactResultHandler.java"


# direct methods
.method public constructor <init>(Lacp;)V
    .locals 0
    .param p1, "pBusinessHandler"    # Lacp;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lacj;-><init>(Lacp;)V

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V
    .locals 6
    .param p1, "reason"    # Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v2

    invoke-interface {v2}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v0

    .line 256
    .local v0, "currentScenceData":Lacf;
    invoke-virtual {v0}, Lacf;->h()I

    move-result v1

    .line 257
    .local v1, "currentScenceState":I
    invoke-virtual {v0}, Lacf;->g()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "contacts"

    if-eq v2, v3, :cond_1

    .line 258
    const-string/jumbo v2, "ContactResultHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MethodName: cancel  info: cancel callback error with incorrect resultHandler data: [currentScence focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    invoke-virtual {v0}, Lacf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string/jumbo v2, "ContactResultHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MethodName: cancel data: [ reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " currentScenceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v2, "ContactResultHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancel : reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz p1, :cond_0

    sget-object v2, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancel_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    if-ne p1, v2, :cond_0

    .line 269
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v2

    invoke-interface {v2}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v2

    invoke-static {v2, v5}, Labw;->a(Lacp;Laau;)V

    .line 271
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v2

    invoke-interface {v2, v5}, Lacp;->cacheScenceData(Lacf;)V

    goto :goto_0
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;Lacf;Lacf;)V
    .locals 0
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "lastScenceData"    # Lacf;
    .param p3, "pNextOperationData"    # Lacf;

    .prologue
    .line 251
    return-void
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
    .locals 1
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pLastScenceData"    # Lacf;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacf;
    .locals 14
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pLastScenceData"    # Lacf;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    const/4 v8, 0x0

    .line 188
    :goto_0
    return-object v8

    .line 88
    :cond_1
    const-string/jumbo v11, "ContactResultHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "prepareData\uff1apAsrResult="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",pFilterResult="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 89
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 88
    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lack;->a()Landroid/content/Context;

    move-result-object v4

    .line 92
    .local v4, "context":Landroid/content/Context;
    if-nez p3, :cond_5

    const/4 v7, -0x1

    .line 94
    .local v7, "lastScenceType":I
    :goto_1
    const/4 v9, -0x1

    .line 95
    .local v9, "nextScenceType":I
    new-instance v8, Lach;

    invoke-direct {v8}, Lach;-><init>()V

    .line 98
    .local v8, "nextScenceData":Lach;
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getPromptMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 99
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lach;->a(Z)V

    .line 103
    :cond_2
    const/4 v11, -0x1

    if-eq v11, v7, :cond_3

    const/16 v11, 0x330

    if-ne v11, v7, :cond_c

    .line 105
    :cond_3
    invoke-static/range {p2 .. p2}, Laay;->b(Laau;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 107
    invoke-static/range {p2 .. p2}, Lacu;->a(Laau;)Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v2

    .line 108
    .local v2, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v8, v2}, Lach;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 109
    const/16 v9, 0x306

    .line 186
    .end local v2    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_4
    :goto_2
    invoke-virtual {v8, v9}, Lach;->b(I)V

    goto :goto_0

    .line 93
    .end local v7    # "lastScenceType":I
    .end local v8    # "nextScenceData":Lach;
    .end local v9    # "nextScenceType":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lacf;->h()I

    move-result v7

    goto :goto_1

    .line 112
    .restart local v7    # "lastScenceType":I
    .restart local v8    # "nextScenceData":Lach;
    .restart local v9    # "nextScenceType":I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_7

    invoke-virtual/range {p2 .. p2}, Laau;->d()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_7

    .line 113
    const/16 v9, 0x330

    goto :goto_2

    .line 116
    :cond_7
    iget v11, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    .line 117
    move-object/from16 v0, p2

    invoke-static {v4, v11, v0}, Lacu;->a(Landroid/content/Context;ILaau;)Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-static {v4, v3}, Lacu;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 122
    invoke-static {v3}, Lacu;->a(Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 123
    const/16 v9, 0x303

    .line 124
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v8, v11}, Lach;->a(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    goto :goto_2

    .line 125
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_9

    .line 126
    const/16 v9, 0x310

    .line 127
    invoke-virtual {v8, v3}, Lach;->a(Ljava/util/List;)V

    .line 129
    invoke-static {v4, v3}, Lacv;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    .line 131
    .local v1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    invoke-static {v4, v1}, Lacv;->a(Landroid/content/Context;Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "grammars":[Ljava/lang/String;
    invoke-virtual {v8, v1}, Lach;->a(Ljava/util/HashMap;)V

    .line 134
    invoke-virtual {v8}, Lach;->g()Ljava/lang/String;

    move-result-object v11

    .line 133
    invoke-static {v11, v5}, Lacv;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v8, v11}, Lach;->a(Landroid/content/Intent;)V

    goto :goto_2

    .line 136
    .end local v1    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    .end local v5    # "grammars":[Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_b

    .line 137
    :cond_a
    const-string/jumbo v11, "ContactResultHandler"

    const-string/jumbo v12, "prepareData\uff1apFilterResult.getNameList() is null"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    :cond_b
    const/16 v9, 0x305

    .line 141
    invoke-virtual/range {p2 .. p2}, Laau;->c()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v4, v11}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 140
    invoke-virtual {v8, v11}, Lach;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 147
    .end local v3    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    :cond_c
    const/16 v11, 0x310

    if-ne v11, v7, :cond_10

    .line 148
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lack;->a()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0c0362

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 149
    const/16 v9, 0x304

    goto/16 :goto_2

    .line 151
    :cond_d
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    instance-of v11, v0, Lach;

    if-eqz v11, :cond_4

    move-object/from16 v6, p3

    .line 152
    check-cast v6, Lach;

    .line 153
    .local v6, "lastScenceData":Lach;
    invoke-virtual {v6}, Lach;->a()Ljava/util/List;

    move-result-object v3

    .line 154
    .restart local v3    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-virtual {v6}, Lach;->c()Ljava/util/HashMap;

    move-result-object v1

    .line 156
    .restart local v1    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    move-object/from16 v0, p2

    invoke-static {v3, v0, v1}, Lacv;->a(Ljava/util/List;Laau;Ljava/util/HashMap;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v10

    .line 158
    .local v10, "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v10, :cond_e

    .line 159
    const/16 v9, 0x303

    .line 160
    invoke-virtual {v8, v10}, Lach;->a(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    goto/16 :goto_2

    .line 162
    :cond_e
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, p1, v0, v11}, Lack;->b(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacf;

    move-result-object v8

    .end local v8    # "nextScenceData":Lach;
    check-cast v8, Lach;

    .line 163
    .restart local v8    # "nextScenceData":Lach;
    const/4 v11, -0x1

    invoke-virtual {v8}, Lach;->h()I

    move-result v12

    if-ne v11, v12, :cond_f

    .line 165
    move-object v8, v6

    .line 166
    invoke-virtual {v6}, Lach;->k()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Lach;->c(I)V

    .line 168
    :cond_f
    invoke-virtual {v8}, Lach;->h()I

    move-result v9

    goto/16 :goto_2

    .line 172
    .end local v1    # "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    .end local v3    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v6    # "lastScenceData":Lach;
    .end local v10    # "targetContact":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_10
    const/16 v11, 0x303

    if-ne v11, v7, :cond_11

    .line 173
    const/4 v9, -0x1

    .line 174
    const-string/jumbo v11, "ContactResultHandler"

    const-string/jumbo v12, "prepareData: lastScenceType is SCENCE_SHOW"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 176
    :cond_11
    const/16 v11, 0x304

    if-ne v11, v7, :cond_12

    .line 177
    const/4 v9, -0x1

    .line 178
    const-string/jumbo v11, "ContactResultHandler"

    const-string/jumbo v12, "prepareData: lastScenceType is SCENCE_END"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 180
    :cond_12
    const/16 v11, 0x306

    if-ne v11, v7, :cond_4

    .line 181
    const/4 v9, -0x1

    .line 182
    const-string/jumbo v11, "ContactResultHandler"

    const-string/jumbo v12, "prepareData: lastScenceType is SCENCE_CREATE"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected c(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
    .locals 8
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pNextOperationData"    # Lacf;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 195
    move-object v2, p3

    check-cast v2, Lach;

    .line 196
    .local v2, "nextScenceData":Lach;
    invoke-virtual {p3}, Lacf;->h()I

    move-result v3

    .line 198
    .local v3, "nextScenceType":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v4

    .line 202
    :cond_1
    invoke-virtual {v2}, Lach;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v6

    .line 205
    invoke-virtual {p2}, Laau;->getRawText()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {v6, v7}, Lacb;->a(Lacp;Ljava/lang/String;)V

    .line 208
    :cond_2
    const/16 v6, 0x330

    if-ne v6, v3, :cond_3

    .line 209
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v6

    invoke-static {p1}, Lack;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v7

    invoke-static {v6, p2, v7, v4}, Labw;->a(Lacp;Laau;ZZ)V

    .line 210
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v6

    invoke-static {v4, v6}, Labw;->a(Lacp;B)V

    move v4, v5

    .line 211
    goto :goto_0

    .line 213
    :cond_3
    const/16 v6, 0x310

    if-ne v6, v3, :cond_4

    .line 214
    invoke-virtual {p0, v2, p2}, Lack;->a(Lace;Laau;)V

    move v4, v5

    .line 216
    goto :goto_0

    .line 218
    :cond_4
    const/16 v6, 0x303

    if-ne v6, v3, :cond_5

    .line 219
    invoke-virtual {v2}, Lach;->e()Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v1

    .line 220
    .local v1, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v4

    invoke-static {v4, p2, v1}, Labw;->a(Lacp;Laau;Lcom/iflytek/base/contacts/entities/ContactSet;)V

    move v4, v5

    .line 221
    goto :goto_0

    .line 223
    .end local v1    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_5
    const/16 v6, 0x306

    if-ne v6, v3, :cond_7

    .line 224
    invoke-virtual {v2}, Lach;->m()Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v0

    .line 225
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    if-eqz v0, :cond_6

    .line 227
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v4

    .line 226
    invoke-static {v4, p2, v0}, Labw;->a(Lacp;Laau;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    move v4, v5

    .line 230
    goto :goto_0

    .line 232
    :cond_6
    const-string/jumbo v5, "ContactResultHandler"

    const-string/jumbo v6, "contactItem is null, it can\'t happen"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_7
    const/16 v6, 0x305

    if-ne v6, v3, :cond_8

    .line 236
    invoke-virtual {v2}, Lach;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3, p2, v4}, Lack;->a(Lacf;Laau;Ljava/lang/String;)V

    move v4, v5

    .line 237
    goto :goto_0

    .line 239
    :cond_8
    const/16 v6, 0x304

    if-ne v6, v3, :cond_0

    .line 240
    invoke-virtual {p0}, Lack;->b()Lacp;

    move-result-object v4

    invoke-static {v4, p2}, Labw;->a(Lacp;Laau;)V

    move v4, v5

    .line 241
    goto :goto_0
.end method
