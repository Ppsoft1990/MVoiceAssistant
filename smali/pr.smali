.class public Lpr;
.super Ljd;
.source "ResultsAnalyser.java"


# static fields
.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lpr;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljd;-><init>()V

    .line 61
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 25
    .param p1, "resStr"    # Ljava/lang/String;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 230
    move-object/from16 v22, p1

    .line 231
    .local v22, "sJSON":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 233
    .local v7, "content":Ljava/lang/String;
    new-instance v23, Lorg/json/JSONTokener;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 234
    .local v23, "tokener":Lorg/json/JSONTokener;
    const/16 v19, 0x0

    .line 236
    .local v19, "joResult":Lorg/json/JSONObject;
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    .end local v19    # "joResult":Lorg/json/JSONObject;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .restart local v19    # "joResult":Lorg/json/JSONObject;
    :goto_0
    if-eqz v19, :cond_2

    .line 244
    const/4 v11, 0x0

    .line 246
    .local v11, "contents":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v5, "cnt"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    .line 251
    :goto_1
    :try_start_2
    const-string/jumbo v5, "ws"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 253
    .local v17, "jaWords":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v15, v5, :cond_1

    .line 254
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 255
    .local v20, "joWord":Lorg/json/JSONObject;
    const-string/jumbo v5, "cw"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 256
    .local v16, "jaCandidateWord":Lorg/json/JSONArray;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 257
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 258
    .local v18, "joCWord":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "w"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    .end local v18    # "joCWord":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 237
    .end local v11    # "contents":Lorg/json/JSONObject;
    .end local v15    # "i":I
    .end local v16    # "jaCandidateWord":Lorg/json/JSONArray;
    .end local v17    # "jaWords":Lorg/json/JSONArray;
    .end local v19    # "joResult":Lorg/json/JSONObject;
    .end local v20    # "joWord":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .line 238
    .local v14, "e":Lorg/json/JSONException;
    const/16 v19, 0x0

    .restart local v19    # "joResult":Lorg/json/JSONObject;
    goto :goto_0

    .line 247
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v11    # "contents":Lorg/json/JSONObject;
    :catch_1
    move-exception v14

    .line 248
    .local v14, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONTokener;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .end local v11    # "contents":Lorg/json/JSONObject;
    .local v12, "contents":Lorg/json/JSONObject;
    move-object v11, v12

    .end local v12    # "contents":Lorg/json/JSONObject;
    .restart local v11    # "contents":Lorg/json/JSONObject;
    goto :goto_1

    .line 261
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v15    # "i":I
    .restart local v17    # "jaWords":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v5, "ActionAnalyser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getMscResults content = "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 266
    .end local v11    # "contents":Lorg/json/JSONObject;
    .end local v15    # "i":I
    .end local v17    # "jaWords":Lorg/json/JSONArray;
    :cond_2
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 267
    const/4 v2, 0x0

    .line 294
    :goto_4
    return-object v2

    .line 262
    .restart local v11    # "contents":Lorg/json/JSONObject;
    :catch_2
    move-exception v14

    .line 263
    .local v14, "e":Lorg/json/JSONException;
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 269
    .end local v11    # "contents":Lorg/json/JSONObject;
    .end local v14    # "e":Lorg/json/JSONException;
    :cond_3
    const-string/jumbo v3, "1.2"

    .line 270
    .local v3, "version":Ljava/lang/String;
    const/4 v4, 0x0

    .line 272
    .local v4, "confidence":I
    const-string/jumbo v8, ""

    .line 273
    .local v8, "xmlDoc":Ljava/lang/String;
    new-instance v13, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v13}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 275
    .local v13, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v5, "biz_result"

    invoke-virtual {v13, v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    .line 277
    .local v10, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "version"

    invoke-virtual {v10, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v5, "rawtext"

    invoke-virtual {v10, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v5, "json"

    invoke-virtual {v10, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v5, "status"

    invoke-virtual {v10, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    const-string/jumbo v6, "success"

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v5, "result"

    invoke-virtual {v10, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v21

    .line 283
    .local v21, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "focus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v5, "action"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    .line 285
    .local v9, "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "microblog"

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 286
    const-string/jumbo v5, "operation"

    invoke-virtual {v9, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    const-string/jumbo v6, "sms"

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 288
    :cond_4
    const-string/jumbo v5, "content"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 289
    invoke-static {v13}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 290
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    const/16 v5, 0x10

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v2, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/speech/ViaAsrResult;->setJsonStr(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v5, "ActionAnalyser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getSmsResult:"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private a(IIIILjava/util/List;)Z
    .locals 4
    .param p1, "pRawtextConfidence"    # I
    .param p2, "pFocusConfidence"    # I
    .param p3, "pObjConfidence"    # I
    .param p4, "pMinConfidence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "pNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 542
    const-string/jumbo v2, "sms"

    iget-object v3, p0, Lpr;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 547
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0x32

    if-ge p3, v2, :cond_2

    move v0, v1

    .line 548
    goto :goto_0

    .line 551
    :cond_2
    iget-object v2, p0, Lpr;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 553
    if-ge p1, p4, :cond_0

    move v0, v1

    .line 554
    goto :goto_0

    .line 560
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v2, p4, :cond_0

    move v0, v1

    .line 561
    goto :goto_0
.end method

.method private a(IIILjava/util/List;)Z
    .locals 5
    .param p1, "pRawtextConfidence"    # I
    .param p2, "pFocusConfidence"    # I
    .param p3, "pMinConfidence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "pNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    const-string/jumbo v1, "sms"

    iget-object v4, p0, Lpr;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 528
    :goto_0
    return v1

    .line 510
    :cond_0
    iget-object v1, p0, Lpr;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 511
    move v0, p1

    .line 516
    .local v0, "currentConfidence":I
    :goto_1
    if-lt v0, p3, :cond_4

    .line 517
    iget-object v1, p0, Lpr;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 518
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 520
    goto :goto_0

    .line 513
    .end local v0    # "currentConfidence":I
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "currentConfidence":I
    goto :goto_1

    :cond_2
    move v1, v2

    .line 522
    goto :goto_0

    :cond_3
    move v1, v2

    .line 525
    goto :goto_0

    :cond_4
    move v1, v3

    .line 528
    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 7
    .param p1, "resStr"    # Ljava/lang/String;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string/jumbo v1, "1.2"

    .line 304
    .local v1, "version":Ljava/lang/String;
    const/4 v2, 0x0

    .line 319
    .local v2, "confidence":I
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    const/16 v3, 0x10

    const-string/jumbo v5, ""

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v0, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v3, "ActionAnalyser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOtherResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "1.2"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lpr;->d:Z

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "schedule"

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 14
    .param p1, "xmlString"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v13

    .line 157
    .local v13, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v5, ""

    .line 158
    .local v5, "rawText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 159
    .local v4, "focus":Ljava/lang/String;
    const-string/jumbo v1, "1.2"

    .line 161
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 162
    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "rawtext"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 163
    .local v12, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 167
    :cond_0
    const/4 v10, 0x0

    .line 168
    .local v10, "result":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 169
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 170
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 172
    .restart local v10    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1
    if-eqz v10, :cond_2

    .line 173
    const-string/jumbo v2, "focus"

    invoke-virtual {v10, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 174
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 175
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 183
    :cond_2
    if-nez v4, :cond_3

    .line 184
    const-string/jumbo v4, "dialog"

    .line 185
    const-string/jumbo v2, "ActionAnalyser"

    const-string/jumbo v3, "getActionResult ERROR not ACTION."

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    invoke-virtual {p0}, Lpr;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    const-string/jumbo v2, "dialog"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "other"

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    :cond_4
    const-string/jumbo v2, "ActionAnalyser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getActionResult TempScene dialog=>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lpr;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v4, p0, Lpr;->b:Ljava/lang/String;

    .line 194
    new-instance v8, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v8}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 195
    .local v8, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    invoke-virtual {v8, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v7

    .line 196
    .local v7, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v5, :cond_5

    .line 197
    const-string/jumbo v2, ""

    invoke-static {v5, v2}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    :cond_5
    const-string/jumbo v2, "version"

    invoke-virtual {v7, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "1.2"

    .line 200
    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v2, "rawtext"

    invoke-virtual {v7, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, "status"

    invoke-virtual {v7, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v2, "result"

    invoke-virtual {v7, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v11

    .line 205
    .local v11, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    invoke-virtual {v11, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "object"

    invoke-virtual {v11, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    .line 208
    .local v9, "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "name"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 210
    invoke-static {v8}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object p1

    .line 213
    .end local v7    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v9    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v11    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_6
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    const/4 v2, 0x0

    const/16 v3, 0x10

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v10    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v12    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v0

    .line 179
    :cond_7
    const-string/jumbo v2, "ActionAnalyser"

    const-string/jumbo v3, "getActionResult failed"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 7
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    const-string/jumbo v1, "1.2"

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string/jumbo v4, "evaluate"

    const-string/jumbo v5, ""

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v0, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)I
    .locals 40
    .param p1, "aitalk_result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 332
    :cond_0
    const-string/jumbo v3, "ActionAnalyser"

    const-string/jumbo v4, "getAitalkResult result or desResult null."

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v33, 0x0

    .line 492
    :cond_1
    :goto_0
    return v33

    .line 336
    :cond_2
    invoke-static/range {p1 .. p2}, Liq;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v33

    .line 337
    .local v33, "ret":I
    if-gtz v33, :cond_1

    .line 340
    const/16 v22, 0x0

    .line 341
    .local v22, "flagRebuildXmlResult":Z
    const/4 v10, 0x0

    .line 342
    .local v10, "rawtextConfidence":I
    const/4 v11, 0x0

    .line 343
    .local v11, "focusConfidence":I
    const/4 v12, 0x0

    .line 344
    .local v12, "objConfidence":I
    const/16 v30, 0x0

    .line 345
    .local v30, "receiverConfidence":I
    const-string/jumbo v6, ""

    .line 346
    .local v6, "focus":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 347
    .local v7, "rawText":Ljava/lang/String;
    const/16 v29, 0x0

    .line 350
    .local v29, "receiver":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v20

    .line 351
    .local v20, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const/16 v32, 0x0

    .line 352
    .local v32, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const/16 v24, 0x0

    .line 353
    .local v24, "focusElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const/16 v28, 0x0

    .line 354
    .local v28, "rawElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const/4 v14, 0x0

    .line 355
    .local v14, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 356
    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v34

    .line 358
    .local v34, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 359
    .local v39, "tmpResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v39, :cond_3

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 360
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v32, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 363
    .restart local v32    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 364
    if-eqz v39, :cond_4

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 365
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "rawElement":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v28, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 370
    .end local v34    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v39    # "tmpResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v28    # "rawElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_4
    if-eqz v28, :cond_5

    .line 371
    const/16 v17, 0x0

    .line 372
    .local v17, "attRaw":Lcom/iflytek/yd/util/xml/XmlAttribute;
    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 373
    const-string/jumbo v3, "score"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v17

    .line 374
    if-eqz v17, :cond_5

    .line 375
    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 380
    .end local v17    # "attRaw":Lcom/iflytek/yd/util/xml/XmlAttribute;
    :cond_5
    if-eqz v32, :cond_6

    .line 381
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v36

    .line 382
    .local v36, "tmpFocus":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v36, :cond_6

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 383
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "focusElement":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 386
    .end local v36    # "tmpFocus":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v24    # "focusElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_6
    if-eqz v24, :cond_8

    .line 387
    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 388
    const-string/jumbo v3, "score"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v15

    .line 389
    .local v15, "attFocus":Lcom/iflytek/yd/util/xml/XmlAttribute;
    const/16 v23, 0x0

    .line 390
    .local v23, "focusCm":I
    if-eqz v15, :cond_7

    .line 391
    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 394
    :cond_7
    move/from16 v11, v23

    .line 398
    .end local v15    # "attFocus":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v23    # "focusCm":I
    :cond_8
    if-eqz v32, :cond_d

    const-string/jumbo v3, "message"

    .line 399
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "telephone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "contacts"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 400
    :cond_9
    const-string/jumbo v3, "object"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v38

    .line 401
    .local v38, "tmpObj":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v38, :cond_d

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 402
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 404
    .local v27, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "score"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v16

    .line 405
    .local v16, "attObj":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v16, :cond_a

    .line 406
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 409
    :cond_a
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .restart local v14    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v37

    .line 411
    .local v37, "tmpName":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v37, :cond_c

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 414
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 415
    .local v26, "nameElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual/range {v26 .. v26}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 416
    .local v25, "name":Ljava/lang/String;
    if-eqz v25, :cond_b

    .line 417
    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "nameElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    const/16 v3, 0x32

    if-ge v12, v3, :cond_d

    .line 424
    const-string/jumbo v3, "ActionAnalyser"

    const-string/jumbo v4, "remove name object Elements"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 426
    .local v21, "firstname":Ljava/lang/String;
    const-string/jumbo v3, ""

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 427
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 428
    const-string/jumbo v3, "object"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->removeSubElement(Ljava/lang/String;)Ljava/util/List;

    .line 429
    const/16 v22, 0x1

    .line 435
    .end local v16    # "attObj":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v21    # "firstname":Ljava/lang/String;
    .end local v27    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v37    # "tmpName":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v38    # "tmpObj":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_d
    if-eqz v32, :cond_10

    const-string/jumbo v3, "message"

    .line 436
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "telephone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "contacts"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 437
    :cond_e
    const-string/jumbo v3, "receiver"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v38

    .line 438
    .restart local v38    # "tmpObj":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v38, :cond_10

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 439
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 440
    .local v31, "receiverElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual/range {v31 .. v31}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 442
    const-string/jumbo v3, "score"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v16

    .line 443
    .restart local v16    # "attObj":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v16, :cond_f

    .line 444
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 448
    :cond_f
    if-eqz v29, :cond_10

    const/16 v3, 0x32

    move/from16 v0, v30

    if-ge v0, v3, :cond_10

    .line 449
    const-string/jumbo v3, ""

    move-object/from16 v0, v29

    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 450
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v3, "receiver"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->removeSubElement(Ljava/lang/String;)Ljava/util/List;

    .line 452
    const/16 v22, 0x1

    .line 458
    .end local v16    # "attObj":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v31    # "receiverElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v38    # "tmpObj":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_10
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v35

    .line 459
    .local v35, "speech":Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    const-string/jumbo v3, "conf_low"

    .line 460
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 461
    .local v18, "cmLow":I
    const-string/jumbo v3, "conf_high"

    .line 462
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 463
    .local v13, "cmHigh":I
    const-string/jumbo v3, "conf_normal"

    .line 464
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 465
    .local v19, "cmNormal":I
    const-string/jumbo v3, "ActionAnalyser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAitalkResult confidence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " low="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " high="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " normal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v11, v1, v14}, Lpr;->a(IIILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 470
    const-string/jumbo v3, "ActionAnalyser"

    const-string/jumbo v4, "throw unconfident result"

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 474
    :cond_11
    move-object/from16 v8, p1

    .line 476
    .local v8, "rebuiltXmlResult":Ljava/lang/String;
    if-eqz v22, :cond_12

    if-eqz v20, :cond_12

    .line 477
    invoke-static/range {v20 .. v20}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 480
    :cond_12
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    const-string/jumbo v3, "1.2"

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    move-object/from16 v9, p0

    .line 485
    invoke-direct/range {v9 .. v14}, Lpr;->a(IIIILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_13

    if-eqz v29, :cond_14

    const/16 v3, 0x32

    move/from16 v0, v30

    if-ge v0, v3, :cond_14

    .line 488
    :cond_13
    invoke-static {}, Labb;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/speech/ViaAsrResult;->setWaitCloudDelay(I)V

    .line 491
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v33

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    new-instance v8, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v8}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 596
    .local v8, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v5, "RECORD"

    .line 597
    .local v5, "rawText":Ljava/lang/String;
    const-string/jumbo v1, "biz_result"

    invoke-virtual {v8, v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v7

    .line 598
    .local v7, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "version"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "1.2"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v1, "rawtext"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v1, "status"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 602
    const-string/jumbo v1, "result"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    .line 603
    .local v9, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "focus"

    invoke-virtual {v9, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "record"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 605
    invoke-static {v8}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, "xmlDoc":Ljava/lang/String;
    const-string/jumbo v1, "ActionAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "analysRecordResults xml:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    const-string/jumbo v1, "1.2"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "record"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .local v0, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)I
    .locals 10
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "cm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    new-instance v8, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v8}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 574
    .local v8, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    move-object v5, p2

    .line 575
    .local v5, "rawText":Ljava/lang/String;
    const-string/jumbo v1, "biz_result"

    invoke-virtual {v8, v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v7

    .line 576
    .local v7, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "version"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "1.2"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v1, "rawtext"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 578
    const-string/jumbo v1, "status"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 580
    const-string/jumbo v1, "result"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    .line 581
    .local v9, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "focus"

    invoke-virtual {v9, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "wake"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 583
    invoke-static {v8}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, "xmlDoc":Ljava/lang/String;
    const-string/jumbo v1, "ActionAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "analysWakeResults xml:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    const-string/jumbo v1, "1.2"

    const/4 v3, 0x1

    const-string/jumbo v4, "wake"

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v0, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public a([BLjava/util/List;)I
    .locals 8
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v5, 0x0

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    const/4 v3, 0x0

    .line 103
    .local v3, "res_string":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "res_string":Ljava/lang/String;
    .local v4, "res_string":Ljava/lang/String;
    move-object v3, v4

    .line 107
    .end local v4    # "res_string":Ljava/lang/String;
    .restart local v3    # "res_string":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 108
    const-string/jumbo v6, "ActionAnalyser"

    const-string/jumbo v7, "getMscResults result null."

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_1
    return v5

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "ActionAnalyser"

    const-string/jumbo v7, "getMscResults result null."

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string/jumbo v6, "sms"

    iget-object v7, p0, Lpr;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    const-string/jumbo v5, "message"

    invoke-direct {p0, v3, v5}, Lpr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    .line 143
    :goto_2
    if-eqz v2, :cond_1

    .line 144
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    .line 117
    :cond_2
    const-string/jumbo v6, "microblog"

    iget-object v7, p0, Lpr;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    const-string/jumbo v5, "microblog"

    invoke-direct {p0, v3, v5}, Lpr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    goto :goto_2

    .line 121
    :cond_3
    const-string/jumbo v6, "evaluate"

    iget-object v7, p0, Lpr;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "eva_string":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/String;

    .end local v1    # "eva_string":Ljava/lang/String;
    const-string/jumbo v6, "gb2312"

    invoke-direct {v1, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .restart local v1    # "eva_string":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 130
    move-object v3, v1

    .line 132
    :cond_4
    const-string/jumbo v5, "ActionAnalyser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMscResults eva_string  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, v3}, Lpr;->e(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    .line 134
    goto :goto_2

    .line 125
    .end local v1    # "eva_string":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 126
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5
    const-string/jumbo v5, "humming"

    iget-object v6, p0, Lpr;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 137
    const-string/jumbo v5, "humming"

    invoke-direct {p0, v3, v5}, Lpr;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    goto :goto_2

    .line 141
    :cond_6
    invoke-direct {p0, v3}, Lpr;->d(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v0, "telephone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "message"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "app"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
