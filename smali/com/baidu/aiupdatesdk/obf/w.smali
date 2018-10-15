.class public Lcom/baidu/aiupdatesdk/obf/w;
.super Ljava/lang/Object;
.source "BDUtils.java"


# direct methods
.method private static a(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 220
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, -0x1

    .line 58
    .local v0, "code":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 60
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .param p0, "fileSize"    # J

    .prologue
    .line 194
    long-to-float v1, p0

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float v0, v1, v2

    .line 195
    .local v0, "size":F
    const-string/jumbo v1, "%.2fMB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 9
    .param p0, "packageinfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v6, 0x0

    .line 119
    if-nez p0, :cond_0

    .line 133
    :goto_0
    return-object v6

    .line 121
    :cond_0
    :try_start_0
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 122
    .local v4, "md":Ljava/security/MessageDigest;
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 124
    .local v1, "b":[B
    const/16 v7, 0x10

    new-array v0, v7, [C

    fill-array-data v0, :array_0

    .line 126
    .local v0, "HEXCHAR":[C
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, v1

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 128
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v0, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    aget-byte v7, v1, v3

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 132
    .end local v0    # "HEXCHAR":[C
    .end local v1    # "b":[B
    .end local v3    # "i":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 124
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 205
    if-eqz p0, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 216
    :cond_1
    return-object v0

    .line 208
    :cond_2
    sget-object v5, Lcom/baidu/aiupdatesdk/obf/m;->a:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 210
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 211
    .local v1, "hexChars":[C
    new-array v0, v3, [B

    .line 212
    .local v0, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 213
    mul-int/lit8 v4, v2, 0x2

    .line 214
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/baidu/aiupdatesdk/obf/w;->a(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/baidu/aiupdatesdk/obf/w;->a(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 111
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/w;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/w;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_1

    :cond_0
    const-string/jumbo v9, "-1"

    .line 154
    :goto_0
    return-object v9

    .line 139
    :cond_1
    const/16 v9, 0x8

    const/16 v10, 0x18

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "sign":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 141
    .local v4, "id1":J
    const-wide/16 v6, 0x0

    .line 142
    .local v6, "id2":J
    const-string/jumbo v1, ""

    .line 143
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v9, 0x8

    if-ge v0, v9, :cond_2

    .line 144
    const-wide/16 v10, 0x10

    mul-long/2addr v6, v10

    .line 145
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 146
    const/16 v9, 0x10

    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-long v10, v9

    add-long/2addr v6, v10

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 149
    const-wide/16 v10, 0x10

    mul-long/2addr v4, v10

    .line 150
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 151
    const/16 v9, 0x10

    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-long v10, v9

    add-long/2addr v4, v10

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    :cond_3
    add-long v10, v4, v6

    const-wide v12, 0xffffffffL

    and-long v2, v10, v12

    .line 154
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 233
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 234
    .local v1, "location":Landroid/telephony/CellLocation;
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_0

    .line 235
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1    # "location":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 243
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    .line 237
    .restart local v1    # "location":Landroid/telephony/CellLocation;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_1

    .line 238
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1    # "location":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 240
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
