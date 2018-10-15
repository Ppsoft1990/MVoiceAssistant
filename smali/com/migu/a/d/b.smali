.class public Lcom/migu/a/d/b;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# instance fields
.field private aJ:Ljava/io/InputStream;

.field private aK:[I

.field private aL:I

.field private eof:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 10
    iput v0, p0, Lcom/migu/a/d/b;->aL:I

    .line 11
    iput-boolean v0, p0, Lcom/migu/a/d/b;->eof:Z

    .line 15
    iput-object p1, p0, Lcom/migu/a/d/b;->aJ:Ljava/io/InputStream;

    .line 16
    return-void
.end method

.method private acquire()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 45
    new-array v5, v8, [C

    move v0, v1

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/migu/a/d/b;->aJ:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 51
    if-ne v2, v9, :cond_2

    .line 53
    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/migu/a/d/b;->aK:[I

    .line 56
    iput-boolean v3, p0, Lcom/migu/a/d/b;->eof:Z

    .line 103
    :cond_1
    return-void

    .line 59
    :cond_2
    int-to-char v6, v2

    .line 60
    sget-object v2, Lcom/migu/a/d/i;->bE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    sget-char v2, Lcom/migu/a/d/i;->bF:C

    if-ne v6, v2, :cond_4

    .line 61
    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 48
    if-lt v2, v8, :cond_e

    move v0, v1

    move v2, v1

    .line 67
    :goto_1
    if-lt v2, v8, :cond_5

    .line 79
    const/4 v0, 0x3

    aget-char v0, v5, v0

    sget-char v2, Lcom/migu/a/d/i;->bF:C

    if-ne v0, v2, :cond_b

    .line 81
    iget-object v0, p0, Lcom/migu/a/d/b;->aJ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v9, :cond_9

    .line 82
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_5
    aget-char v6, v5, v2

    sget-char v7, Lcom/migu/a/d/i;->bF:C

    if-eq v6, v7, :cond_8

    .line 71
    if-nez v0, :cond_7

    .line 67
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_8
    if-nez v0, :cond_6

    move v0, v3

    .line 77
    goto :goto_2

    .line 83
    :cond_9
    iput-boolean v3, p0, Lcom/migu/a/d/b;->eof:Z

    .line 84
    aget-char v0, v5, v4

    sget-char v2, Lcom/migu/a/d/i;->bF:C

    if-ne v0, v2, :cond_a

    :goto_3
    move v0, v1

    move v2, v1

    .line 94
    :goto_4
    if-lt v2, v8, :cond_c

    .line 100
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/migu/a/d/b;->aK:[I

    .line 101
    :goto_5
    if-ge v1, v3, :cond_1

    .line 102
    iget-object v2, p0, Lcom/migu/a/d/b;->aK:[I

    rsub-int/lit8 v4, v1, 0x2

    mul-int/lit8 v4, v4, 0x8

    ushr-int v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v3, v4

    .line 88
    goto :goto_3

    .line 91
    :cond_b
    const/4 v3, 0x3

    goto :goto_3

    .line 96
    :cond_c
    aget-char v4, v5, v2

    sget-char v6, Lcom/migu/a/d/i;->bF:C

    if-ne v4, v6, :cond_d

    .line 94
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 98
    :cond_d
    sget-object v4, Lcom/migu/a/d/i;->bE:Ljava/lang/String;

    aget-char v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    rsub-int/lit8 v6, v2, 0x3

    mul-int/lit8 v6, v6, 0x6

    shl-int/2addr v4, v6

    or-int/2addr v0, v4

    goto :goto_6

    :cond_e
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/migu/a/d/b;->aK:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/a/d/b;->aK:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/migu/a/d/b;->aJ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 27
    iget-object v1, p0, Lcom/migu/a/d/b;->aK:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/migu/a/d/b;->aL:I

    iget-object v2, p0, Lcom/migu/a/d/b;->aK:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 29
    :cond_0
    iget-boolean v1, p0, Lcom/migu/a/d/b;->eof:Z

    if-eqz v1, :cond_1

    .line 39
    :goto_0
    return v0

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/migu/a/d/b;->acquire()V

    .line 32
    iget-object v1, p0, Lcom/migu/a/d/b;->aK:[I

    array-length v1, v1

    if-nez v1, :cond_2

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/migu/a/d/b;->aK:[I

    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/a/d/b;->aL:I

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/migu/a/d/b;->aK:[I

    iget v1, p0, Lcom/migu/a/d/b;->aL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/migu/a/d/b;->aL:I

    aget v0, v0, v1

    goto :goto_0
.end method
