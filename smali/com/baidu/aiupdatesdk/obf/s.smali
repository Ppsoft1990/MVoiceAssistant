.class public Lcom/baidu/aiupdatesdk/obf/s;
.super Ljava/lang/Object;
.source "DESede.java"


# instance fields
.field private a:Ljava/security/spec/KeySpec;

.field private b:Ljava/lang/String;

.field private c:Ljavax/crypto/SecretKey;

.field private d:Ljavax/crypto/SecretKeyFactory;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v2, "DESede/CBC/PKCS7Padding"

    iput-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->b:Ljava/lang/String;

    .line 36
    const-string/jumbo v2, "utf-8"

    iput-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->e:Ljava/lang/String;

    .line 43
    :try_start_0
    const-string/jumbo v2, "DESede"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 44
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->c:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "keyGen":Ljavax/crypto/KeyGenerator;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "keyByte"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "DESede/CBC/PKCS7Padding"

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/s;->b:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/s;->e:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/s;->c([B)V

    .line 57
    return-void
.end method

.method private c([B)V
    .locals 3
    .param p1, "keyByte"    # [B

    .prologue
    .line 76
    :try_start_0
    const-string/jumbo v1, "DESede"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/s;->d:Ljavax/crypto/SecretKeyFactory;

    .line 77
    new-instance v1, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/s;->d([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/s;->a:Ljava/security/spec/KeySpec;

    .line 78
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/s;->d:Ljavax/crypto/SecretKeyFactory;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->a:Ljava/security/spec/KeySpec;

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/s;->c:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v0

    .line 84
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d([B)[B
    .locals 7
    .param p1, "keyByte"    # [B

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    .line 89
    array-length v1, p1

    .line 90
    .local v1, "lg":I
    array-length v4, p1

    if-ge v4, v6, :cond_1

    .line 91
    new-array v2, v6, [B

    .line 92
    .local v2, "newKey":[B
    rsub-int/lit8 v4, v1, 0x18

    new-array v3, v4, [B

    .line 93
    .local v3, "temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x18

    if-ge v0, v4, :cond_0

    .line 94
    aput-byte v5, v3, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p1, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    rsub-int/lit8 v4, v1, 0x18

    invoke-static {v3, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    move-object p1, v2

    .line 100
    .end local v0    # "i":I
    .end local v2    # "newKey":[B
    .end local v3    # "temp":[B
    :cond_1
    return-object p1
.end method

.method private static e([B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 143
    new-array v0, v3, [B

    .line 144
    .local v0, "defaultIV":[B
    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 146
    .local v1, "iV":Ljavax/crypto/spec/IvParameterSpec;
    return-object v1
.end method


# virtual methods
.method public a([B)[B
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->c:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/s;->e([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v1

    .line 119
    .local v1, "iVSpec":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->b:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 120
    .local v0, "c1":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/s;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 121
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public b([B)[B
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->c:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/s;->e([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v1

    .line 158
    .local v1, "iVSpec":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/s;->b:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 159
    .local v0, "decryptCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/s;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 160
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method
