.class public Lki;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x11

    if-le v0, v3, :cond_2

    :cond_0
    const/4 v0, -0x4

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    if-lez v5, :cond_9

    aget-char v0, v6, v2

    invoke-static {v0}, Lki;->a(C)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    move v4, v1

    move v3, v0

    move v0, v2

    move v1, v2

    :goto_2
    if-ge v4, v5, :cond_6

    add-int/lit8 v7, v4, -0x1

    aget-char v7, v6, v7

    aget-char v8, v6, v4

    if-ne v7, v8, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_3
    aget-char v7, v6, v4

    invoke-static {v7}, Lki;->a(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v4, -0x1

    aget-char v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v8, v6, v4

    if-ne v7, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v5, -0x2

    if-lt v0, v4, :cond_8

    const/4 v0, -0x2

    :goto_4
    add-int/lit8 v2, v5, -0x1

    if-lt v1, v2, :cond_7

    const/4 v0, -0x1

    :cond_7
    if-lez v3, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
