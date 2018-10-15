.class public Lany;
.super Ljava/lang/Object;
.source "MiguAESCipher.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 129
    .local v1, "encryptcontent":[B
    invoke-static {p1}, Lany;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 132
    .local v3, "skey":[B
    invoke-static {v1, v3}, Lany;->a([B[B)[B

    move-result-object v0

    .line 134
    .local v0, "encryptData":[B
    invoke-static {v0}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method private static a([B)Ljava/security/Key;
    .locals 2
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 35
    .local v0, "skey":[B
    return-object v0
.end method

.method public static a([B[B)[B
    .locals 4
    .param p0, "content"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    const-string/jumbo v2, "AES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 110
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-static {p1}, Lany;->a([B)Ljava/security/Key;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 111
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 112
    .local v1, "result":[B
    return-object v1
.end method
