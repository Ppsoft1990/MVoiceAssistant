.class public Lcom/baidu/aiupdatesdk/obf/r;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 6
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    .line 17
    new-array v1, v3, [B

    sput-object v1, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 20
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 24
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 28
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 32
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 35
    :cond_3
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 36
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 37
    return-void

    .line 6
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private static a(B)Z
    .locals 4
    .param p0, "b"    # B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    const/16 v2, 0x3d

    if-ne p0, v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-lt p0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 253
    goto :goto_0

    .line 254
    :cond_3
    sget-object v2, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    aget-byte v2, v2, p0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 255
    goto :goto_0
.end method

.method public static a([B)[B
    .locals 18
    .param p0, "data"    # [B

    .prologue
    .line 42
    move-object/from16 v0, p0

    array-length v14, v0

    rem-int/lit8 v13, v14, 0x3

    .line 44
    .local v13, "modulus":I
    if-nez v13, :cond_0

    .line 45
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x3

    new-array v7, v14, [B

    .line 50
    .local v7, "bytes":[B
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    sub-int v10, v14, v13

    .line 55
    .local v10, "dataLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v11, v10, :cond_1

    .line 56
    aget-byte v14, p0, v11

    and-int/lit16 v1, v14, 0xff

    .line 57
    .local v1, "a1":I
    add-int/lit8 v14, v11, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v2, v14, 0xff

    .line 58
    .local v2, "a2":I
    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v3, v14, 0xff

    .line 60
    .local v3, "a3":I
    sget-object v14, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    ushr-int/lit8 v15, v1, 0x2

    and-int/lit8 v15, v15, 0x3f

    aget-byte v14, v14, v15

    aput-byte v14, v7, v12

    .line 61
    add-int/lit8 v14, v12, 0x1

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    shl-int/lit8 v16, v1, 0x4

    ushr-int/lit8 v17, v2, 0x4

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 62
    add-int/lit8 v14, v12, 0x2

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    shl-int/lit8 v16, v2, 0x2

    ushr-int/lit8 v17, v3, 0x6

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 63
    add-int/lit8 v14, v12, 0x3

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    and-int/lit8 v16, v3, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 55
    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v12, v12, 0x4

    goto :goto_1

    .line 47
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    .end local v7    # "bytes":[B
    .end local v10    # "dataLength":I
    .end local v11    # "i":I
    .end local v12    # "j":I
    :cond_0
    move-object/from16 v0, p0

    array-length v14, v0

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v14, v14, 0x4

    new-array v7, v14, [B

    .restart local v7    # "bytes":[B
    goto :goto_0

    .line 72
    .restart local v10    # "dataLength":I
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    :cond_1
    packed-switch v13, :pswitch_data_0

    .line 107
    :goto_2
    :pswitch_0
    return-object v7

    .line 77
    :pswitch_1
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 78
    .local v8, "d1":I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 79
    .local v4, "b1":I
    shl-int/lit8 v14, v8, 0x4

    and-int/lit8 v5, v14, 0x3f

    .line 81
    .local v5, "b2":I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 82
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 83
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    .line 84
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto :goto_2

    .line 89
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v8    # "d1":I
    :pswitch_2
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 90
    .restart local v8    # "d1":I
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    .line 92
    .local v9, "d2":I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 93
    .restart local v4    # "b1":I
    shl-int/lit8 v14, v8, 0x4

    ushr-int/lit8 v15, v9, 0x4

    or-int/2addr v14, v15

    and-int/lit8 v5, v14, 0x3f

    .line 94
    .restart local v5    # "b2":I
    shl-int/lit8 v14, v9, 0x2

    and-int/lit8 v6, v14, 0x3f

    .line 96
    .local v6, "b3":I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 97
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 98
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    sget-object v15, Lcom/baidu/aiupdatesdk/obf/r;->a:[B

    aget-byte v15, v15, v6

    aput-byte v15, v7, v14

    .line 99
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto :goto_2

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b([B)[B
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/16 v10, 0x3d

    .line 117
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/r;->c([B)[B

    move-result-object p0

    .line 119
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_0

    .line 120
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [B

    .line 127
    .local v4, "bytes":[B
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_2

    .line 128
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    aget-byte v8, p0, v5

    aget-byte v0, v7, v8

    .line 129
    .local v0, "b1":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 130
    .local v1, "b2":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 131
    .local v2, "b3":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 133
    .local v3, "b4":B
    shl-int/lit8 v7, v0, 0x2

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 134
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 135
    add-int/lit8 v7, v6, 0x2

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 127
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    .line 121
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    .end local v4    # "bytes":[B
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_1

    .line 122
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .restart local v4    # "bytes":[B
    goto :goto_0

    .line 124
    .end local v4    # "bytes":[B
    :cond_1
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .restart local v4    # "bytes":[B
    goto :goto_0

    .line 138
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_2
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_3

    .line 139
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 140
    .restart local v0    # "b1":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 142
    .restart local v1    # "b2":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 161
    :goto_2
    return-object v4

    .line 143
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_3
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_4

    .line 144
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 145
    .restart local v0    # "b1":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 146
    .restart local v1    # "b2":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 148
    .restart local v2    # "b3":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 149
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto :goto_2

    .line 151
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    :cond_4
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 152
    .restart local v0    # "b1":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 153
    .restart local v1    # "b2":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 154
    .restart local v2    # "b3":B
    sget-object v7, Lcom/baidu/aiupdatesdk/obf/r;->b:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 156
    .restart local v3    # "b4":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 157
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 158
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto :goto_2
.end method

.method private static c([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 219
    array-length v5, p0

    new-array v4, v5, [B

    .line 220
    .local v4, "temp":[B
    const/4 v0, 0x0

    .line 222
    .local v0, "bytesCopied":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 223
    aget-byte v5, p0, v2

    invoke-static {v5}, Lcom/baidu/aiupdatesdk/obf/r;->a(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v2

    aput-byte v5, v4, v0

    move v0, v1

    .line 222
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    new-array v3, v0, [B

    .line 230
    .local v3, "newData":[B
    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    return-object v3
.end method
