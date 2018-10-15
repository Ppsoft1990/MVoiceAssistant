.class public Lcom/cmcc/migusso/auth/http/KeyHandlerNative;
.super Ljava/lang/Object;
.source "KeyHandlerNative.java"


# static fields
.field private static final K_SIZE:I = 0x10

.field private static final STRING_NULL:Ljava/lang/String; = "null"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "khmigu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanAllUserInfo()V
    .locals 0

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->deleteAllUserInfoNative()V

    return-void
.end method

.method private static native decryptForMiguPay([B)[B
.end method

.method private static native deleteAllUserInfoNative()V
.end method

.method public static deleteUserInfo(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->deleteUserInfoNative(Ljava/lang/String;)Z

    return-void
.end method

.method private static native deleteUserInfoNative(Ljava/lang/String;)Z
.end method

.method private static native encryptForMiguPay([B)[B
.end method

.method private static native generateKeyGBA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native generateKeyHTTPNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native generateKeyHTTPSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native generateKeyQRC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native generateKeySMSSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native generateKeyWap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native getAliSecret1()Ljava/lang/String;
.end method

.method private static native getAliSecret2()Ljava/lang/String;
.end method

.method private static native getAliSecret3()Ljava/lang/String;
.end method

.method private static native getAliSecret4()Ljava/lang/String;
.end method

.method private static native getAliSecret5()Ljava/lang/String;
.end method

.method private static native getAliSecret6()Ljava/lang/String;
.end method

.method private static native getAliSecret7()Ljava/lang/String;
.end method

.method private static native getAliSecret8()Ljava/lang/String;
.end method

.method private static native getAliSecret9()Ljava/lang/String;
.end method

.method private static native getAliSecretA()Ljava/lang/String;
.end method

.method private static native getAliSecretB()Ljava/lang/String;
.end method

.method private static native getAliSecretC()Ljava/lang/String;
.end method

.method private static native getAliSecretD()Ljava/lang/String;
.end method

.method public static getKeyByHTTPSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    invoke-static {p0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->generateKeyHTTPSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getKeyByQRC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    invoke-static {p0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->generateKeyQRC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getKeyByUPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    invoke-static {p0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->generateKeyHTTPNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getKeyByUSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    invoke-static {p0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->generateKeyHTTPNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getKeyByWap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    invoke-static {p0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->generateKeyWap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native getPaySecret1()Ljava/lang/String;
.end method

.method private static native getPaySecret2()Ljava/lang/String;
.end method

.method private static native getPaySecretE()Ljava/lang/String;
.end method

.method private static native getPaySecretG1()Ljava/lang/String;
.end method

.method private static native getPaySecretG2()Ljava/lang/String;
.end method

.method private static native getPaySecretG3()Ljava/lang/String;
.end method

.method private static native getPaySecretG4()Ljava/lang/String;
.end method

.method private static native getPaySecretG5()Ljava/lang/String;
.end method

.method private static native getPersonalKeyNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPersonalSecret(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uname["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getPassidByUsername(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "passid["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPersonalKeyNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getQRSecret(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret4()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret7()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret8()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecret9()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecretA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecretB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecretC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getQRSecretD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static native getQRSecret1()Ljava/lang/String;
.end method

.method private static native getQRSecret2()Ljava/lang/String;
.end method

.method private static native getQRSecret3()Ljava/lang/String;
.end method

.method private static native getQRSecret4()Ljava/lang/String;
.end method

.method private static native getQRSecret5()Ljava/lang/String;
.end method

.method private static native getQRSecret6()Ljava/lang/String;
.end method

.method private static native getQRSecret7()Ljava/lang/String;
.end method

.method private static native getQRSecret8()Ljava/lang/String;
.end method

.method private static native getQRSecret9()Ljava/lang/String;
.end method

.method private static native getQRSecretA()Ljava/lang/String;
.end method

.method private static native getQRSecretB()Ljava/lang/String;
.end method

.method private static native getQRSecretC()Ljava/lang/String;
.end method

.method private static native getQRSecretD()Ljava/lang/String;
.end method

.method public static getSecret(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret4()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret7()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret8()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret9()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecretA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecretB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecretC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecretD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecret1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecret2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecretE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecretG1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecretG2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecretG3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecretG4()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getPaySecretG5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecretE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lauthcommon/bu;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :pswitch_17
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret1()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret2()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_19
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret3()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1a
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret4()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret5()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1c
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret6()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1d
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret7()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1e
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret8()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1f
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecret9()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_20
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecretA()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_21
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecretB()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_22
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecretC()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_23
    invoke-static {}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getAliSecretD()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method private static native getSecret1()Ljava/lang/String;
.end method

.method private static native getSecret2()Ljava/lang/String;
.end method

.method private static native getSecret3()Ljava/lang/String;
.end method

.method private static native getSecret4()Ljava/lang/String;
.end method

.method private static native getSecret5()Ljava/lang/String;
.end method

.method private static native getSecret6()Ljava/lang/String;
.end method

.method private static native getSecret7()Ljava/lang/String;
.end method

.method private static native getSecret8()Ljava/lang/String;
.end method

.method private static native getSecret9()Ljava/lang/String;
.end method

.method private static native getSecretA()Ljava/lang/String;
.end method

.method private static native getSecretB()Ljava/lang/String;
.end method

.method private static native getSecretC()Ljava/lang/String;
.end method

.method private static native getSecretD()Ljava/lang/String;
.end method

.method private static native getSecretE()Ljava/lang/String;
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uname["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], sourceid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], sqn["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getPassidByUsername(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "passid["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getTokenNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "token["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static native getTokenNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.end method

.method private static native initNative(Ljava/lang/String;)V
.end method

.method public static initNativeEnv(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initNativeEnv: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->initNative(Ljava/lang/String;)V

    return-void
.end method

.method public static miguPayDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->decryptForMiguPay([B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v1, v2

    new-array v3, v3, [B

    sub-int/2addr v1, v2

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static miguPayEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    rem-int/lit8 v3, v2, 0x10

    rsub-int/lit8 v3, v3, 0x10

    add-int v4, v2, v3

    new-array v4, v4, [B

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :goto_1
    add-int v5, v2, v3

    if-ge v0, v5, :cond_2

    int-to-byte v5, v3

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->encryptForMiguPay([B)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
