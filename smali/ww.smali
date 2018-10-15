.class public Lww;
.super Lwo;
.source "CallAndSmsOpLogHelper.java"


# static fields
.field private static b:Lww;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/iflytek/framework/business/speech/InteractionScene;
    .param p4, "promptMode"    # I
    .param p5, "resultContent"    # Ljava/lang/String;

    .prologue
    .line 376
    if-nez p3, :cond_0

    .line 377
    sget-object p3, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 379
    :cond_0
    const/4 v1, 0x0

    .line 380
    .local v1, "opCode":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 381
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object p2

    .line 383
    :cond_1
    if-nez p2, :cond_2

    move-object v2, v1

    .line 458
    .end local v1    # "opCode":Ljava/lang/String;
    .local v2, "opCode":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 386
    .end local v2    # "opCode":Ljava/lang/String;
    .restart local v1    # "opCode":Ljava/lang/String;
    :cond_2
    sget-object v3, Lww$1;->a:[I

    invoke-virtual {p3}, Lcom/iflytek/framework/business/speech/InteractionScene;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    move-object v2, v1

    .line 458
    .end local v1    # "opCode":Ljava/lang/String;
    .restart local v2    # "opCode":Ljava/lang/String;
    goto :goto_0

    .line 389
    .end local v2    # "opCode":Ljava/lang/String;
    .restart local v1    # "opCode":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "telephone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    const-string/jumbo v1, "FD01001"

    goto :goto_1

    .line 391
    :cond_4
    const-string/jumbo v3, "message"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 392
    const-string/jumbo v1, "FD02001"

    goto :goto_1

    .line 393
    :cond_5
    const-string/jumbo v3, "contacts"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    const-string/jumbo v1, "FD02101"

    goto :goto_1

    .line 398
    :pswitch_1
    const-string/jumbo v3, "telephone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 399
    if-nez p4, :cond_6

    .line 400
    const-string/jumbo v1, "FD01002"

    goto :goto_1

    .line 402
    :cond_6
    const-string/jumbo v1, "FD01004"

    goto :goto_1

    .line 404
    :cond_7
    const-string/jumbo v3, "message"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    if-nez p4, :cond_8

    .line 406
    const-string/jumbo v1, "FD02002"

    .line 407
    if-eqz p5, :cond_3

    const v3, 0x7f0c0362

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    const-string/jumbo v1, "FD02003"

    goto :goto_1

    .line 411
    :cond_8
    const-string/jumbo v1, "FD02004"

    goto :goto_1

    .line 416
    :pswitch_2
    const-string/jumbo v3, "telephone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 417
    const-string/jumbo v1, "FD01005"

    goto :goto_1

    .line 419
    :cond_9
    const-string/jumbo v3, "message"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    if-nez p4, :cond_a

    .line 421
    const-string/jumbo v1, "FD02003"

    goto :goto_1

    .line 423
    :cond_a
    const-string/jumbo v1, "FD02005"

    goto :goto_1

    .line 428
    :pswitch_3
    if-nez p4, :cond_3

    .line 429
    const-string/jumbo v1, "FD02006"

    goto/16 :goto_1

    .line 433
    :pswitch_4
    if-eqz p5, :cond_e

    .line 434
    invoke-static {p1}, Laay;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    .line 435
    invoke-virtual {v3, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 436
    .local v0, "grammarType":Lcom/iflytek/framework/business/speech/ResultGrammarType;
    sget-object v3, Lcom/iflytek/framework/business/speech/ResultGrammarType;->confirm:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    if-ne v3, v0, :cond_c

    .line 437
    if-nez p4, :cond_b

    .line 438
    const-string/jumbo v1, "FD02008"

    goto/16 :goto_1

    .line 440
    :cond_b
    const-string/jumbo v1, "FD02009"

    goto/16 :goto_1

    .line 443
    :cond_c
    if-nez p4, :cond_d

    .line 444
    const-string/jumbo v1, "FD02010"

    goto/16 :goto_1

    .line 446
    :cond_d
    const-string/jumbo v1, "FD02011"

    goto/16 :goto_1

    .line 452
    .end local v0    # "grammarType":Lcom/iflytek/framework/business/speech/ResultGrammarType;
    :cond_e
    const-string/jumbo v1, "FD02008"

    .line 454
    goto/16 :goto_1

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(I)Ljava/util/HashMap;
    .locals 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v0, "errorLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "error_code"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lww;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lww;->b:Lww;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lww;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lww;-><init>(Landroid/content/Context;)V

    sput-object v0, Lww;->b:Lww;

    .line 43
    :cond_0
    sget-object v0, Lww;->b:Lww;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    const-string/jumbo v0, ""

    .line 255
    .local v0, "netstatuspage":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 192
    const-string/jumbo v0, "telephone"

    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "message"

    .line 193
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v1

    const v2, 0xc351a

    .line 194
    invoke-virtual {p0, v0, v1, v2}, Lww;->a(Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;I)V

    .line 197
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 205
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v1, "appendManualOpLog | opCode is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v5, "logParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "FD01001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD01002"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD01003"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD01004"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD01005"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD01006"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD01007"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD01008"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02001"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02002"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02003"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02004"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02005"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02006"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02007"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02008"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02009"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02010"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02011"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02012"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FD02013"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    :cond_1
    invoke-direct {p0}, Lww;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string/jumbo v0, "FD01006"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-static {}, Laba;->a()Laba;

    move-result-object v0

    invoke-virtual {v0}, Laba;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const-string/jumbo v0, "sc_dial"

    const-string/jumbo v1, "1"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2
    const-string/jumbo v0, "FD02001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-static {}, Laba;->a()Laba;

    move-result-object v0

    invoke-virtual {v0}, Laba;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    const-string/jumbo v0, "sc_sms"

    const-string/jumbo v1, "1"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    .line 247
    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lww;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 243
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 249
    :cond_5
    const-string/jumbo v10, "success"

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-wide v8, v2

    invoke-virtual/range {v6 .. v11}, Lww;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;I)V
    .locals 10
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "intentType"    # Lcom/iflytek/framework/business/speech/InteractionScene;
    .param p3, "errorCode"    # I

    .prologue
    .line 134
    if-eqz p2, :cond_0

    iget-object v0, p0, Lww;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v4, "appendErrorOpLog | intent type is not interaction"

    invoke-static {v0, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lww;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lww;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "opCode":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 142
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v4, "appendErrorOpLog | opCode is null"

    invoke-static {v0, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_2
    const-wide/16 v2, 0x0

    .line 147
    .local v2, "createTime":J
    const-wide/16 v6, 0x0

    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionStartTime()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    .line 148
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionStartTime()J

    move-result-wide v2

    .line 151
    :cond_3
    invoke-direct {p0, p3}, Lww;->a(I)Ljava/util/HashMap;

    move-result-object v5

    .line 152
    .local v5, "speechLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1, v5}, Labv;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    .line 153
    const-string/jumbo v4, "failure"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lww;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
