.class public final Lmi;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:S

.field private c:I

.field private d:S


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-short v0, p0, Lmi;->b:S

    iput p2, p0, Lmi;->c:I

    const/16 v0, 0x10

    iput-short v0, p0, Lmi;->d:S

    const/16 v0, 0x2c

    new-array v0, v0, [B

    iget-object v1, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const-wide/16 v6, 0x2c

    const/4 v1, 0x0

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string/jumbo v2, "RIFF"

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, v6

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lmi;->a(I)V

    const-string/jumbo v2, "WAVE"

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "fmt "

    move v0, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lmi;->a(I)V

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-short v0, p0, Lmi;->b:S

    iget-object v2, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v2, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write(I)V

    iget v0, p0, Lmi;->c:I

    invoke-direct {p0, v0}, Lmi;->a(I)V

    iget-short v0, p0, Lmi;->b:S

    iget v2, p0, Lmi;->c:I

    mul-int/2addr v0, v2

    iget-short v2, p0, Lmi;->d:S

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lmi;->a(I)V

    iget-short v0, p0, Lmi;->b:S

    iget-short v2, p0, Lmi;->d:S

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iget-object v2, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v2, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write(I)V

    iget-short v0, p0, Lmi;->d:S

    iget-object v2, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v2, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write(I)V

    const-string/jumbo v0, "data"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lmi;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v6

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lmi;->a(I)V

    return-void
.end method
