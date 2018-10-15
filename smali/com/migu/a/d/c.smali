.class public Lcom/migu/a/d/c;
.super Ljava/io/OutputStream;
.source "Base64OutputStream.java"


# instance fields
.field private aM:Ljava/io/OutputStream;

.field private aN:I

.field private aO:I

.field private aP:I

.field private aQ:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/migu/a/d/c;-><init>(Ljava/io/OutputStream;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    .line 9
    iput v1, p0, Lcom/migu/a/d/c;->aN:I

    .line 10
    iput v1, p0, Lcom/migu/a/d/c;->aO:I

    .line 11
    iput v1, p0, Lcom/migu/a/d/c;->aP:I

    .line 12
    iput v1, p0, Lcom/migu/a/d/c;->aQ:I

    .line 21
    iput-object p1, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    .line 22
    iput p2, p0, Lcom/migu/a/d/c;->aQ:I

    .line 23
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/migu/a/d/c;->commit()V

    .line 40
    iget-object v0, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 41
    return-void
.end method

.method protected commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 46
    iget v0, p0, Lcom/migu/a/d/c;->aO:I

    if-gtz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 48
    :cond_0
    iget v0, p0, Lcom/migu/a/d/c;->aQ:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/migu/a/d/c;->aP:I

    iget v1, p0, Lcom/migu/a/d/c;->aQ:I

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 51
    iput v5, p0, Lcom/migu/a/d/c;->aP:I

    .line 53
    :cond_1
    sget-object v0, Lcom/migu/a/d/i;->bE:Ljava/lang/String;

    iget v1, p0, Lcom/migu/a/d/c;->aN:I

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 54
    sget-object v0, Lcom/migu/a/d/i;->bE:Ljava/lang/String;

    iget v1, p0, Lcom/migu/a/d/c;->aN:I

    shl-int/lit8 v1, v1, 0xe

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 55
    iget v0, p0, Lcom/migu/a/d/c;->aO:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    sget-char v0, Lcom/migu/a/d/i;->bF:C

    .line 56
    :goto_1
    iget v1, p0, Lcom/migu/a/d/c;->aO:I

    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    sget-char v1, Lcom/migu/a/d/i;->bF:C

    .line 57
    :goto_2
    iget-object v4, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 58
    iget-object v2, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 59
    iget-object v2, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 60
    iget-object v0, p0, Lcom/migu/a/d/c;->aM:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 61
    iget v0, p0, Lcom/migu/a/d/c;->aP:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/migu/a/d/c;->aP:I

    .line 62
    iput v5, p0, Lcom/migu/a/d/c;->aO:I

    .line 63
    iput v5, p0, Lcom/migu/a/d/c;->aN:I

    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/migu/a/d/i;->bE:Ljava/lang/String;

    iget v1, p0, Lcom/migu/a/d/c;->aN:I

    shl-int/lit8 v1, v1, 0x14

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 56
    :cond_3
    sget-object v1, Lcom/migu/a/d/i;->bE:Ljava/lang/String;

    iget v4, p0, Lcom/migu/a/d/c;->aN:I

    shl-int/lit8 v4, v4, 0x1a

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/migu/a/d/c;->aO:I

    mul-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    .line 29
    iget v1, p0, Lcom/migu/a/d/c;->aN:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/migu/a/d/c;->aN:I

    .line 30
    iget v0, p0, Lcom/migu/a/d/c;->aO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/migu/a/d/c;->aO:I

    .line 31
    iget v0, p0, Lcom/migu/a/d/c;->aO:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/migu/a/d/c;->commit()V

    goto :goto_0
.end method
