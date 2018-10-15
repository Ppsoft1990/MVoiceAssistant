.class public final Lcom/iflytek/framework/plugin/internal/PluginSignCheck;
.super Ljava/lang/Object;
.source "PluginSignCheck.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginSignCheck"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkJarSign(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->isValidSignFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    :cond_0
    const-string/jumbo v2, "PluginSignCheck"

    const-string/jumbo v3, "checkJarSign file path is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v2, 0x0

    .line 48
    :goto_0
    return v2

    .line 45
    :cond_1
    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->getJarFilePublicKey(Ljava/lang/String;)[Ljava/security/PublicKey;

    move-result-object v1

    .line 46
    .local v1, "filepublickey":[Ljava/security/PublicKey;
    invoke-static {p0}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->getInstalledAppPublicKey(Landroid/content/Context;)[Ljava/security/PublicKey;

    move-result-object v0

    .line 48
    .local v0, "appkey":[Ljava/security/PublicKey;
    invoke-static {v1, v0}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->comparePublicKeys([Ljava/security/PublicKey;[Ljava/security/PublicKey;)Z

    move-result v2

    goto :goto_0
.end method

.method private static comparePublicKeys([Ljava/security/PublicKey;[Ljava/security/PublicKey;)Z
    .locals 7
    .param p0, "s1"    # [Ljava/security/PublicKey;
    .param p1, "s2"    # [Ljava/security/PublicKey;

    .prologue
    const/4 v3, 0x0

    .line 190
    if-nez p0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v3

    .line 193
    :cond_1
    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb1":Ljava/lang/StringBuilder;
    array-length v5, p0

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, p0, v4

    .line 198
    .local v2, "sig":Ljava/security/PublicKey;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 200
    .end local v2    # "sig":Ljava/security/PublicKey;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v1, "sb2":Ljava/lang/StringBuilder;
    array-length v4, p1

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v2, p1, v3

    .line 202
    .restart local v2    # "sig":Ljava/security/PublicKey;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 204
    .end local v2    # "sig":Ljava/security/PublicKey;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private static getInstalledAppPublicKey(Landroid/content/Context;)[Ljava/security/PublicKey;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 125
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v4, "com.iflytek.cmcc"

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 126
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 135
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 130
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-static {v1}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->getPublicKey(Landroid/content/pm/PackageInfo;)[Ljava/security/PublicKey;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 132
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static getJarFilePublicKey(Ljava/lang/String;)[Ljava/security/PublicKey;
    .locals 15
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 61
    const/16 v12, 0x2000

    new-array v10, v12, [B

    .line 63
    .local v10, "readBuffer":[B
    const/4 v0, 0x0

    .line 65
    .local v0, "certs":[Ljava/security/cert/Certificate;
    :try_start_0
    new-instance v6, Ljava/util/jar/JarFile;

    invoke-direct {v6, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 66
    .local v6, "jarFile":Ljava/util/jar/JarFile;
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 67
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 68
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 69
    .local v7, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_0

    .line 72
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v12, "META-INF/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 76
    invoke-static {v6, v7, v10}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v8

    .line 78
    .local v8, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v8, :cond_2

    .line 79
    const-string/jumbo v12, "PluginSignCheck"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " has no certificates at entry "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "; ignoring!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 112
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v6    # "jarFile":Ljava/util/jar/JarFile;
    .end local v7    # "je":Ljava/util/jar/JarEntry;
    .end local v8    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v11

    .line 83
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v6    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v7    # "je":Ljava/util/jar/JarEntry;
    .restart local v8    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 84
    move-object v0, v8

    goto :goto_0

    .line 86
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v12, v0

    if-ge v4, v12, :cond_0

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, "found":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v12, v8

    if-ge v5, v12, :cond_4

    .line 89
    aget-object v12, v0, v4

    if-eqz v12, :cond_5

    aget-object v12, v0, v4

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 90
    const/4 v3, 0x1

    .line 86
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 93
    :cond_5
    if-eqz v3, :cond_6

    array-length v12, v0

    array-length v13, v8

    if-eq v12, v13, :cond_7

    .line 94
    :cond_6
    const-string/jumbo v12, "PluginSignCheck"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " has mismatched certificates at entry "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 95
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "; ignoring!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 94
    invoke-static {v12, v13}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v3    # "found":Z
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "jarFile":Ljava/util/jar/JarFile;
    .end local v7    # "je":Ljava/util/jar/JarEntry;
    .end local v8    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v9    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v3    # "found":Z
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v7    # "je":Ljava/util/jar/JarEntry;
    .restart local v8    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 104
    .end local v3    # "found":Z
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "je":Ljava/util/jar/JarEntry;
    .end local v8    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v9    # "name":Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    if-eqz v0, :cond_1

    array-length v12, v0

    if-eqz v12, :cond_1

    .line 112
    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->getPublicKey([Ljava/security/cert/Certificate;)[Ljava/security/PublicKey;

    move-result-object v11

    goto :goto_1
.end method

.method private static getPublicKey(Landroid/content/pm/PackageInfo;)[Ljava/security/PublicKey;
    .locals 8
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 168
    const/4 v5, 0x0

    .line 169
    .local v5, "publicKeys":[Ljava/security/PublicKey;
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    new-array v5, v7, [Ljava/security/PublicKey;

    .line 170
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 171
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    .line 172
    .local v6, "signature":[B
    if-eqz v6, :cond_0

    array-length v7, v6

    if-nez v7, :cond_1

    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_1
    :try_start_0
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 178
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 179
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 180
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    aput-object v7, v5, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v6    # "signature":[B
    :cond_2
    return-object v5
.end method

.method private static getPublicKey([Ljava/security/cert/Certificate;)[Ljava/security/PublicKey;
    .locals 3
    .param p0, "certs"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 160
    array-length v2, p0

    new-array v1, v2, [Ljava/security/PublicKey;

    .line 161
    .local v1, "publicKeys":[Ljava/security/PublicKey;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 162
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    aput-object v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-object v1
.end method

.method private static isValidSignFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string/jumbo v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 144
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v1, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 148
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 156
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "PluginSignCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "PluginSignCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 154
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
