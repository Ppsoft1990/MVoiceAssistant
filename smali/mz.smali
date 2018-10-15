.class public final Lmz;
.super Ljava/lang/Object;
.source "AuthenticationHelper.java"


# static fields
.field public static a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lmz;->b:Z

    .line 61
    sput-boolean v0, Lmz;->c:Z

    return-void
.end method

.method public static a(IZ)J
    .locals 5
    .param p0, "times"    # I
    .param p1, "foreground"    # Z

    .prologue
    .line 1346
    const-wide/16 v0, 0x0

    .line 1347
    .local v0, "baseTime":J
    if-eqz p1, :cond_1

    .line 1348
    const-wide/16 v0, 0x2710

    .line 1353
    :goto_0
    const-string/jumbo v2, "AuthenticationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAuthDelayTime times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    packed-switch p0, :pswitch_data_0

    .line 1380
    :cond_0
    :goto_1
    :pswitch_0
    return-wide v0

    .line 1350
    :cond_1
    const-wide/16 v0, 0x7530

    goto :goto_0

    .line 1357
    :pswitch_1
    if-nez p1, :cond_0

    .line 1358
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    goto :goto_1

    .line 1362
    :pswitch_2
    if-nez p1, :cond_0

    .line 1363
    const-wide/32 v0, 0x493e0

    goto :goto_1

    .line 1367
    :pswitch_3
    if-eqz p1, :cond_0

    .line 1368
    const-wide/16 v0, 0x7530

    goto :goto_1

    .line 1372
    :pswitch_4
    if-eqz p1, :cond_0

    .line 1373
    const-wide/32 v0, 0xc350

    goto :goto_1

    .line 1355
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentImsi"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "randomCode"    # Ljava/lang/String;
    .param p4, "isForground"    # Z

    .prologue
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v2, "sendMsgContent":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p0}, Lna;->a(Landroid/content/Context;)Lna;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Lna;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 195
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 196
    const-string/jumbo v0, ""

    .line 198
    :cond_1
    if-nez p2, :cond_2

    .line 199
    const-string/jumbo p2, ""

    .line 207
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v4, 0x0

    .line 91
    .local v4, "imsi":Ljava/lang/String;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v12

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v12, v13}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v3

    .line 92
    .local v3, "firstSimState":Lcom/iflytek/yd/system/SimState;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v12

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v12, v13}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v10

    .line 93
    .local v10, "secondSimState":Lcom/iflytek/yd/system/SimState;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v12

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v12, v13}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "mainImsi":Ljava/lang/String;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v12

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v12, v13}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "secondImsi":Ljava/lang/String;
    invoke-static {v7}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v8

    .line 96
    .local v8, "mainType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    invoke-static {v9}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v11

    .line 97
    .local v11, "secondType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    const-string/jumbo v12, "AuthenticationHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getCurrentIMSI__1__ sim1="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " imsi1="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " sim2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " imsi2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz p0, :cond_1

    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v12}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v9, v7

    .line 172
    .end local v9    # "secondImsi":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 104
    .restart local v9    # "secondImsi":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v12}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 108
    :cond_2
    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v12, v3, :cond_3

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v12, v8}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v12, v10, :cond_3

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 109
    invoke-virtual {v12, v11}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 110
    invoke-static {v7}, Lmz;->i(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v5

    .line 111
    .local v5, "info1":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v9}, Lmz;->i(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v6

    .line 113
    .local v6, "info2":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    .line 114
    invoke-virtual {v6}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getImsi()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 120
    .end local v5    # "info1":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v6    # "info2":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_3
    const-string/jumbo v12, "M821"

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, "M823"

    .line 121
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 123
    :cond_4
    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v12, v8}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 124
    invoke-virtual {v12, v11}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 125
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v12

    .line 126
    invoke-virtual {v12}, Lhy;->c()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v2

    .line 127
    .local v2, "dataSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    const-string/jumbo v12, "AuthenticationHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dataSimCard = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p0, :cond_7

    if-eqz v2, :cond_7

    if-eq v2, p0, :cond_7

    .line 130
    sget-object v12, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne v2, v12, :cond_6

    move-object v1, v9

    .line 132
    .local v1, "currentIMSI":Ljava/lang/String;
    :goto_1
    const-string/jumbo v12, "AuthenticationHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dataSimCard != simCard ,change currentIMSI = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-nez v1, :cond_5

    const-string/jumbo v1, ""

    :cond_5
    move-object v9, v1

    .line 135
    goto/16 :goto_0

    .end local v1    # "currentIMSI":Ljava/lang/String;
    :cond_6
    move-object v1, v7

    .line 130
    goto :goto_1

    .line 140
    .end local v2    # "dataSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_7
    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-eq v12, v3, :cond_9

    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-eq v12, v10, :cond_9

    .line 141
    const-string/jumbo v4, ""

    .line 162
    :goto_2
    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v12, v3, :cond_8

    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v12, v10, :cond_8

    .line 163
    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v12, v8}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 164
    invoke-virtual {v12, v11}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 165
    invoke-static {}, Lil;->a()Lil;

    move-result-object v12

    const-string/jumbo v13, "com.iflytek.cmccIFLY_SIM_CARD_CHOOSE"

    invoke-virtual {v12, v13}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "checkedItem":I
    if-lez v0, :cond_8

    .line 167
    move-object v4, v9

    .line 171
    .end local v0    # "checkedItem":I
    :cond_8
    const-string/jumbo v12, "AuthenticationHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getCurrentIMSI__"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " returned imsi :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v4

    .line 172
    goto/16 :goto_0

    .line 144
    :cond_9
    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v12, v3, :cond_a

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 145
    invoke-virtual {v12, v8}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 146
    move-object v4, v7

    goto :goto_2

    .line 149
    :cond_a
    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v12, v10, :cond_b

    sget-object v12, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 150
    invoke-virtual {v12, v11}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 151
    move-object v4, v9

    goto :goto_2

    .line 155
    :cond_b
    sget-object v12, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v12, v3, :cond_c

    .line 156
    move-object v4, v7

    goto :goto_2

    .line 158
    :cond_c
    move-object v4, v9

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1407
    const-string/jumbo v0, "AuthenticationHelper"

    const-string/jumbo v1, "checkIsAuthSms"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-static {}, Lmz;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    const-string/jumbo v0, "AuthenticationHelper"

    const-string/jumbo v1, "isForegroundTriggerAuth is false , return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :goto_0
    return-void

    .line 1412
    :cond_0
    const/4 v7, 0x0

    .line 1413
    .local v7, "content":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1414
    .local v6, "address":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1418
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date DESC limit 5"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1420
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1421
    const-string/jumbo v0, "AuthenticationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsAuthSms cursor.getCount() \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1425
    const-string/jumbo v0, "address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1426
    const-string/jumbo v0, "AuthenticationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsAuthSms address\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const-string/jumbo v0, "body"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1429
    const-string/jumbo v0, "AuthenticationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsAuthSms content\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1433
    invoke-static {v6, v7}, Lmz;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    const-string/jumbo v0, "AuthenticationHelper"

    const-string/jumbo v1, "checkIsAuthSms find active sms, break"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-static {p0}, Lmz;->b(Landroid/content/Context;)V

    .line 1437
    const/4 v0, 0x0

    invoke-static {v0}, Lmz;->b(Z)V

    .line 1443
    :cond_1
    const-string/jumbo v0, "AuthenticationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySMS------- count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    :goto_2
    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1441
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1447
    :catch_0
    move-exception v9

    .line 1448
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "AuthenticationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsAuthSms sms error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1450
    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1445
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string/jumbo v0, "AuthenticationHelper"

    const-string/jumbo v1, "querySMS-------cursor getCount = 0 or cursor is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1450
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 284
    :try_start_0
    const-string/jumbo v0, "GB2312"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 286
    .local v5, "contents":[B
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lhp;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;[BLhr;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v5    # "contents":[B
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v7

    .line 288
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, p0, v1, p2}, Lhp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AuthenticationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataMessageBySystem error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 259
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 265
    .local v5, "newSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-eqz p3, :cond_2

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p3, v0, :cond_2

    .line 266
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 273
    :cond_2
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 274
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p2, v5}, Lmz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 276
    :cond_3
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 10
    .param p0, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p1, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 1078
    if-nez p1, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    const-string/jumbo v7, "AuthenticationHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveCachedAuthInfo_Outer() : simCard = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " auth info  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, "tokenId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getRandomCode()Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, "randomCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    .line 1085
    .local v4, "tokenImsi":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1086
    const-string/jumbo v4, ""

    .line 1088
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getInvalidTime()Ljava/lang/String;

    move-result-object v5

    .line 1089
    .local v5, "tokenInValidTime":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getValidDays()Ljava/lang/String;

    move-result-object v6

    .line 1090
    .local v6, "tokenValidDays":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    .local v0, "authInfo":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    const-string/jumbo v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string/jumbo v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    const-string/jumbo v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string/jumbo v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string/jumbo v7, "M821"

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "M823"

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1107
    :cond_3
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v7, v8}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "cacheInfo1":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1109
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string/jumbo v7, "AuthenticationHelper"

    const-string/jumbo v8, "saveCachedAuthInfo_Outer() : save in to IFLY_AUTH_INFO1"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1113
    :cond_4
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO2"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string/jumbo v7, "AuthenticationHelper"

    const-string/jumbo v8, "saveCachedAuthInfo_Outer() : save in to IFLY_AUTH_INFO2"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1117
    .end local v1    # "cacheInfo1":Ljava/lang/String;
    :cond_5
    if-eqz p0, :cond_6

    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v7}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1118
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string/jumbo v7, "AuthenticationHelper"

    const-string/jumbo v8, "saveCachedAuthInfo_Outer() : save in to IFLY_AUTH_INFO1"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1121
    :cond_6
    if-eqz p0, :cond_7

    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v7}, Lcom/iflytek/common/adaptation/entity/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1122
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO2"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string/jumbo v7, "AuthenticationHelper"

    const-string/jumbo v8, "saveCachedAuthInfo_Outer() : save in to IFLY_AUTH_INFO2"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1126
    :cond_7
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v7, "AuthenticationHelper"

    const-string/jumbo v8, "saveCachedAuthInfo_Outer() : save in to IFLY_AUTH_INFO1"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static a(Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;)V
    .locals 3
    .param p0, "state"    # Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .prologue
    .line 1330
    if-nez p0, :cond_0

    .line 1331
    const-string/jumbo v0, "AuthenticationHelper"

    const-string/jumbo v1, "setAuthQueryState state is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    sget-object p0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->unknown:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 1335
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_QUERY_STATE"

    .line 1336
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1335
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "tokenExpire"    # Ljava/lang/String;

    .prologue
    .line 834
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    sput-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 838
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    if-eqz v1, :cond_0

    .line 841
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-virtual {v1, p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 842
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-virtual {v1, p1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 843
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getJsonString()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "jsonInfo":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_MIGU_JSON_AUTH_INFO"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "imsiChangeFlag"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lmz;->b:Z

    .line 71
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lmz;->b:Z

    return v0
.end method

.method public static a(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z
    .locals 10
    .param p0, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    const/4 v3, 0x0

    .line 408
    if-nez p0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v3

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getInvalidTime()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "invalidTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getValidDays()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "validDays":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 417
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 418
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 419
    const/4 v3, 0x1

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "AuthenticationHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/common/cmccauth/log/AuthScene;)Z
    .locals 3
    .param p0, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;

    .prologue
    const/4 v0, 0x0

    .line 239
    if-eqz p0, :cond_0

    .line 240
    sget-object v1, Lmz$1;->a:[I

    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/log/AuthScene;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 242
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "currentImsi"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    const/16 v2, 0xf

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_2
    const-string/jumbo v2, "460"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .locals 3
    .param p0, "imsiNumber"    # Ljava/lang/String;

    .prologue
    .line 314
    if-eqz p0, :cond_0

    const/16 v1, 0xf

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 315
    :cond_0
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 334
    :goto_0
    return-object v1

    .line 317
    :cond_1
    const-string/jumbo v1, "460"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 318
    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "subImsi":Ljava/lang/String;
    const-string/jumbo v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "07"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "00"

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    :cond_2
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_0

    .line 323
    :cond_3
    const-string/jumbo v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "05"

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "11"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 326
    :cond_4
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_0

    .line 327
    :cond_5
    const-string/jumbo v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "06"

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 329
    :cond_6
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_0

    .line 331
    :cond_7
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_0

    .line 334
    .end local v0    # "subImsi":Ljava/lang/String;
    :cond_8
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1472
    const-string/jumbo v0, "AuthenticationHelper"

    const-string/jumbo v1, "notifySmsServiceAuth "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    if-eqz p0, :cond_0

    .line 1474
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_SEND_SUCCESS"

    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_IS_UITRIGGER"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1478
    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 3
    .param p0, "isUITrigger"    # Z

    .prologue
    .line 78
    const-string/jumbo v0, "AuthenticationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUITrigger isUITrigger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sput-boolean p0, Lmz;->c:Z

    .line 80
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lmz;->c:Z

    return v0
.end method

.method public static b(IZ)Z
    .locals 2
    .param p0, "times"    # I
    .param p1, "foreground"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1390
    if-eqz p1, :cond_1

    const/4 v1, 0x7

    if-lt p0, v1, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return v0

    .line 1394
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    .line 1398
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z
    .locals 8
    .param p0, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    const/4 v2, 0x0

    .line 432
    if-nez p0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v2

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getInvalidTime()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "invalidTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 445
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 446
    const/4 v2, 0x1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "AuthenticationHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1459
    const-string/jumbo v1, "AuthenticationHelper"

    const-string/jumbo v2, "chechSmsIllegal "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTH_RANDOM_CODE"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, "smsRandomCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1463
    const-string/jumbo v1, "10658866"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    const-string/jumbo v1, "AuthenticationHelper"

    const-string/jumbo v2, "chechSmsIllegal sms is right"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v1, 0x1

    .line 1468
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 342
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTH_INFO"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "tokenInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTH_INFO1"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTH_INFO"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 4
    .param p0, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 781
    if-nez p0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getJsonString()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "jsonInfo":Ljava/lang/String;
    const-string/jumbo v1, "AuthenticationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    sput-object p0, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 828
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_MIGU_JSON_AUTH_INFO"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 8
    .param p0, "currentIMSI"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_AUTH_INFO1"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "authInfo1":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_AUTH_INFO2"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "authInfo2":Ljava/lang/String;
    invoke-static {v0}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "cacheImsi1":Ljava/lang/String;
    invoke-static {v1}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "cacheImsi2":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 472
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 482
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 481
    :cond_2
    invoke-static {v5}, Lmz;->a(Z)V

    move v4, v5

    .line 482
    goto :goto_0
.end method

.method public static c(Z)Z
    .locals 10
    .param p0, "isForground"    # Z

    .prologue
    const/4 v5, 0x0

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 376
    .local v2, "currentTime":J
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccIFLY_AUTH_SEND_MSG_COUNT"

    invoke-virtual {v8, v9, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    .line 378
    .local v1, "sendMsgCount":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccIFLY_AUTH_SEND_MSG_TIME"

    invoke-virtual {v8, v9}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v6

    .line 379
    .local v6, "sendMsgTime":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 380
    .local v0, "currentDate":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 385
    .local v4, "sendMsgDate":Ljava/util/Date;
    if-eqz p0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v5

    .line 389
    :cond_1
    invoke-static {v4, v0}, Lbaa;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    if-nez v8, :cond_2

    .line 391
    const/4 v8, 0x3

    if-lt v1, v8, :cond_0

    .line 394
    const/4 v5, 0x1

    goto :goto_0

    .line 398
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccIFLY_AUTH_SEND_MSG_COUNT"

    invoke-virtual {v8, v9, v5}, Lil;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 8

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "randomCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 357
    .local v4, "timeStamp":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "authRandomCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_0

    .line 360
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 362
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 363
    .local v2, "random":D
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Z)V
    .locals 2
    .param p0, "result"    # Z

    .prologue
    .line 1272
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_SEND_RESULT"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Z)V

    .line 1274
    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 8
    .param p0, "currentIMSI"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 492
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "authInfo1":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO2"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "authInfo2":Ljava/lang/String;
    invoke-static {v0}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "cacheImsi1":Ljava/lang/String;
    invoke-static {v1}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "cacheImsi2":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 499
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 500
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 510
    :cond_0
    :goto_0
    return v4

    .line 504
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 509
    :cond_2
    invoke-static {v5}, Lmz;->a(Z)V

    move v4, v5

    .line 510
    goto :goto_0
.end method

.method public static e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    sput-object v2, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 620
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MIGU_JSON_AUTH_INFO"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v1

    .line 525
    :cond_1
    invoke-static {p0}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v0

    .line 526
    .local v0, "operationType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    sget-object v2, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v0, v2}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 627
    const-string/jumbo v1, "AuthenticationHelper"

    const-string/jumbo v2, "clearAllCacheAuthInfo"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    .line 629
    .local v0, "setting":Lil;
    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_INFO1"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_INFO2"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO2"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 9
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 537
    const-string/jumbo v5, "AuthenticationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearCacheAuthInfo imsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    .line 543
    .local v4, "setting":Lil;
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_INFO1"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "authInfo1":Ljava/lang/String;
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_INFO2"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "authInfo2":Ljava/lang/String;
    invoke-static {v0}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "cacheImsi1":Ljava/lang/String;
    invoke-static {v1}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "cacheImsi2":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 550
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_INFO1"

    invoke-virtual {v4, v5, v8}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_INFO2"

    invoke-virtual {v4, v5, v8}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 868
    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 895
    .local v1, "jsonAuthInfo":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 871
    .end local v1    # "jsonAuthInfo":Ljava/lang/String;
    :cond_1
    sget-object v4, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    if-eqz v4, :cond_2

    .line 872
    sget-object v3, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    goto :goto_0

    .line 875
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_MIGU_JSON_AUTH_INFO"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    .restart local v1    # "jsonAuthInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 877
    invoke-static {v1}, Lmz;->p(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v3

    sput-object v3, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 878
    sget-object v3, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    goto :goto_0

    .line 880
    :cond_3
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_MIGU_AUTH_INFO"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "authInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 882
    invoke-static {v0}, Lmz;->q(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    sput-object v4, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 883
    sget-object v4, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    if-eqz v4, :cond_0

    .line 884
    sget-object v3, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-virtual {v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getJsonString()Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 887
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_MIGU_JSON_AUTH_INFO"

    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_MIGU_AUTH_INFO"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_4
    sget-object v3, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 9
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 592
    const-string/jumbo v5, "AuthenticationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clear another cacheAuthInfo imsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    .line 599
    .local v4, "setting":Lil;
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "authInfo1":Ljava/lang/String;
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO2"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "authInfo2":Ljava/lang/String;
    invoke-static {v0}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "cacheImsi1":Ljava/lang/String;
    invoke-static {v1}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "cacheImsi2":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 607
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO2"

    invoke-virtual {v4, v5, v8}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v4, v5, v8}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static h()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 4

    .prologue
    .line 900
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_MIGU_JSON_AUTH_INFO"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "authInfo":Ljava/lang/String;
    const-string/jumbo v1, "AuthenticationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMiguCacheAuthInfo authinfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    invoke-static {v0}, Lmz;->p(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    .line 906
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 4
    .param p0, "currentIMSI"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v2

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, v3}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "imsi1":Ljava/lang/String;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v2

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, v3}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "imsi2":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 648
    invoke-static {v1}, Lmz;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    invoke-static {}, Lmz;->f()V

    goto :goto_0

    .line 653
    :cond_2
    invoke-static {v1}, Lmz;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    invoke-static {v0}, Lmz;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    invoke-static {}, Lmz;->f()V

    goto :goto_0

    .line 664
    :cond_4
    invoke-static {v0}, Lmz;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 7
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_INFO1"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "authInfo1":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_INFO2"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "authInfo2":Ljava/lang/String;
    const-string/jumbo v4, "AuthenticationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCacheAuthInfo authinfo1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string/jumbo v4, "AuthenticationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCacheAuthInfo authinfo2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {v0}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "cacheImsi1":Ljava/lang/String;
    invoke-static {v1}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "cacheImsi2":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    invoke-static {v0}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    .line 700
    :goto_0
    return-object v4

    .line 689
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 690
    invoke-static {v1}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    goto :goto_0

    .line 693
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 694
    invoke-static {v0}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    goto :goto_0

    .line 696
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 697
    invoke-static {v1}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    goto :goto_0

    .line 700
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static i()Z
    .locals 3

    .prologue
    .line 1281
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTH_SEND_RESULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j()Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
    .locals 3

    .prologue
    .line 1290
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTH_QUERY_STATE"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, "queryTokenState":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    const-string/jumbo v1, "AuthenticationHelper"

    const-string/jumbo v2, "getCacheAuthQueryState cache token is empty"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->unknown:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 1306
    :goto_0
    return-object v1

    .line 1297
    :cond_0
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1298
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1299
    :cond_1
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->overtime:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1300
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->overtime:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1301
    :cond_2
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1302
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1303
    :cond_3
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1304
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1306
    :cond_4
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->unknown:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 850
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    sput-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 854
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    if-nez v1, :cond_2

    .line 855
    invoke-static {}, Lmz;->h()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v1

    sput-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 857
    :cond_2
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    if-eqz v1, :cond_0

    .line 860
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-virtual {v1, p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setOperateType(Ljava/lang/String;)V

    .line 861
    sget-object v1, Lmz;->a:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getJsonString()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "jsonInfo":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_MIGU_JSON_AUTH_INFO"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 7
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 1137
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO1"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "authInfo1":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTH_OUTER_INFO2"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "authInfo2":Ljava/lang/String;
    const-string/jumbo v4, "AuthenticationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCacheAuthInfo_Outer authinfo1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string/jumbo v4, "AuthenticationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCacheAuthInfo_Outer authinfo2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-static {v0}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, "cacheImsi1":Ljava/lang/String;
    invoke-static {v1}, Lmz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "cacheImsi2":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1147
    invoke-static {v0}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    .line 1161
    :goto_0
    return-object v4

    .line 1150
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1151
    invoke-static {v1}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    goto :goto_0

    .line 1154
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1155
    invoke-static {v0}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    goto :goto_0

    .line 1157
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1158
    invoke-static {v1}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v4

    goto :goto_0

    .line 1161
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static k()Z
    .locals 5

    .prologue
    .line 1481
    const/4 v1, 0x0

    .line 1482
    .local v1, "isChinaMobile":Z
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    .line 1483
    .local v3, "simHelper":Lhy;
    invoke-virtual {v3}, Lhy;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1484
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v0

    .line 1485
    .local v0, "first":Lcom/iflytek/yd/system/SimType;
    sget-object v4, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v4, v0}, Lcom/iflytek/yd/system/SimType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1486
    const/4 v1, 0x1

    .line 1494
    .end local v0    # "first":Lcom/iflytek/yd/system/SimType;
    :cond_0
    :goto_0
    return v1

    .line 1487
    .restart local v0    # "first":Lcom/iflytek/yd/system/SimType;
    :cond_1
    invoke-virtual {v3}, Lhy;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1488
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v2

    .line 1489
    .local v2, "second":Lcom/iflytek/yd/system/SimType;
    sget-object v4, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v4, v2}, Lcom/iflytek/yd/system/SimType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1490
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
    .locals 2
    .param p0, "tokenStatus"    # Ljava/lang/String;

    .prologue
    .line 1208
    if-nez p0, :cond_1

    .line 1209
    const/4 v0, 0x0

    .line 1223
    :cond_0
    :goto_0
    return-object v0

    .line 1211
    :cond_1
    const/4 v0, 0x0

    .line 1212
    .local v0, "state":Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
    const-string/jumbo v1, "success"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1213
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1214
    :cond_2
    const-string/jumbo v1, "failure"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1215
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1216
    :cond_3
    const-string/jumbo v1, "getagain"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1217
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1218
    :cond_4
    const-string/jumbo v1, "overtime"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1219
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->overtime:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0

    .line 1220
    :cond_5
    const-string/jumbo v1, "nopermision"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->nopermission:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    goto :goto_0
.end method

.method public static l()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1504
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 1505
    .local v0, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return v1

    .line 1508
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1512
    const-string/jumbo v1, "01"

    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getOperateType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p0, "simCard"    # Ljava/lang/String;

    .prologue
    .line 1311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 1322
    :goto_0
    return-object v0

    .line 1315
    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0

    .line 1318
    :cond_1
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0

    .line 1322
    :cond_2
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public static m()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1518
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 1519
    .local v0, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return v1

    .line 1522
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1525
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "authInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 719
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-object v2

    .line 724
    :cond_1
    :try_start_0
    const-string/jumbo v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "splitInfo":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 728
    const/4 v3, 0x2

    aget-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    .end local v1    # "splitInfo":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static n()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1531
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 1532
    .local v0, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return v2

    .line 1535
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1538
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginType()I

    move-result v3

    if-ne v1, v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 13
    .param p0, "authenticationInfo"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x5

    const/4 v10, 0x0

    .line 736
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v2, v10

    .line 771
    :cond_0
    :goto_0
    return-object v2

    .line 741
    :cond_1
    :try_start_0
    const-string/jumbo v11, ";"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, "splitInfo":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v11, v4

    if-ge v11, v12, :cond_3

    :cond_2
    move-object v2, v10

    .line 744
    goto :goto_0

    .line 746
    :cond_3
    const/4 v11, 0x0

    aget-object v5, v4, v11

    .line 747
    .local v5, "tokenId":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v8, v4, v11

    .line 748
    .local v8, "tokenRandomCode":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v6, v4, v11

    .line 749
    .local v6, "tokenImsi":Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v7, v4, v11

    .line 750
    .local v7, "tokenInValidTime":Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v9, v4, v11

    .line 751
    .local v9, "tokenValidDays":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v2}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 752
    .local v2, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v2, v5}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v2, v8}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setRandomCode(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v2, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setValidDays(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v2, v7}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v2, v6}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setImsi(Ljava/lang/String;)V

    .line 758
    array-length v11, v4

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 759
    const/4 v11, 0x5

    aget-object v3, v4, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 761
    .local v3, "s_t_type":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 762
    .local v1, "i_t_type":I
    invoke-virtual {v2, v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 763
    .end local v1    # "i_t_type":I
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v11, "AuthenticationHelper"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 769
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v3    # "s_t_type":Ljava/lang/String;
    .end local v4    # "splitInfo":[Ljava/lang/String;
    .end local v5    # "tokenId":Ljava/lang/String;
    .end local v6    # "tokenImsi":Ljava/lang/String;
    .end local v7    # "tokenInValidTime":Ljava/lang/String;
    .end local v8    # "tokenRandomCode":Ljava/lang/String;
    .end local v9    # "tokenValidDays":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 770
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v10

    .line 771
    goto :goto_0
.end method

.method public static o()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1544
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 1545
    .local v0, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1551
    :cond_0
    :goto_0
    return v1

    .line 1548
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1551
    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getLoginType()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static p()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 4

    .prologue
    .line 1555
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_AUTH_INFO1"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, "authInfo1":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_AUTH_INFO2"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1557
    .local v1, "authInfo2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1558
    invoke-static {v0}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v2

    .line 1563
    :goto_0
    return-object v2

    .line 1560
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1561
    invoke-static {v1}, Lmz;->o(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v2

    goto :goto_0

    .line 1563
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static p(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 15
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 910
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v0, v13

    .line 942
    :goto_0
    return-object v0

    .line 914
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 915
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 916
    const-string/jumbo v14, "mTokenId"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 917
    .local v7, "mTokenId":Ljava/lang/String;
    const-string/jumbo v14, "mInValidTime"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 918
    .local v5, "mInValidTime":Ljava/lang/String;
    const-string/jumbo v14, "mOperateType"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 919
    .local v6, "mOperateType":Ljava/lang/String;
    const-string/jumbo v14, "mTokenType"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 920
    .local v8, "mTokenType":I
    const-string/jumbo v14, "mobile"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 921
    .local v9, "mobile":Ljava/lang/String;
    const-string/jumbo v14, "mobileKey"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 922
    .local v10, "mobileKey":Ljava/lang/String;
    const-string/jumbo v14, "passid"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 923
    .local v11, "passid":Ljava/lang/String;
    const-string/jumbo v14, "usessionid"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 924
    .local v12, "usessionid":Ljava/lang/String;
    const-string/jumbo v14, "loginType"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 925
    .local v4, "loginType":I
    const-string/jumbo v14, "loginid"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, "loginId":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 927
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v0, v7}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, v5}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, v6}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setOperateType(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, v8}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V

    .line 931
    invoke-virtual {v0, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobile(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, v10}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobileKey(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0, v11}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setPassid(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, v12}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setUsessionid(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setLoginType(I)V

    .line 936
    invoke-virtual {v0, v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setLoginId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 939
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "loginId":Ljava/lang/String;
    .end local v4    # "loginType":I
    .end local v5    # "mInValidTime":Ljava/lang/String;
    .end local v6    # "mOperateType":Ljava/lang/String;
    .end local v7    # "mTokenId":Ljava/lang/String;
    .end local v8    # "mTokenType":I
    .end local v9    # "mobile":Ljava/lang/String;
    .end local v10    # "mobileKey":Ljava/lang/String;
    .end local v11    # "passid":Ljava/lang/String;
    .end local v12    # "usessionid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    move-object v0, v13

    .line 940
    goto :goto_0

    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    move-object v0, v13

    .line 942
    goto :goto_0
.end method

.method private static q(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .locals 14
    .param p0, "authenticationInfo"    # Ljava/lang/String;

    .prologue
    .line 946
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 947
    const/4 v3, 0x0

    .line 990
    :cond_0
    :goto_0
    return-object v3

    .line 951
    :cond_1
    :try_start_0
    const-string/jumbo v12, ";"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 953
    .local v8, "splitInfo":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v12, v8

    const/4 v13, 0x4

    if-ge v12, v13, :cond_3

    .line 954
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 956
    :cond_3
    const/4 v12, 0x0

    aget-object v9, v8, v12

    .line 957
    .local v9, "tokenId":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v10, v8, v12

    .line 958
    .local v10, "tokenInValidTime":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v1, v8, v12

    .line 959
    .local v1, "i_o_type":Ljava/lang/String;
    new-instance v3, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 960
    .local v3, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v3, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v3, v10}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v3, v1}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setOperateType(Ljava/lang/String;)V

    .line 964
    const/4 v12, 0x3

    aget-object v7, v8, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .local v7, "s_t_type":Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 967
    .local v2, "i_t_type":I
    invoke-virtual {v3, v2}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 972
    .end local v2    # "i_t_type":I
    :goto_1
    :try_start_2
    array-length v12, v8

    const/4 v13, 0x6

    if-lt v12, v13, :cond_0

    .line 973
    const/4 v12, 0x4

    aget-object v4, v8, v12

    .line 974
    .local v4, "mobile":Ljava/lang/String;
    const/4 v12, 0x5

    aget-object v5, v8, v12

    .line 975
    .local v5, "mobileKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 976
    invoke-virtual {v3, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobile(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v3, v5}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobileKey(Ljava/lang/String;)V

    .line 980
    :cond_4
    array-length v12, v8

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 981
    const/4 v12, 0x6

    aget-object v6, v8, v12

    .line 982
    .local v6, "passid":Ljava/lang/String;
    const/4 v12, 0x7

    aget-object v11, v8, v12

    .line 983
    .local v11, "usessionid":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setPassid(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v3, v11}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setUsessionid(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 988
    .end local v1    # "i_o_type":Ljava/lang/String;
    .end local v3    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v4    # "mobile":Ljava/lang/String;
    .end local v5    # "mobileKey":Ljava/lang/String;
    .end local v6    # "passid":Ljava/lang/String;
    .end local v7    # "s_t_type":Ljava/lang/String;
    .end local v8    # "splitInfo":[Ljava/lang/String;
    .end local v9    # "tokenId":Ljava/lang/String;
    .end local v10    # "tokenInValidTime":Ljava/lang/String;
    .end local v11    # "usessionid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 990
    const/4 v3, 0x0

    goto :goto_0

    .line 968
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i_o_type":Ljava/lang/String;
    .restart local v3    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .restart local v7    # "s_t_type":Ljava/lang/String;
    .restart local v8    # "splitInfo":[Ljava/lang/String;
    .restart local v9    # "tokenId":Ljava/lang/String;
    .restart local v10    # "tokenInValidTime":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 969
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v12, "AuthenticationHelper"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private static q()Z
    .locals 1

    .prologue
    .line 1455
    invoke-static {}, Lmz;->b()Z

    move-result v0

    return v0
.end method
