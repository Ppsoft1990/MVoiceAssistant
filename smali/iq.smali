.class public Liq;
.super Ljava/lang/Object;
.source "BinderUtil.java"


# static fields
.field private static a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    sput-object v0, Liq;->a:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static a(I)I
    .locals 3
    .param p0, "viaCode"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "ret_code":I
    sget-object v1, Liq;->a:Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 190
    invoke-static {}, Liq;->a()Landroid/util/SparseIntArray;

    move-result-object v1

    sput-object v1, Liq;->a:Landroid/util/SparseIntArray;

    .line 192
    :cond_0
    if-nez p0, :cond_1

    .line 204
    :goto_0
    return v0

    .line 195
    :cond_1
    const/16 v1, 0x2774

    if-lt p0, v1, :cond_2

    const v1, 0xc3500

    if-ge p0, v1, :cond_2

    .line 197
    move v0, p0

    goto :goto_0

    .line 202
    :cond_2
    sget-object v1, Liq;->a:Landroid/util/SparseIntArray;

    const/16 v2, 0x5207

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)I
    .locals 8
    .param p0, "xmlDoc"    # Ljava/lang/String;
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
    .local p1, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v2, 0x0

    .line 473
    invoke-static {}, Lja;->e()Lir;

    move-result-object v7

    .line 474
    .local v7, "caller":Lir;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lir;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v2

    .line 477
    :cond_1
    if-eqz p1, :cond_0

    .line 480
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    const-string/jumbo v1, "1.0"

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v0, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private static a()Landroid/util/SparseIntArray;
    .locals 8

    .prologue
    const/16 v7, 0x4e21

    const/16 v6, 0x520b

    const/16 v5, 0x4e2c

    const/16 v4, 0x520d

    const/16 v3, 0x5207

    .line 230
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 233
    .local v0, "map":Landroid/util/SparseIntArray;
    const v1, 0xc3501

    const/16 v2, 0x4e26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    const v1, 0xc3502

    const/16 v2, 0x4e30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    const v1, 0xc3503

    const/16 v2, 0x4e25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    const v1, 0xc3504

    const/16 v2, 0x4e22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    const v1, 0xc3505

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    const v1, 0xc3506

    const/16 v2, 0x4e30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    const v1, 0xc3507

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    const v1, 0xc3508

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    const v1, 0xc3509

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    const v1, 0xc350a

    const/16 v2, 0x4e27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    const v1, 0xc350b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    const v1, 0xc350c

    const/16 v2, 0x4e28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    const v1, 0xc350d

    const/16 v2, 0x4e27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    const v1, 0xc350e

    const/16 v2, 0x55f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    const v1, 0xc3510

    const/16 v2, 0x55f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    const v1, 0xc3511

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    const v1, 0xc3512

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    const v1, 0xc3513

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    const v1, 0xc3514

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    const v1, 0xc3515

    const/16 v2, 0x4e24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    const v1, 0xc3516

    const/16 v2, 0x4e25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    const v1, 0xc3517

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    const v1, 0xc3518

    const/16 v2, 0x4e22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    const v1, 0xc3519

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    const v1, 0xc351a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    const v1, 0xc351b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    const v1, 0xc351e

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    const v1, 0xc351f

    const/16 v2, 0x55f1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 270
    const v1, 0xc3520

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    const v1, 0xc3528

    const/16 v2, 0x55f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    const v1, 0xc3529

    const/16 v2, 0x55f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    const v1, 0xc352a

    const/16 v2, 0x55f1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    const v1, 0xc352b

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    const v1, 0xc38ed

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    const v1, 0xc38ee

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    const v1, 0xc38ef

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    const v1, 0xc38f0

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    const v1, 0xc38f1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    return-object v0
.end method

