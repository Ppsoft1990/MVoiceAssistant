.class public Lcom/migu/a/d/g;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field public static br:[C

.field public static bs:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/migu/a/d/g;->br:[C

    .line 14
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/migu/a/d/g;->bs:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Character;)I
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/migu/a/d/g;->br:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 104
    const/4 v0, -0x1

    :cond_0
    return v0

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v2, Lcom/migu/a/d/g;->br:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 44
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_2

    .line 48
    const-string/jumbo v0, "@@@@@@@@@"

    .line 53
    :goto_2
    return-object v0

    .line 41
    :cond_0
    sget-object v2, Lcom/migu/a/d/g;->br:[C

    rem-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 42
    div-long/2addr p0, v6

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    const-string/jumbo v0, "@@@@@@@@@"

    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(JI)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v10, 0x3e

    .line 116
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 117
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 123
    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 128
    :goto_2
    sub-int v1, p2, v2

    if-lt v0, v1, :cond_2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    sget-object v4, Lcom/migu/a/d/g;->bs:[C

    new-instance v5, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :cond_2
    const/16 v1, 0x30

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 141
    const-wide/16 v2, 0x0

    .line 142
    const/16 v6, 0x3e

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 147
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    move-wide v4, v2

    move v3, v1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    .line 160
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    aget-byte v0, v7, v2

    const/16 v8, 0x30

    if-le v0, v8, :cond_1

    aget-byte v0, v7, v2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_1

    .line 150
    aget-byte v0, v7, v2

    add-int/lit8 v0, v0, -0x30

    .line 156
    :goto_1
    int-to-double v8, v6

    int-to-double v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    .line 157
    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 147
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 151
    :cond_1
    aget-byte v0, v7, v2

    const/16 v8, 0x41

    if-lt v0, v8, :cond_2

    aget-byte v0, v7, v2

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_2

    .line 152
    aget-byte v0, v7, v2

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 153
    goto :goto_1

    :cond_2
    aget-byte v0, v7, v2

    const/16 v8, 0x61

    if-lt v0, v8, :cond_3

    aget-byte v0, v7, v2

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_3

    .line 154
    aget-byte v0, v7, v2

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1a

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static f(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 171
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p0, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 174
    sget-object v4, Lcom/migu/a/d/g;->bs:[C

    aget-char v3, v4, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    :goto_0
    return-object v0

    .line 21
    :cond_0
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/migu/a/d/g;->a(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string/jumbo v0, "@@@@@@@@@"

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 80
    const-wide/16 v4, 0x1

    .line 81
    const-wide/16 v2, 0x0

    .line 83
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 88
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/migu/a/d/g;->a(Ljava/lang/Character;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 86
    const-wide/16 v6, 0x3e

    mul-long/2addr v4, v6

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
