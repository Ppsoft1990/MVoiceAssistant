.class public Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "MtkMmsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mtk6572MmsAdapter"


# instance fields
.field private final SIM_ID_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 38
    const-string/jumbo v0, "simId"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->SIM_ID_KEY:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private extractBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 188
    :cond_0
    const-string/jumbo v2, ""

    .line 196
    :goto_0
    return-object v2

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "body":Ljava/lang/StringBuilder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 193
    .local v1, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    .end local v1    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getIccId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 611
    const/4 v4, 0x0

    .line 612
    .local v4, "iccId":Ljava/lang/String;
    const-string/jumbo v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 614
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 615
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSimSerialNumberGemini"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 617
    .local v3, "getSimSerialNumberGemini":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 618
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 617
    invoke-static {v3, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getSimSerialNumberGemini":Ljava/lang/reflect/Method;
    :goto_0
    const-string/jumbo v6, "Mtk6572MmsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getIccId|simSlotId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , icc1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-object v4

    .line 619
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Mtk6572MmsAdapter"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getIdBySlot14(Landroid/content/Context;I)I
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 461
    const-string/jumbo v5, "Mtk6572MmsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getIdBySlot9 | simSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string/jumbo v5, "android.provider.Telephony$SIMInfo"

    .line 464
    invoke-static {v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 465
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getSIMInfoBySlot"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    invoke-static {v0, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 467
    .local v1, "getIdBySlot":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 468
    .local v4, "simInfo":Ljava/lang/Object;
    const-string/jumbo v5, "mSimId"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 469
    .local v2, "mSimId":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 470
    .local v3, "simId":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v5

    return v5
.end method

.method private getIdBySlot16(Landroid/content/Context;I)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 384
    const-string/jumbo v4, "Mtk6572MmsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getIdBySlot16 | simSlotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string/jumbo v4, "com.mediatek.telephony.SimInfoManager"

    .line 387
    invoke-static {v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 388
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getIdBySlot"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 391
    .local v1, "getIdBySlot":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 392
    .local v2, "id":J
    long-to-int v4, v2

    return v4
.end method

.method private getIdBySlot9(Landroid/content/Context;I)I
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 421
    const-string/jumbo v5, "Mtk6572MmsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getIdBySlot9 | simSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string/jumbo v5, "android.provider.Telephony$SIMInfo"

    .line 424
    invoke-static {v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 425
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getSIMInfoBySlot"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    invoke-static {v0, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 427
    .local v1, "getSIMInfoBySlot":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v8

    .line 428
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 427
    invoke-static {v1, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 429
    .local v4, "obj":Ljava/lang/Object;
    const-string/jumbo v5, "mSimId"

    invoke-static {v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 430
    .local v2, "mSimId":Ljava/lang/Long;
    const-string/jumbo v5, "mSlot"

    invoke-static {v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 431
    .local v3, "mSlot":I
    const-string/jumbo v5, "Mtk6572MmsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]-->mSimId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v5

    return v5
.end method

.method private getIdBySlotFromSiminfo(Landroid/content/Context;I)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 581
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getIccId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 582
    .local v8, "iccId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    .end local p2    # "slotId":I
    :goto_0
    return p2

    .line 586
    .restart local p2    # "slotId":I
    :cond_0
    move v9, p2

    .line 587
    .local v9, "id":I
    const/4 v6, 0x0

    .line 589
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 590
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    .line 591
    .local v4, "args":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v3

    const-string/jumbo v3, " icc_id = ? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 594
    if-eqz v6, :cond_1

    .line 595
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 602
    :cond_1
    if-eqz v6, :cond_2

    .line 603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 606
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "args":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v0, "Mtk6572MmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIdBySlot | slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-->id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v9

    .line 607
    goto :goto_0

    .line 599
    :catch_0
    move-exception v7

    .line 600
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "Mtk6572MmsAdapter"

    const-string/jumbo v2, ""

    invoke-static {v0, v2, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    if-eqz v6, :cond_2

    .line 603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 602
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getSlotById14(Landroid/content/Context;I)I
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 474
    const-string/jumbo v5, "Mtk6572MmsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getIdBySlot9 | simSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string/jumbo v5, "android.provider.Telephony$SIMInfo"

    .line 477
    invoke-static {v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 478
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getSIMInfoById"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v10

    invoke-static {v0, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 482
    .local v1, "getIdBySlot":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    int-to-long v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v1, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 483
    .local v3, "simInfo":Ljava/lang/Object;
    const-string/jumbo v5, "mSlot"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 484
    .local v2, "mSimId":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 485
    .local v4, "simSlotId":I
    return v4
.end method

.method private getSlotById16(Landroid/content/Context;I)I
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 396
    const-string/jumbo v3, "Mtk6572MmsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSlotById16 | simSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string/jumbo v3, "com.mediatek.telephony.SimInfoManager"

    .line 399
    invoke-static {v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 400
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "getSlotById"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 403
    .local v1, "getSlotById":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    int-to-long v6, p2

    .line 404
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    .line 403
    invoke-static {v1, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 405
    .local v2, "simSlotId":I
    const-string/jumbo v3, "Mtk6572MmsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSlotById16 | simSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "----->simSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v2
.end method

.method private getSlotById9(Landroid/content/Context;I)I
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 438
    const-string/jumbo v6, "Mtk6572MmsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSlotById9 | simId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string/jumbo v6, "android.provider.Telephony$SIMInfo"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 440
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSIMInfoById"

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v10

    invoke-static {v0, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 442
    .local v1, "getSIMInfoBySlot":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v9

    int-to-long v8, p2

    .line 443
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    .line 442
    invoke-static {v1, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 444
    .local v5, "obj":Ljava/lang/Object;
    const-string/jumbo v6, "mSimId"

    invoke-static {v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 445
    .local v2, "mSimId":J
    const-string/jumbo v6, "mSlot"

    invoke-static {v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 446
    .local v4, "mSlot":I
    const-string/jumbo v6, "Mtk6572MmsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "id["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]-->mSimId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v4
.end method

.method private saveSmsToInBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v5, 0x0

    .line 263
    .local v5, "uri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v6, "android.provider.Telephony$Sms$Inbox"

    .line 264
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 265
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v6, 0x8

    new-array v4, v6, [Ljava/lang/Class;

    .line 266
    .local v4, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v4, v6

    .line 267
    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    .line 268
    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    .line 269
    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    .line 270
    const/4 v6, 0x4

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    .line 271
    const/4 v6, 0x5

    const-class v7, Ljava/lang/Long;

    aput-object v7, v4, v6

    .line 272
    const/4 v6, 0x6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    .line 273
    const/4 v6, 0x7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    .line 275
    const-string/jumbo v6, "addMessage"

    invoke-virtual {v1, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    .local v0, "addMessageToUri":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 278
    const/16 v6, 0x8

    new-array v3, v6, [Ljava/lang/Object;

    .line 279
    .local v3, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v3, v6

    .line 280
    const/4 v6, 0x1

    aput-object p1, v3, v6

    .line 281
    const/4 v6, 0x2

    aput-object p2, v3, v6

    .line 282
    const/4 v6, 0x3

    aput-object p3, v3, v6

    .line 283
    const/4 v6, 0x4

    const/4 v7, 0x0

    aput-object v7, v3, v6

    .line 284
    const/4 v6, 0x5

    aput-object p4, v3, v6

    .line 285
    const/4 v6, 0x6

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v6

    .line 286
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, p6}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getIdBySlot(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 287
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .restart local v5    # "uri":Landroid/net/Uri;
    return-object v5

    .line 288
    .end local v0    # "addMessageToUri":Ljava/lang/reflect/Method;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;

    invoke-direct {v6, v2}, Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method private saveSmsToOutBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J
    .param p8, "simId"    # I

    .prologue
    .line 213
    const/4 v6, 0x0

    .line 215
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v7, "android.provider.Telephony$Sms$Outbox"

    .line 216
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 217
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v7, 0x8

    new-array v5, v7, [Ljava/lang/Class;

    .line 218
    .local v5, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v5, v7

    .line 219
    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    .line 220
    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    .line 221
    const/4 v7, 0x3

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    .line 222
    const/4 v7, 0x4

    const-class v8, Ljava/lang/Long;

    aput-object v8, v5, v7

    .line 223
    const/4 v7, 0x5

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    .line 224
    const/4 v7, 0x6

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    .line 225
    const/4 v7, 0x7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    .line 227
    const-string/jumbo v7, "addMessage"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 229
    .local v1, "addMessageToUri":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 230
    const/16 v7, 0x8

    new-array v4, v7, [Ljava/lang/Object;

    .line 231
    .local v4, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v4, v7

    .line 232
    const/4 v7, 0x1

    aput-object p1, v4, v7

    .line 233
    const/4 v7, 0x2

    aput-object p2, v4, v7

    .line 234
    const/4 v7, 0x3

    aput-object p3, v4, v7

    .line 235
    const/4 v7, 0x4

    aput-object p4, v4, v7

    .line 236
    const/4 v7, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v7

    .line 237
    const/4 v7, 0x6

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    .line 238
    const/4 v7, 0x7

    iget-object v8, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, p8

    invoke-virtual {p0, v8, v0}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getIdBySlot(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    .line 239
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/net/Uri;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "addMessageToUri":Ljava/lang/reflect/Method;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "params":[Ljava/lang/Object;
    .end local v5    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-object v6

    .line 240
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Mtk6572MmsAdapter"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;JJ)V
    .locals 24
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "serviceCenter"    # Ljava/lang/String;
    .param p3, "simId"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "threadId"    # J
    .param p8, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 80
    const-string/jumbo v20, "Mtk6572MmsAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "sendTextMessageGemini|phone = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", message = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v18

    .line 83
    .local v18, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 85
    .local v14, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 86
    .local v13, "messageCount":I
    const/4 v7, 0x0

    .line 87
    .local v7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v17, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 91
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v20, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v11, "itSend":Landroid/content/Intent;
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 98
    .end local v11    # "itSend":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string/jumbo v20, "android.telephony.gemini.GeminiSmsManager"

    .line 99
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 101
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 102
    .local v19, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    .line 103
    const/16 v20, 0x1

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    .line 104
    const/16 v20, 0x2

    const-class v21, Ljava/util/ArrayList;

    aput-object v21, v19, v20

    .line 105
    const/16 v20, 0x3

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    .line 106
    const/16 v20, 0x4

    const-class v21, Ljava/util/ArrayList;

    aput-object v21, v19, v20

    .line 107
    const/16 v20, 0x5

    const-class v21, Ljava/util/ArrayList;

    aput-object v21, v19, v20

    .line 109
    const-string/jumbo v20, "sendMultipartTextMessageGemini"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 111
    .local v16, "sendTextMessage":Ljava/lang/reflect/Method;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/Object;

    .line 113
    .local v15, "params":[Ljava/lang/Object;
    const/16 v20, 0x0

    aput-object p1, v15, v20

    .line 114
    const/16 v20, 0x1

    aput-object p2, v15, v20

    .line 115
    const/16 v20, 0x2

    aput-object v14, v15, v20

    .line 116
    const/16 v20, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v15, v20

    .line 117
    const/16 v20, 0x4

    aput-object v17, v15, v20

    .line 118
    const/16 v20, 0x5

    aput-object v7, v15, v20

    .line 120
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 121
    .end local v15    # "params":[Ljava/lang/Object;
    .end local v16    # "sendTextMessage":Ljava/lang/reflect/Method;
    .end local v19    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v8

    .line 125
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v20, "com.mediatek.telephony.SmsManagerEx"

    .line 126
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 128
    .local v5, "SmsManagerExcls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v20, "getDefault"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v5, v0, v1}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 130
    .local v10, "getDefault":Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v10, v0, v1}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, "SmsManagerExObj":Ljava/lang/Object;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 132
    .restart local v19    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    .line 133
    const/16 v20, 0x1

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    .line 134
    const/16 v20, 0x2

    const-class v21, Ljava/util/ArrayList;

    aput-object v21, v19, v20

    .line 135
    const/16 v20, 0x3

    const-class v21, Ljava/util/ArrayList;

    aput-object v21, v19, v20

    .line 136
    const/16 v20, 0x4

    const-class v21, Ljava/util/ArrayList;

    aput-object v21, v19, v20

    .line 137
    const/16 v20, 0x5

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    .line 139
    const-string/jumbo v20, "sendMultipartTextMessage"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 141
    .restart local v16    # "sendTextMessage":Ljava/lang/reflect/Method;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 142
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/Object;

    .line 143
    .restart local v15    # "params":[Ljava/lang/Object;
    const/16 v20, 0x0

    aput-object p1, v15, v20

    .line 144
    const/16 v20, 0x1

    aput-object p2, v15, v20

    .line 145
    const/16 v20, 0x2

    aput-object v14, v15, v20

    .line 146
    const/16 v20, 0x3

    aput-object v17, v15, v20

    .line 147
    const/16 v20, 0x4

    aput-object v7, v15, v20

    .line 148
    const/16 v20, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v15, v20

    .line 150
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 151
    .end local v4    # "SmsManagerExObj":Ljava/lang/Object;
    .end local v5    # "SmsManagerExcls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "getDefault":Ljava/lang/reflect/Method;
    .end local v15    # "params":[Ljava/lang/Object;
    .end local v16    # "sendTextMessage":Ljava/lang/reflect/Method;
    .end local v19    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v9

    .line 153
    .local v9, "e2":Ljava/lang/Exception;
    const-string/jumbo v20, "Mtk6572MmsAdapter"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    new-instance v20, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v20
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 5
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v3}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 309
    :goto_0
    return-object v3

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 304
    .local v1, "simId":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :goto_1
    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v1}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getSlotById(Landroid/content/Context;I)I

    move-result v2

    .line 309
    .local v2, "slotId":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0

    .line 305
    .end local v2    # "slotId":I
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Mtk6572MmsAdapter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "slotId":I
    :cond_1
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v0}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "sim_id"

    goto :goto_0
.end method

.method public getIdBySlot(Landroid/content/Context;I)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simSlotId"    # I

    .prologue
    .line 331
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 332
    .local v1, "sdk":I
    const/4 v2, 0x0

    .line 334
    .local v2, "simId":I
    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 335
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getIdBySlot16(Landroid/content/Context;I)I

    move-result v2

    .line 346
    :goto_0
    return v2

    .line 336
    :cond_0
    const/16 v3, 0xe

    if-lt v1, v3, :cond_1

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getIdBySlot14(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0

    .line 339
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getIdBySlot9(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Mtk6572MmsAdapter"

    const-string/jumbo v4, "getIdBySlot | getIdBySlotXXX() error, so call getIdBySlotFromSiminfo"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getIdBySlotFromSiminfo(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 161
    const-string/jumbo v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "simId":I
    return v0
.end method

.method public getSlotById(Landroid/content/Context;I)I
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simId"    # I

    .prologue
    .line 357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 358
    .local v1, "sdk":I
    const/4 v2, 0x0

    .line 360
    .local v2, "slotId":I
    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 361
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getSlotById16(Landroid/content/Context;I)I

    move-result v2

    .line 371
    :goto_0
    return v2

    .line 362
    :cond_0
    const/16 v3, 0xe

    if-lt v1, v3, :cond_1

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getSlotById14(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getSlotById9(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->getSlotByIdFromSiminfo(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0
.end method

.method public getSlotByIdFromSiminfo(Landroid/content/Context;I)I
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "simId"    # I

    .prologue
    .line 556
    const/4 v8, 0x0

    .line 557
    .local v8, "slotId":I
    const/4 v6, 0x0

    .line 559
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://telephony/siminfo"

    .line 561
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    int-to-long v2, p2

    .line 560
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "slot"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 559
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 564
    if-eqz v6, :cond_0

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 572
    :cond_0
    if-eqz v6, :cond_1

    .line 573
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 576
    :cond_1
    :goto_0
    const-string/jumbo v0, "Mtk6572MmsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSlotById | id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-->slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v8

    .line 569
    :catch_0
    move-exception v7

    .line 570
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "Mtk6572MmsAdapter"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    if-eqz v6, :cond_1

    .line 573
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 572
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 573
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public saveMessagesToInBox([Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 10
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 168
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v0}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->saveMessagesToInBox([Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    aget-object v7, p1, v5

    .line 178
    .local v7, "msg":Landroid/telephony/SmsMessage;
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->extractBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "body":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "subject":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p0

    move v6, p2

    .line 182
    invoke-direct/range {v0 .. v6}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->saveSmsToInBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public saveMessagesToOutbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIZ)Landroid/net/Uri;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J
    .param p8, "simId"    # I
    .param p9, "addToOutBox"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;
        }
    .end annotation

    .prologue
    .line 50
    const-string/jumbo v0, "Mtk6572MmsAdapter"

    const-string/jumbo v1, "saveMessagesToOutbox"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v0}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->saveMessagesToOutbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIZ)Landroid/net/Uri;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->saveSmsToOutBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 17
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 491
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendDataMessage | address = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " simId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v13}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v13

    if-nez v13, :cond_0

    .line 494
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    const-string/jumbo v14, "sendDataMessage | it\'s a single card, call super.sendDataMessage"

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-super/range {p0 .. p4}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 553
    :goto_0
    return-void

    .line 501
    :cond_0
    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_1

    const/4 v10, 0x0

    .line 502
    .local v10, "phoneType":I
    :goto_1
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendDataMessage | phoneType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v5, 0x0

    .line 506
    .local v5, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v11, 0x0

    .line 507
    .local v11, "sentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v13, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    const-class v16, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .local v8, "itSend":Landroid/content/Intent;
    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v13, v14, v1}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v8, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 513
    :try_start_0
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    const-string/jumbo v14, "sendDataMessage | call GeminiSmsManager.sendDataMessageGemini()---start"

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v13, 0x7

    new-array v3, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v14, v3, v13

    const/4 v13, 0x3

    const-class v14, [B

    aput-object v14, v3, v13

    const/4 v13, 0x4

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v3, v13

    const/4 v13, 0x5

    const-class v14, Landroid/app/PendingIntent;

    aput-object v14, v3, v13

    const/4 v13, 0x6

    const-class v14, Landroid/app/PendingIntent;

    aput-object v14, v3, v13

    .line 519
    .local v3, "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v13, 0x7

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v2, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x3

    aput-object p4, v2, v13

    const/4 v13, 0x4

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x5

    aput-object v11, v2, v13

    const/4 v13, 0x6

    aput-object v5, v2, v13

    .line 521
    .local v2, "args":[Ljava/lang/Object;
    const-string/jumbo v4, "android.telephony.gemini.GeminiSmsManager"

    .line 522
    .local v4, "className":Ljava/lang/String;
    const-string/jumbo v9, "sendDataMessageGemini"

    .line 523
    .local v9, "methodName":Ljava/lang/String;
    invoke-static {v4, v9, v2, v3}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 524
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    const-string/jumbo v14, "sendDataMessage | call GeminiSmsManager.sendDataMessageGemini()---end"

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 526
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v3    # "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "className":Ljava/lang/String;
    .end local v9    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 527
    .local v6, "e1":Ljava/lang/Exception;
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    const-string/jumbo v14, "sendDataMessage | GeminiSmsManager.sendDataMessageGemini() error"

    invoke-static {v13, v14, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    :try_start_1
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    const-string/jumbo v14, "sendDataMessage | call SmsManagerEx.sendDataMessage()---start"

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string/jumbo v4, "com.mediatek.telephony.SmsManagerEx"

    .line 535
    .restart local v4    # "className":Ljava/lang/String;
    const-string/jumbo v13, "getDefault"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v4, v13, v14, v15}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    .line 537
    .local v12, "smsMgrEx":Ljava/lang/Object;
    const/4 v13, 0x7

    new-array v3, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v14, v3, v13

    const/4 v13, 0x3

    const-class v14, [B

    aput-object v14, v3, v13

    const/4 v13, 0x4

    const-class v14, Landroid/app/PendingIntent;

    aput-object v14, v3, v13

    const/4 v13, 0x5

    const-class v14, Landroid/app/PendingIntent;

    aput-object v14, v3, v13

    const/4 v13, 0x6

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v3, v13

    .line 540
    .restart local v3    # "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v13, 0x7

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v2, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x3

    aput-object p4, v2, v13

    const/4 v13, 0x4

    aput-object v11, v2, v13

    const/4 v13, 0x5

    aput-object v5, v2, v13

    const/4 v13, 0x6

    .line 541
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v13

    .line 542
    .restart local v2    # "args":[Ljava/lang/Object;
    const-string/jumbo v13, "sendDataMessage"

    invoke-static {v12, v13, v3, v2}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    const-string/jumbo v14, "sendDataMessage | call SmsManagerEx.sendDataMessage()---end"

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 546
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v3    # "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "className":Ljava/lang/String;
    .end local v12    # "smsMgrEx":Ljava/lang/Object;
    :catch_1
    move-exception v7

    .line 547
    .local v7, "e2":Ljava/lang/Exception;
    const-string/jumbo v13, "Mtk6572MmsAdapter"

    const-string/jumbo v14, "sendDataMessage | SmsManagerEx.sendDataMessage() error"

    invoke-static {v13, v14, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    new-instance v13, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v13, v7}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 501
    .end local v5    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v6    # "e1":Ljava/lang/Exception;
    .end local v7    # "e2":Ljava/lang/Exception;
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v10    # "phoneType":I
    .end local v11    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "scCenter"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "threadId"    # J
    .param p7, "messageId"    # J
    .param p9, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v0}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 75
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p9

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 73
    invoke-direct/range {v0 .. v9}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;JJ)V

    goto :goto_0
.end method