.method public static a(Landroid/os/Parcelable;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 8
    .param p0, "extRes"    # Landroid/os/Parcelable;

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-nez p0, :cond_0

    .line 292
    const-string/jumbo v1, "SPEECH_BinderUtil"

    const-string/jumbo v2, "getViaAsrResult null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-object v0

    .line 295
    :cond_0
    instance-of v1, p0, Lcom/iflytek/speech/UnderstanderResult;

    if-eqz v1, :cond_1

    move-object v7, p0

    .line 296
    check-cast v7, Lcom/iflytek/speech/UnderstanderResult;

    .line 297
    .local v7, "res":Lcom/iflytek/speech/UnderstanderResult;
    invoke-virtual {v7}, Lcom/iflytek/speech/UnderstanderResult;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Liq;->a(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    .line 298
    goto :goto_0

    .line 300
    .end local v7    # "res":Lcom/iflytek/speech/UnderstanderResult;
    :cond_1
    instance-of v1, p0, Lcom/iflytek/business/speech/RecognizerResult;

    if-eqz v1, :cond_2

    move-object v7, p0

    .line 301
    check-cast v7, Lcom/iflytek/business/speech/RecognizerResult;

    .line 302
    .local v7, "res":Lcom/iflytek/business/speech/RecognizerResult;
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v1, v7, Lcom/iflytek/business/speech/RecognizerResult;->mVersion:Ljava/lang/String;

    iget v2, v7, Lcom/iflytek/business/speech/RecognizerResult;->mConfidence:I

    iget v3, v7, Lcom/iflytek/business/speech/RecognizerResult;->mEngine:I

    iget-object v4, v7, Lcom/iflytek/business/speech/RecognizerResult;->mFocus:Ljava/lang/String;

    iget-object v5, v7, Lcom/iflytek/business/speech/RecognizerResult;->mContent:Ljava/lang/String;

    iget-object v6, v7, Lcom/iflytek/business/speech/RecognizerResult;->mXmlDoc:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .restart local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto :goto_0

    .line 306
    .end local v7    # "res":Lcom/iflytek/business/speech/RecognizerResult;
    :cond_2
    const-string/jumbo v1, "SPEECH_BinderUtil"

    const-string/jumbo v2, "getViaAsrResult not RecognizerResult"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 10
    .param p0, "xmlString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v9

    .line 319
    .local v9, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v5, ""

    .line 320
    .local v5, "rawText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 321
    .local v4, "focus":Ljava/lang/String;
    const-string/jumbo v1, "1.0"

    .line 323
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 324
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string/jumbo v6, "rawtext"

    .line 325
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 326
    .local v8, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 327
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 330
    :cond_0
    const/4 v7, 0x0

    .line 331
    .local v7, "result":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string/jumbo v6, "result"

    .line 332
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    check-cast v8, Ljava/util/List;

    .line 333
    .restart local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 334
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 336
    .restart local v7    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1
    if-eqz v7, :cond_2

    .line 337
    invoke-virtual {v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string/jumbo v6, "focus"

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    check-cast v8, Ljava/util/List;

    .line 339
    .restart local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 340
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 348
    :cond_2
    if-nez v4, :cond_3

    .line 349
    const-string/jumbo v4, "dialog"

    .line 350
    const-string/jumbo v3, "SPEECH_BinderUtil"

    const-string/jumbo v6, "getActionResult ERROR not ACTION."

    invoke-static {v3, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    const/16 v3, 0x10

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v0, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v2, "SPEECH_BinderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getActionResult res:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/ViaAsrResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v0    # "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v7    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v0

    .line 344
    :cond_4
    const-string/jumbo v2, "SPEECH_BinderUtil"

    const-string/jumbo v3, "getActionResult failed"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Lir;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    if-nez p0, :cond_0

    .line 214
    const-string/jumbo v1, "SPEECH_BinderUtil"

    const-string/jumbo v2, "getIntentCallerInfo null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 218
    .local v0, "callerInfo":Lir;
    const-string/jumbo v1, "caller.appid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lir;->c:Ljava/lang/String;

    .line 219
    const-string/jumbo v1, "caller.name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lir;->b:Ljava/lang/String;

    .line 220
    const-string/jumbo v1, "caller.pkg"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lir;->a:Ljava/lang/String;

    .line 221
    const-string/jumbo v1, "caller.ver.code"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lir;->d:Ljava/lang/String;

    .line 222
    const-string/jumbo v1, "caller.ver.name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lir;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 5
    .param p0, "extIntent"    # Landroid/content/Intent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 366
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string/jumbo v2, "engine_type"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "engineType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 371
    .local v1, "type":I
    if-nez v0, :cond_3

    .line 372
    const/16 v1, 0x10

    .line 380
    :cond_2
    :goto_1
    const-string/jumbo v2, "SPEECH_BinderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupEngineParam engineType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string/jumbo v2, "engine_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 373
    :cond_3
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 374
    const/16 v1, 0x11

    goto :goto_1

    .line 375
    :cond_4
    const-string/jumbo v2, "local"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 376
    const/4 v1, 0x1

    goto :goto_1

    .line 377
    :cond_5
    const-string/jumbo v2, "cloud"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    const/16 v1, 0x10

    goto :goto_1
.end method

.method public static b(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 9
    .param p0, "extIntent"    # Landroid/content/Intent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x7530

    const/16 v7, 0x64

    .line 389
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 390
    :cond_0
    const-string/jumbo v4, "SPEECH_BinderUtil"

    const-string/jumbo v5, "setVadInfo intent null"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    const-string/jumbo v4, "vad_bos"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "strBegin":Ljava/lang/String;
    const-string/jumbo v4, "vad_eos"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "strEnd":Ljava/lang/String;
    const/4 v2, 0x0

    .line 396
    .local v2, "vadBegin":I
    const/4 v3, 0x0

    .line 397
    .local v3, "vadEnd":I
    if-eqz v0, :cond_3

    .line 398
    invoke-static {v0}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 400
    :cond_3
    if-eqz v1, :cond_4

    .line 401
    invoke-static {v1}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 403
    :cond_4
    const-string/jumbo v4, "SPEECH_BinderUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVadInfo vadBegin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " vadEnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-lt v2, v7, :cond_5

    if-ge v2, v8, :cond_5

    .line 405
    const-string/jumbo v4, "vad_front_time"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    :cond_5
    if-lt v3, v7, :cond_1

    if-ge v3, v8, :cond_1

    .line 408
    const-string/jumbo v4, "vad_end_time"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static c(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 5
    .param p0, "extIntent"    # Landroid/content/Intent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 420
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 421
    :cond_0
    const-string/jumbo v2, "SPEECH_BinderUtil"

    const-string/jumbo v3, "setupLanguageParam intent null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    const-string/jumbo v2, "language"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "lang":Ljava/lang/String;
    const-string/jumbo v2, "accent"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "accent":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 427
    const-string/jumbo v2, "web_language"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string/jumbo v2, "SPEECH_BinderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupLanguageParam lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    if-eqz v0, :cond_1

    .line 431
    const-string/jumbo v2, "web_accent"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string/jumbo v2, "SPEECH_BinderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupLanguageParam accent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 7
    .param p0, "extIntent"    # Landroid/content/Intent;
    .param p1, "selfIntent"    # Landroid/content/Intent;

    .prologue
    .line 441
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 442
    :cond_0
    const-string/jumbo v4, "SPEECH_BinderUtil"

    const-string/jumbo v5, "setupToneFlag intent null"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string/jumbo v4, "tone_play"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "flagStr":Ljava/lang/String;
    const/4 v0, 0x2

    .line 447
    .local v0, "flag":I
    if-eqz v1, :cond_2

    .line 448
    invoke-static {v1}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 450
    :cond_2
    const/4 v3, 0x1

    .line 451
    .local v3, "playResult":Z
    const/4 v2, 0x1

    .line 452
    .local v2, "playRecord":Z
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 453
    const/4 v3, 0x1

    .line 454
    const/4 v2, 0x0

    .line 459
    :cond_3
    :goto_1
    const-string/jumbo v4, "is_play_record_tone"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    const-string/jumbo v4, "is_play_result_tone"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    const-string/jumbo v4, "SPEECH_BinderUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setupToneFlag playResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " playRecord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_4
    if-nez v0, :cond_3

    .line 456
    const/4 v3, 0x0

    .line 457
    const/4 v2, 0x0

    goto :goto_1
.end method
