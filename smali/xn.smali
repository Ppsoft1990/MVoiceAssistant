.class public Lxn;
.super Lwo;
.source "SpeechLogHelper.java"

# interfaces
.implements Ljq;


# static fields
.field public static b:J

.field public static c:J

.field public static d:J

.field private static i:Lxn;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private j:Lvk;

.field private k:Lwn;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lxn;->a:Landroid/content/Context;

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    iput-object v0, p0, Lxn;->j:Lvk;

    .line 70
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 7
    .param p1, "errorCode"    # I

    .prologue
    .line 327
    const-string/jumbo v3, ""

    .line 328
    .local v3, "errorString":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 329
    .local v0, "aitalkError":Ljava/lang/String;
    invoke-static {p1}, Lcom/iflytek/framework/business/speech/ErrorCode;->parseSpeechError(I)Lcom/iflytek/framework/business/speech/ErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/framework/business/speech/ErrorCode;->getDetailId()I

    move-result v2

    .line 331
    .local v2, "errDetailId":I
    :try_start_0
    iget-object v4, p0, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 336
    :goto_0
    iget-object v4, p0, Lxn;->f:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lxn;->f:Ljava/lang/String;

    const-string/jumbo v5, "local"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v4

    const-string/jumbo v5, "last_result_log"

    .line 338
    invoke-virtual {v4, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    move-object v3, v0

    .line 343
    :cond_0
    const-string/jumbo v4, "SpeechLogHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getErrorString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-object v3

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SpeechLogHelper"

    const-string/jumbo v5, "getErrorString()"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 353
    if-nez p1, :cond_1

    move-object p1, v0

    .line 360
    .end local p1    # "sid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 357
    .restart local p1    # "sid":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    :cond_2
    move-object p1, v0

    .line 358
    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lxn;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-class v1, Lxn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lxn;->i:Lxn;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lxn;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lxn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxn;->i:Lxn;

    .line 64
    :cond_0
    sget-object v0, Lxn;->i:Lxn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 372
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 373
    const-string/jumbo v0, "local"

    .line 379
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 374
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    .line 375
    const-string/jumbo v0, "cloud"

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "local+cloud"

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "xmlString"    # Ljava/lang/String;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 389
    if-nez p1, :cond_1

    .line 390
    const/4 v2, 0x0

    .line 430
    :cond_0
    :goto_0
    return-object v2

    .line 392
    :cond_1
    const/4 v2, 0x0

    .line 393
    .local v2, "operation":Ljava/lang/String;
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v5

    .line 395
    .local v5, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, "result":Lcom/iflytek/yd/util/xml/XmlElement;
    const/4 v0, 0x0

    .line 398
    .local v0, "action":Lcom/iflytek/yd/util/xml/XmlElement;
    const/4 v1, 0x0

    .line 399
    .local v1, "obj":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    const-string/jumbo v7, "result"

    invoke-virtual {v6, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 400
    .local v4, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 401
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 403
    .restart local v3    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    if-eqz v3, :cond_4

    .line 404
    const-string/jumbo v6, "action"

    invoke-virtual {v3, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 405
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 406
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "action":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v0, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 408
    .restart local v0    # "action":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    const-string/jumbo v6, "dialog"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 409
    const-string/jumbo v6, "object"

    invoke-virtual {v3, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 410
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 411
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 416
    .restart local v1    # "obj":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_4
    if-eqz v0, :cond_5

    .line 417
    const-string/jumbo v6, "operation"

    invoke-virtual {v0, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 418
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 419
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_5
    if-eqz v1, :cond_0

    .line 423
    const-string/jumbo v6, "topic"

    invoke-virtual {v1, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 424
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 425
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lxn;->j:Lvk;

    invoke-virtual {v0}, Lvk;->a()V

    .line 104
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "mscSid"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lxn;->d:J

    .line 253
    iget-object v4, p0, Lxn;->e:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 254
    const-string/jumbo v4, "SpeechLogHelper"

    const-string/jumbo v5, "logError mSessionFocus NULL."

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v4, p0, Lxn;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lxn;->h:Ljava/lang/String;

    sget-object v5, Lcom/iflytek/common/speech/entities/SpeechEntry;->speech_test:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 260
    invoke-virtual {v5}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    new-instance v3, Lpw;

    iget-object v4, p0, Lxn;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lpw;-><init>(Landroid/content/Context;)V

    .line 262
    .local v3, "speechTestLog":Lpw;
    sget-wide v4, Lxn;->b:J

    invoke-virtual {v3, v4, v5}, Lpw;->a(J)V

    .line 263
    sget-wide v4, Lxn;->d:J

    invoke-virtual {v3, v4, v5}, Lpw;->b(J)V

    .line 264
    sget-wide v4, Lxn;->c:J

    invoke-virtual {v3, v4, v5}, Lpw;->c(J)V

    .line 265
    invoke-direct {p0, p2}, Lxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpw;->d(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v4, "fail"

    invoke-virtual {v3, v4}, Lpw;->a(Ljava/lang/String;)V

    .line 267
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpw;->b(Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lxn;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lpv;->a(Landroid/content/Context;Lpw;)V

    .line 271
    .end local v3    # "speechTestLog":Lpw;
    :cond_1
    invoke-direct {p0, p1}, Lxn;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v1, Lwk;

    iget-object v4, p0, Lxn;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lwk;-><init>(Landroid/content/Context;)V

    .line 274
    .local v1, "errorLog":Lwk;
    iget-object v4, p0, Lxn;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lwk;->b(Ljava/lang/String;)V

    .line 275
    iget-object v4, p0, Lxn;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lwk;->c(Ljava/lang/String;)V

    .line 276
    iget-object v4, p0, Lxn;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lwk;->f(Ljava/lang/String;)V

    .line 277
    sget-wide v4, Lxn;->d:J

    invoke-virtual {v1, v4, v5}, Lwk;->a(J)V

    .line 278
    invoke-virtual {v1, p1}, Lwk;->a(I)V

    .line 279
    invoke-virtual {v1, v2}, Lwk;->a(Ljava/lang/String;)V

    .line 280
    iget-object v4, p0, Lxn;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lwk;->d(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p2}, Lxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lwk;->e(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Lwk;->c()V

    .line 284
    sget-boolean v4, Lvk;->a:Z

    if-eqz v4, :cond_6

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v0, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lxn;->g:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 287
    const-string/jumbo v4, "usedapp"

    iget-object v5, p0, Lxn;->g:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_2
    iget-object v4, p0, Lxn;->h:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 290
    const-string/jumbo v4, "entry"

    iget-object v5, p0, Lxn;->h:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_3
    iget-object v4, p0, Lxn;->f:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 293
    const-string/jumbo v4, "startengine"

    iget-object v5, p0, Lxn;->f:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_4
    invoke-virtual {v1}, Lwk;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 296
    const-string/jumbo v4, "mscsid"

    invoke-virtual {v1}, Lwk;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_5
    iget-object v4, p0, Lxn;->j:Lvk;

    sget-object v5, Lcom/iflytek/blc/log/LogPriority;->Middle:Lcom/iflytek/blc/log/LogPriority;

    invoke-virtual {v4, p1, v2, v0, v5}, Lvk;->a(ILjava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V

    .line 307
    .end local v0    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lxn;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 304
    :cond_6
    iget-object v4, p0, Lxn;->a:Landroid/content/Context;

    invoke-static {v4}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lvr;->a(Lwk;)V

    goto :goto_1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lir;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "web_focus"    # Ljava/lang/String;
    .param p3, "local_focus"    # Ljava/lang/String;
    .param p4, "entry"    # Ljava/lang/String;
    .param p5, "callerInfo"    # Lir;

    .prologue
    .line 76
    move-object v0, p2

    .line 77
    .local v0, "focus":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 78
    move-object v0, p3

    .line 80
    :cond_0
    const-string/jumbo v1, "com.iflytek.cmcc"

    iput-object v1, p0, Lxn;->g:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lxn;->h:Ljava/lang/String;

    .line 82
    const-string/jumbo v1, "SpeechLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logSessionStart entry."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lxn;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/16 v1, 0x100

    if-ne p1, v1, :cond_2

    .line 85
    const-string/jumbo v1, "SpeechLogHelper"

    const-string/jumbo v2, "logSessionStart wake not save."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lxn;->e:Ljava/lang/String;

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 90
    const-string/jumbo v1, "|"

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lxn;->e:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lxn;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lxn;->f:Ljava/lang/String;

    .line 92
    if-eqz p5, :cond_3

    iget-object v1, p5, Lir;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p5, Lir;->a:Ljava/lang/String;

    iput-object v1, p0, Lxn;->g:Ljava/lang/String;

    .line 95
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lxn;->b:J

    .line 96
    iget-object v1, p0, Lxn;->j:Lvk;

    iget-object v2, p0, Lxn;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lvk;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/yd/speech/ViaAsrResult;Ljava/lang/String;)V
    .locals 10
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "mscSid"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string/jumbo v7, "SpeechLogHelper"

    const-string/jumbo v8, "logResult null result."

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lxn;->d:J

    .line 146
    const-string/jumbo v7, "SpeechLogHelper"

    const-string/jumbo v8, "logResult begin TIME."

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 148
    .local v2, "backFocus":Ljava/lang/String;
    iget-object v7, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-virtual {p0, v7, v2}, Lxn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "backAction":Ljava/lang/String;
    iget-object v7, p0, Lxn;->e:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 150
    const-string/jumbo v7, "SpeechLogHelper"

    const-string/jumbo v8, "logResult mSessionFocus null."

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_1
    if-nez v1, :cond_2

    .line 154
    const-string/jumbo v1, ""

    .line 158
    :cond_2
    const/4 v0, 0x0

    .line 159
    .local v0, "auditCode":Ljava/lang/String;
    const-string/jumbo v7, "evaluate"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 160
    const-string/jumbo v7, "SpeechLogHelper"

    const-string/jumbo v8, "logResult evaluate not save to cmcc."

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_1
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/iflytek/viafly/util/TestHelper;->setMscSessionId(Ljava/lang/String;)V

    .line 170
    new-instance v6, Lwn;

    iget-object v7, p0, Lxn;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Lwn;-><init>(Landroid/content/Context;)V

    .line 171
    .local v6, "voiceLog":Lwn;
    iget-object v7, p0, Lxn;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lwn;->e(Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lxn;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lwn;->c(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6, v2}, Lwn;->b(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v6, v1}, Lwn;->a(Ljava/lang/String;)V

    .line 175
    sget-wide v8, Lxn;->b:J

    invoke-virtual {v6, v8, v9}, Lwn;->b(J)V

    .line 176
    sget-wide v8, Lxn;->c:J

    invoke-virtual {v6, v8, v9}, Lwn;->a(J)V

    .line 177
    sget-wide v8, Lxn;->d:J

    invoke-virtual {v6, v8, v9}, Lwn;->c(J)V

    .line 178
    iget v7, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    invoke-direct {p0, v7}, Lxn;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lwn;->f(Ljava/lang/String;)V

    .line 179
    iget-object v7, p0, Lxn;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lwn;->d(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p2}, Lxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lwn;->h(Ljava/lang/String;)V

    .line 181
    iget-object v7, p0, Lxn;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lwn;->g(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v6, v0}, Lwn;->i(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6}, Lwn;->c()V

    .line 186
    iget-object v7, p0, Lxn;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lxn;->h:Ljava/lang/String;

    sget-object v8, Lcom/iflytek/common/speech/entities/SpeechEntry;->speech_test:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 187
    invoke-virtual {v8}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 188
    new-instance v5, Lpw;

    iget-object v7, p0, Lxn;->a:Landroid/content/Context;

    invoke-direct {v5, v7}, Lpw;-><init>(Landroid/content/Context;)V

    .line 189
    .local v5, "speechTestLog":Lpw;
    sget-wide v8, Lxn;->b:J

    invoke-virtual {v5, v8, v9}, Lpw;->a(J)V

    .line 190
    sget-wide v8, Lxn;->d:J

    invoke-virtual {v5, v8, v9}, Lpw;->b(J)V

    .line 191
    sget-wide v8, Lxn;->c:J

    invoke-virtual {v5, v8, v9}, Lpw;->c(J)V

    .line 192
    invoke-virtual {v5, v2}, Lpw;->e(Ljava/lang/String;)V

    .line 193
    iget-object v7, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lpw;->c(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p2}, Lxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lpw;->d(Ljava/lang/String;)V

    .line 195
    iget v7, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    invoke-direct {p0, v7}, Lxn;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lpw;->f(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v7, "success"

    invoke-virtual {v5, v7}, Lpw;->a(Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lxn;->a:Landroid/content/Context;

    invoke-static {v7, v5}, Lpv;->a(Landroid/content/Context;Lpw;)V

    .line 201
    .end local v5    # "speechTestLog":Lpw;
    :cond_3
    sget-object v4, Lcom/iflytek/blc/log/LogPriority;->Middle:Lcom/iflytek/blc/log/LogPriority;

    .line 203
    .local v4, "priority":Lcom/iflytek/blc/log/LogPriority;
    sget-boolean v7, Lvk;->a:Z

    if-eqz v7, :cond_d

    .line 204
    iget-object v7, p0, Lxn;->j:Lvk;

    invoke-virtual {v7}, Lvk;->c()V

    .line 205
    iget-object v7, p0, Lxn;->j:Lvk;

    invoke-virtual {v7}, Lvk;->d()V

    .line 207
    iget-object v7, p0, Lxn;->j:Lvk;

    invoke-virtual {v7}, Lvk;->e()V

    .line 208
    iget-object v7, p0, Lxn;->j:Lvk;

    invoke-virtual {v7}, Lvk;->f()V

    .line 209
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v3, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 211
    const-string/jumbo v7, "bfocus"

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_4
    if-eqz v1, :cond_5

    .line 214
    const-string/jumbo v7, "baction"

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_5
    iget-object v7, p0, Lxn;->g:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 217
    const-string/jumbo v7, "usedapp"

    iget-object v8, p0, Lxn;->g:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_6
    iget-object v7, p0, Lxn;->h:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 220
    const-string/jumbo v7, "entry"

    iget-object v8, p0, Lxn;->h:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_7
    invoke-virtual {v6}, Lwn;->g()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 223
    const-string/jumbo v7, "engine_type"

    invoke-virtual {v6}, Lwn;->g()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_8
    invoke-virtual {v6}, Lwn;->h()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 226
    const-string/jumbo v7, "startengine"

    invoke-virtual {v6}, Lwn;->h()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_9
    invoke-virtual {v6}, Lwn;->f()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 229
    const-string/jumbo v7, "mscsid"

    invoke-virtual {v6}, Lwn;->f()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_a
    if-eqz v0, :cond_b

    .line 232
    const-string/jumbo v7, "audit_code"

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_b
    iget-object v7, p0, Lxn;->j:Lvk;

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9, v3, v4}, Lvk;->a(ILjava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V

    .line 244
    .end local v3    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    const/4 v7, 0x0

    iput-object v7, p0, Lxn;->e:Ljava/lang/String;

    .line 245
    iput-object v6, p0, Lxn;->k:Lwn;

    .line 246
    const-string/jumbo v7, "SpeechLogHelper"

    const-string/jumbo v8, "logResult end TIME."

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v4    # "priority":Lcom/iflytek/blc/log/LogPriority;
    .end local v6    # "voiceLog":Lwn;
    :cond_c
    iget-object v7, p0, Lxn;->a:Landroid/content/Context;

    invoke-static {v7}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v7

    iget-object v8, p0, Lxn;->g:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getJsonStr()Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-virtual {v7, v2, v1, v8, v9}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 241
    .restart local v4    # "priority":Lcom/iflytek/blc/log/LogPriority;
    .restart local v6    # "voiceLog":Lwn;
    :cond_d
    iget-object v7, p0, Lxn;->a:Landroid/content/Context;

    invoke-static {v7}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v7

    invoke-virtual {v7, v6}, Lvr;->a(Lwn;)V

    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lxn;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lxn;->c:J

    .line 124
    :cond_0
    iget-object v0, p0, Lxn;->j:Lvk;

    invoke-virtual {v0}, Lvk;->b()V

    .line 125
    return-void
.end method
