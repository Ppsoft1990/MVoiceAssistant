.class public Lcn/richinfo/dm/util/AesUtil;
.super Ljava/lang/Object;


# static fields
.field private static defautKey:Ljava/lang/String;

.field public static mAesUtil:Lcn/richinfo/dm/util/AesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "aes-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeCodeAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    :try_start_0
    invoke-static {p1}, Lcn/richinfo/dm/util/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-static {v3, v2}, Lcn/richinfo/dm/util/AesUtil;->Decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static Decrypt([B[B)[B
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static EncodeAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcn/richinfo/dm/util/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcn/richinfo/dm/util/AesUtil;->Encrypt([B[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private static Encrypt([B[B)[B
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static aesgetKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v0, 0x10

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static final declared-synchronized getInstance()Lcn/richinfo/dm/util/AesUtil;
    .locals 2

    const-class v1, Lcn/richinfo/dm/util/AesUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/richinfo/dm/util/AesUtil;->mAesUtil:Lcn/richinfo/dm/util/AesUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcn/richinfo/dm/util/AesUtil;

    invoke-direct {v0}, Lcn/richinfo/dm/util/AesUtil;-><init>()V

    sput-object v0, Lcn/richinfo/dm/util/AesUtil;->mAesUtil:Lcn/richinfo/dm/util/AesUtil;

    :cond_0
    sget-object v0, Lcn/richinfo/dm/util/AesUtil;->mAesUtil:Lcn/richinfo/dm/util/AesUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aesDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/richinfo/dm/util/AesUtil;->keyFromJNI()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/richinfo/dm/util/AesUtil;->defautKey:Ljava/lang/String;

    sget-object v0, Lcn/richinfo/dm/util/AesUtil;->defautKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/richinfo/dm/util/AesUtil;->DeCodeAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aesEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/richinfo/dm/util/AesUtil;->keyFromJNI()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/richinfo/dm/util/AesUtil;->defautKey:Ljava/lang/String;

    sget-object v0, Lcn/richinfo/dm/util/AesUtil;->defautKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/richinfo/dm/util/AesUtil;->EncodeAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native keyFromJNI()Ljava/lang/String;
.end method
