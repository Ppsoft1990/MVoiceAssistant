.class public Lcom/iflytek/yd/util/security/DES3Encrypter;
.super Ljava/lang/Object;


# static fields
.field static final Algorithm:Ljava/lang/String; = "DESede/ECB /PKCS5Padding"

.field private static KEY:[[B = null

.field static final TAG:Ljava/lang/String; = "DES3Encrypter"

.field static c1:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x18

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/yd/util/security/DES3Encrypter;->c1:Ljavax/crypto/Cipher;

    :try_start_0
    const-string/jumbo v0, "DESede/ECB /PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lcom/iflytek/yd/util/security/DES3Encrypter;->c1:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v0, 0xa

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/yd/util/security/DES3Encrypter;->KEY:[[B

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DES3Encrypter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x6at
        0x33t
        0x26t
        0x40t
        0x39t
        0x5et
        0x69t
        0x24t
        0x2dt
        0x2bt
        0x6ct
        0x29t
        0x6bt
        0x33t
        0x21t
        0x7et
        0x5et
        0x69t
        0x24t
        0x2dt
        0x2bt
        0x6ct
        0x6ct
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x40t
        -0x3ft
        -0x3ft
        -0x7ft
        0x1t
        0x40t
        -0x3dt
        0x1t
        0x3t
        -0x40t
        0x2t
        -0x80t
        -0x3et
        0x41t
        0x41t
        0x5t
        0x0t
        -0x3bt
        -0x3ft
        -0x3ct
        -0x7ft
        0x4t
    .end array-data

    :array_2
    .array-data 1
        -0x3at
        0x1t
        0x6t
        -0x40t
        0x7t
        -0x80t
        -0x39t
        0x41t
        0x5t
        0x0t
        -0x3bt
        -0x3ft
        -0x3ct
        -0x7ft
        0x4t
        0x40t
        0xft
        0x0t
        -0x31t
        -0x3ft
        -0x32t
        -0x7ft
        0xet
        0x40t
    .end array-data

    :array_3
    .array-data 1
        -0x34t
        0x1t
        0xct
        -0x40t
        0xdt
        -0x80t
        -0x33t
        0x41t
        0xft
        0x0t
        -0x31t
        -0x3ft
        -0x32t
        -0x7ft
        0xet
        0x40t
        -0x37t
        0x1t
        0x9t
        -0x40t
        0x8t
        -0x80t
        -0x38t
        0x41t
    .end array-data

    :array_4
    .array-data 1
        -0x28t
        0x1t
        0x18t
        -0x40t
        0x19t
        -0x80t
        -0x27t
        0x41t
        0x1bt
        0x0t
        -0x25t
        -0x3ft
        -0x26t
        -0x7ft
        0x1at
        0x40t
        -0x23t
        0x1t
        0x1dt
        -0x40t
        0x1ct
        -0x80t
        -0x24t
        0x41t
    .end array-data

    :array_5
    .array-data 1
        0x1et
        0x0t
        -0x22t
        -0x3ft
        -0x21t
        -0x7ft
        0x1ft
        0x40t
        -0x23t
        0x1t
        0x1dt
        -0x40t
        0x1ct
        -0x80t
        -0x24t
        0x41t
        0x1t
        0x17t
        -0x40t
        0x16t
        -0x80t
        -0x2at
        0x41t
        -0x38t
    .end array-data

    :array_6
    .array-data 1
        0x14t
        0x0t
        -0x2ct
        -0x3ft
        -0x2bt
        -0x7ft
        0x15t
        0x40t
        -0x29t
        0x1t
        0x17t
        -0x40t
        0x16t
        -0x80t
        -0x2at
        0x41t
        0x41t
        0x11t
        0x0t
        -0x2ft
        -0x3ft
        -0x30t
        -0x7ft
        0x10t
    .end array-data

    :array_7
    .array-data 1
        -0x2et
        0x1t
        0x12t
        -0x40t
        0x13t
        -0x80t
        -0x2dt
        0x41t
        0x11t
        0x0t
        -0x2ft
        -0x3ft
        -0x30t
        -0x7ft
        0x10t
        0x40t
        -0x7ft
        0xbt
        0x40t
        -0x37t
        0x1t
        0x9t
        -0x40t
        -0x7t
    .end array-data

    :array_8
    .array-data 1
        -0x10t
        0x1t
        0x30t
        -0x40t
        0x31t
        -0x80t
        -0xft
        0x41t
        0x33t
        0x0t
        -0xdt
        -0x3ft
        -0xet
        -0x7ft
        0x32t
        0x40t
        0x3at
        -0x40t
        0x3bt
        -0x80t
        -0x5t
        0x41t
        0x39t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x36t
        0x0t
        -0xat
        -0x3ft
        -0x9t
        -0x7ft
        0x37t
        0x40t
        -0xbt
        0x1t
        0x35t
        -0x40t
        0x34t
        -0x80t
        -0xct
        0x41t
        0x9t
        -0x40t
        0x8t
        -0x80t
        -0x38t
        0x41t
        0x1bt
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BI)[B
    .locals 3

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/iflytek/yd/util/security/DES3Encrypter;->KEY:[[B

    aget-object v1, v1, p1

    const-string/jumbo v2, "DESede/ECB /PKCS5Padding"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v1, Lcom/iflytek/yd/util/security/DES3Encrypter;->c1:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object v0, Lcom/iflytek/yd/util/security/DES3Encrypter;->c1:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DES3Encrypter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encrypt([BI)[B
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/iflytek/yd/util/security/DES3Encrypter;->KEY:[[B

    aget-object v1, v1, p1

    const-string/jumbo v2, "DESede/ECB /PKCS5Padding"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/iflytek/yd/util/security/DES3Encrypter;->c1:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/iflytek/yd/util/security/DES3Encrypter;->c1:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DES3Encrypter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DES3Encrypter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "DES3Encrypter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
