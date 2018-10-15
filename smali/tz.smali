.class public Ltz;
.super Ljava/lang/Object;
.source "ShaEncrypt.java"


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ltz;->a:[I

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Ltz;->b:[I

    .line 17
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Ltz;->c:[I

    return-void

    .line 11
    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private a(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 106
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private a(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 94
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private a([BI)I
    .locals 2
    .param p1, "bytedata"    # [B
    .param p2, "i"    # I

    .prologue
    .line 160
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private a(B)Ljava/lang/String;
    .locals 5
    .param p1, "ib"    # B

    .prologue
    .line 173
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 174
    .local v0, "Digit":[C
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 175
    .local v1, "ob":[C
    const/4 v3, 0x0

    ushr-int/lit8 v4, p1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 176
    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 177
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 178
    .local v2, "s":Ljava/lang/String;
    return-object v2

    .line 173
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private a()V
    .locals 14

    .prologue
    .line 111
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_0
    const/16 v10, 0x4f

    if-gt v0, v10, :cond_0

    .line 112
    iget-object v10, p0, Ltz;->c:[I

    iget-object v11, p0, Ltz;->c:[I

    add-int/lit8 v12, v0, -0x3

    aget v11, v11, v12

    iget-object v12, p0, Ltz;->c:[I

    add-int/lit8 v13, v0, -0x8

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Ltz;->c:[I

    add-int/lit8 v13, v0, -0xe

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Ltz;->c:[I

    add-int/lit8 v13, v0, -0x10

    aget v12, v12, v13

    xor-int/2addr v11, v12

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Ltz;->a(II)I

    move-result v11

    aput v11, v10, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const/4 v10, 0x5

    new-array v9, v10, [I

    .line 115
    .local v9, "tmpabcde":[I
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    array-length v10, v9

    if-ge v1, v10, :cond_1

    .line 116
    iget-object v10, p0, Ltz;->b:[I

    aget v10, v10, v1

    aput v10, v9, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/16 v10, 0x13

    if-gt v3, v10, :cond_2

    .line 119
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Ltz;->a(II)I

    move-result v10

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Ltz;->a(III)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v9, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Ltz;->c:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int v8, v10, v11

    .line 120
    .local v8, "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 121
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 122
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Ltz;->a(II)I

    move-result v11

    aput v11, v9, v10

    .line 123
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 124
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    .end local v8    # "tmp":I
    :cond_2
    const/16 v4, 0x14

    .local v4, "k":I
    :goto_3
    const/16 v10, 0x27

    if-gt v4, v10, :cond_3

    .line 127
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Ltz;->a(II)I

    move-result v10

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Ltz;->b(III)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v9, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Ltz;->c:[I

    aget v11, v11, v4

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int v8, v10, v11

    .line 128
    .restart local v8    # "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 129
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 130
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Ltz;->a(II)I

    move-result v11

    aput v11, v9, v10

    .line 131
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 132
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 134
    .end local v8    # "tmp":I
    :cond_3
    const/16 v5, 0x28

    .local v5, "l":I
    :goto_4
    const/16 v10, 0x3b

    if-gt v5, v10, :cond_4

    .line 135
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Ltz;->a(II)I

    move-result v10

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Ltz;->c(III)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v9, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Ltz;->c:[I

    aget v11, v11, v5

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int v8, v10, v11

    .line 136
    .restart local v8    # "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 137
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 138
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Ltz;->a(II)I

    move-result v11

    aput v11, v9, v10

    .line 139
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 140
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 142
    .end local v8    # "tmp":I
    :cond_4
    const/16 v6, 0x3c

    .local v6, "m":I
    :goto_5
    const/16 v10, 0x4f

    if-gt v6, v10, :cond_5

    .line 143
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x5

    invoke-direct {p0, v10, v11}, Ltz;->a(II)I

    move-result v10

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-direct {p0, v11, v12, v13}, Ltz;->b(III)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v9, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Ltz;->c:[I

    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int v8, v10, v11

    .line 144
    .restart local v8    # "tmp":I
    const/4 v10, 0x4

    const/4 v11, 0x3

    aget v11, v9, v11

    aput v11, v9, v10

    .line 145
    const/4 v10, 0x3

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 146
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/16 v12, 0x1e

    invoke-direct {p0, v11, v12}, Ltz;->a(II)I

    move-result v11

    aput v11, v9, v10

    .line 147
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 148
    const/4 v10, 0x0

    aput v8, v9, v10

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 150
    .end local v8    # "tmp":I
    :cond_5
    const/4 v2, 0x0

    .local v2, "i2":I
    :goto_6
    array-length v10, v9

    if-ge v2, v10, :cond_6

    .line 151
    iget-object v10, p0, Ltz;->b:[I

    iget-object v11, p0, Ltz;->b:[I

    aget v11, v11, v2

    aget v12, v9, v2

    add-int/2addr v11, v12

    aput v11, v10, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 153
    :cond_6
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_7
    iget-object v10, p0, Ltz;->c:[I

    array-length v10, v10

    if-ge v7, v10, :cond_7

    .line 154
    iget-object v10, p0, Ltz;->c:[I

    const/4 v11, 0x0

    aput v11, v10, v7

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 156
    :cond_7
    return-void
.end method

.method private a(I[BI)V
    .locals 2
    .param p1, "intValue"    # I
    .param p2, "byteData"    # [B
    .param p3, "i"    # I

    .prologue
    .line 165
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 166
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 167
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 168
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 169
    return-void
.end method

.method private b(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 98
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private c(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 102
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private c([B)I
    .locals 8
    .param p1, "bytedata"    # [B

    .prologue
    const/4 v7, 0x0

    .line 22
    iget-object v4, p0, Ltz;->a:[I

    iget-object v5, p0, Ltz;->b:[I

    iget-object v6, p0, Ltz;->a:[I

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    invoke-direct {p0, p1}, Ltz;->d([B)[B

    move-result-object v2

    .line 26
    .local v2, "newbyte":[B
    array-length v4, v2

    div-int/lit8 v0, v4, 0x40

    .line 28
    .local v0, "MCount":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 30
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v4, 0x10

    if-ge v1, v4, :cond_0

    .line 31
    iget-object v4, p0, Ltz;->c:[I

    mul-int/lit8 v5, v3, 0x40

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v5, v6

    invoke-direct {p0, v2, v5}, Ltz;->a([BI)I

    move-result v5

    aput v5, v4, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34
    :cond_0
    invoke-direct {p0}, Ltz;->a()V

    .line 28
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "j":I
    :cond_1
    const/16 v4, 0x14

    return v4
.end method

.method private d([B)[B
    .locals 28
    .param p1, "bytedata"    # [B

    .prologue
    .line 42
    const/16 v23, 0x0

    .line 44
    .local v23, "zeros":I
    const/16 v22, 0x0

    .line 46
    .local v22, "size":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .line 48
    .local v20, "n":I
    rem-int/lit8 v19, v20, 0x40

    .line 50
    .local v19, "m":I
    const/16 v24, 0x38

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 51
    rsub-int/lit8 v23, v19, 0x37

    .line 52
    sub-int v24, v20, v19

    add-int/lit8 v22, v24, 0x40

    .line 61
    :goto_0
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 63
    .local v21, "newbyte":[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    move/from16 v17, v20

    .line 67
    .local v17, "l":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .local v18, "l":I
    const/16 v24, -0x80

    aput-byte v24, v21, v17

    .line 69
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 70
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    const/16 v24, 0x0

    aput-byte v24, v21, v18

    .line 69
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "l":I
    .restart local v18    # "l":I
    goto :goto_1

    .line 53
    .end local v16    # "i":I
    .end local v18    # "l":I
    .end local v21    # "newbyte":[B
    :cond_0
    const/16 v24, 0x38

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 54
    const/16 v23, 0x3f

    .line 55
    add-int/lit8 v24, v20, 0x8

    add-int/lit8 v22, v24, 0x40

    goto :goto_0

    .line 57
    :cond_1
    rsub-int/lit8 v24, v19, 0x3f

    add-int/lit8 v23, v24, 0x38

    .line 58
    add-int/lit8 v24, v20, 0x40

    sub-int v24, v24, v19

    add-int/lit8 v22, v24, 0x40

    goto :goto_0

    .line 73
    .restart local v16    # "i":I
    .restart local v18    # "l":I
    .restart local v21    # "newbyte":[B
    :cond_2
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x8

    mul-long v6, v24, v26

    .line 74
    .local v6, "N":J
    const-wide/16 v24, 0xff

    and-long v24, v24, v6

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v15, v0

    .line 75
    .local v15, "h8":B
    const/16 v24, 0x8

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v14, v0

    .line 76
    .local v14, "h7":B
    const/16 v24, 0x10

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v13, v0

    .line 77
    .local v13, "h6":B
    const/16 v24, 0x18

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v12, v0

    .line 78
    .local v12, "h5":B
    const/16 v24, 0x20

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v11, v0

    .line 79
    .local v11, "h4":B
    const/16 v24, 0x28

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v10, v0

    .line 80
    .local v10, "h3":B
    const/16 v24, 0x30

    shr-long v24, v6, v24

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v9, v0

    .line 81
    .local v9, "h2":B
    const/16 v24, 0x38

    shr-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v8, v0

    .line 82
    .local v8, "h1":B
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v8, v21, v18

    .line 83
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v9, v21, v17

    .line 84
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v10, v21, v18

    .line 85
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v11, v21, v17

    .line 86
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v12, v21, v18

    .line 87
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v13, v21, v17

    .line 88
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "l":I
    .restart local v17    # "l":I
    aput-byte v14, v21, v18

    .line 89
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "l":I
    .restart local v18    # "l":I
    aput-byte v15, v21, v17

    .line 90
    return-object v21
.end method

.method private e([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytearray"    # [B

    .prologue
    .line 183
    const-string/jumbo v1, ""

    .line 184
    .local v1, "strDigest":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    invoke-direct {p0, v3}, Ltz;->a(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a([B)[B
    .locals 4
    .param p1, "byteData"    # [B

    .prologue
    .line 192
    invoke-direct {p0, p1}, Ltz;->c([B)I

    .line 193
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 194
    .local v0, "digest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ltz;->b:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 195
    iget-object v2, p0, Ltz;->b:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {p0, v2, v0, v3}, Ltz;->a(I[BI)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-object v0
.end method

.method public b([B)Ljava/lang/String;
    .locals 1
    .param p1, "byteData"    # [B

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Ltz;->a([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ltz;->e([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
