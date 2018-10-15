.class public Let;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let$a;
    }
.end annotation


# static fields
.field private static i:Let;

.field private static final k:Ljava/lang/String;

.field private static l:I

.field private static m:I

.field private static n:I


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field private j:Let$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    sput-object v0, Let;->i:Let;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/conlts.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Let;->k:Ljava/lang/String;

    sput v2, Let;->l:I

    sput v2, Let;->m:I

    const/4 v0, 0x0

    sput v0, Let;->n:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Let;->j:Let$a;

    iput-boolean v1, p0, Let;->a:Z

    iput-boolean v1, p0, Let;->b:Z

    iput-boolean v2, p0, Let;->c:Z

    iput-boolean v1, p0, Let;->d:Z

    iput-boolean v1, p0, Let;->e:Z

    iput-boolean v1, p0, Let;->f:Z

    iput-boolean v1, p0, Let;->g:Z

    iput-boolean v2, p0, Let;->h:Z

    return-void
.end method

.method public static a()Let;
    .locals 1

    sget-object v0, Let;->i:Let;

    if-nez v0, :cond_0

    new-instance v0, Let;

    invoke-direct {v0}, Let;-><init>()V

    sput-object v0, Let;->i:Let;

    :cond_0
    sget-object v0, Let;->i:Let;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    const/high16 v5, 0x20000

    const/high16 v4, 0x10000

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Let;->a:Z

    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Let;->b:Z

    and-int/lit8 v0, p1, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Let;->c:Z

    and-int/lit8 v0, p1, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Let;->d:Z

    and-int v0, p1, v4

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Let;->f:Z

    and-int v0, p1, v5

    if-ne v0, v5, :cond_6

    :goto_5
    iput-boolean v1, p0, Let;->g:Z

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Let;->e:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5
.end method

.method static synthetic a(Let;Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Let;->a(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private a(Lorg/apache/http/HttpEntity;)V
    .locals 11

    const-wide v6, 0x3f9999999999999aL    # 0.025

    const/16 v10, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v8, 0xff

    :try_start_0
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Let;->f()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    array-length v3, v2

    const/16 v4, 0x280

    if-ge v3, v4, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Ldp;->u:Z

    sget-wide v2, Ldp;->p:D

    add-double/2addr v2, v6

    sput-wide v2, Ldp;->r:D

    sget-wide v2, Ldp;->o:D

    sub-double/2addr v2, v6

    sput-wide v2, Ldp;->q:D

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Ldp;->u:Z

    const/4 v3, 0x7

    aget-byte v3, v2, v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    const/16 v3, 0x38

    shl-long/2addr v4, v3

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x30

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x10

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    sput-wide v4, Ldp;->q:D

    const/16 v3, 0xf

    aget-byte v3, v2, v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    const/16 v3, 0x38

    shl-long/2addr v4, v3

    const/16 v3, 0xe

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x30

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/16 v3, 0xd

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/16 v3, 0xc

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/16 v3, 0xb

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/16 v3, 0xa

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    const/16 v3, 0x10

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    const/16 v3, 0x9

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    const/16 v3, 0x8

    aget-byte v3, v2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    sput-wide v4, Ldp;->r:D

    const/16 v3, 0x271

    new-array v3, v3, [B

    sput-object v3, Ldp;->t:[B

    :goto_2
    const/16 v3, 0x271

    if-ge v0, v3, :cond_3

    sget-object v3, Ldp;->t:[B

    add-int/lit8 v4, v0, 0x10

    aget-byte v4, v2, v4

    aput-byte v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method private b(I)V
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Let;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Let;->h()V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    sget v3, Let;->n:I

    mul-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x80

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ldj;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    sget v0, Let;->n:I

    if-ne v2, v0, :cond_1

    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Let;Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Let;->b(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private b(Lorg/apache/http/HttpEntity;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput v1, Let;->m:I

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {p1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Let;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Let;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "ctr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ctr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Let;->m:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0}, Let;->i()V

    sget v0, Let;->m:I

    if-eq v0, v1, :cond_4

    sget v0, Let;->m:I

    sget v2, Let;->m:I

    invoke-direct {p0, v2}, Let;->b(I)V

    :goto_2
    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Let;->a(I)V

    :cond_2
    sget-boolean v0, Lcom/baidu/location/f;->f:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    :try_start_3
    iget-boolean v0, p0, Let;->c:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Ldp;->m:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_3

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
    sget v0, Let;->l:I

    if-eq v0, v1, :cond_5

    sget v0, Let;->l:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "ver"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v4, Ldp;->v:I

    if-le v3, v4, :cond_29

    sput v3, Ldp;->v:I

    const-string/jumbo v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_a

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->w:F

    :cond_0
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->x:F

    :cond_1
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->y:F

    :cond_2
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->z:F

    :cond_3
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->A:I

    :cond_4
    const/4 v4, 0x5

    aget-object v4, v3, v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->B:I

    :cond_5
    const/4 v4, 0x6

    aget-object v4, v3, v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->C:I

    :cond_6
    const/4 v4, 0x7

    aget-object v4, v3, v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->D:I

    :cond_7
    const/16 v4, 0x8

    aget-object v4, v3, v4

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x8

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->E:I

    :cond_8
    const/16 v4, 0x9

    aget-object v4, v3, v4

    if-eqz v4, :cond_9

    const/16 v4, 0x9

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x9

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->F:I

    :cond_9
    const/16 v4, 0xa

    aget-object v4, v3, v4

    if-eqz v4, :cond_a

    const/16 v4, 0xa

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Ldp;->G:I

    :cond_a
    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_e

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->H:F

    :cond_b
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->I:F

    :cond_c
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_d

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->J:F

    :cond_d
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Ldp;->K:F

    :cond_e
    const-string/jumbo v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_12

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->L:I

    :cond_f
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->M:F

    :cond_10
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_11

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->N:I

    :cond_11
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Ldp;->O:F

    :cond_12
    const-string/jumbo v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string/jumbo v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_16

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->P:F

    :cond_13
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->Q:F

    :cond_14
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_15

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->R:I

    :cond_15
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Ldp;->S:I

    :cond_16
    const-string/jumbo v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v7, :cond_1b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->ak:F

    :cond_17
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Ldp;->al:F

    :cond_18
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_19

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->am:I

    :cond_19
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->an:I

    :cond_1a
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Ldp;->ao:I

    :cond_1b
    const-string/jumbo v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x5

    if-le v4, v5, :cond_21

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_26

    const/4 v4, 0x1

    sput-boolean v4, Ldp;->U:Z

    :cond_1c
    :goto_0
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_27

    const/4 v4, 0x1

    sput-boolean v4, Ldp;->V:Z

    :cond_1d
    :goto_1
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->W:I

    :cond_1e
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->Y:I

    :cond_1f
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_20

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_28

    int-to-long v4, v4

    sput-wide v4, Ldp;->ad:J

    sget-wide v4, Ldp;->ad:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    sput-wide v4, Ldp;->Z:J

    sget-wide v4, Ldp;->Z:J

    shr-long/2addr v4, v8

    sput-wide v4, Ldp;->ae:J

    :cond_20
    :goto_2
    const/4 v4, 0x5

    aget-object v4, v3, v4

    if-eqz v4, :cond_21

    const/4 v4, 0x5

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Ldp;->ag:I

    :cond_21
    const-string/jumbo v3, "shak"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string/jumbo v3, "shak"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v8, :cond_24

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->ah:I

    :cond_22
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Ldp;->ai:I

    :cond_23
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_24

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Ldp;->aj:F

    :cond_24
    const-string/jumbo v3, "dmx"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string/jumbo v3, "dmx"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Ldp;->af:I

    :cond_25
    :goto_3
    move v1, v0

    :goto_4
    return v1

    :cond_26
    const/4 v4, 0x0

    sput-boolean v4, Ldp;->U:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_27
    const/4 v4, 0x0

    sput-boolean v4, Ldp;->V:Z

    goto/16 :goto_1

    :cond_28
    const/4 v4, 0x0

    sput-boolean v4, Ldp;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_29
    move v0, v1

    goto :goto_3
.end method

.method private d()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Ldp;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&usr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ldj;->a()Ldj;

    move-result-object v1

    invoke-virtual {v1}, Ldj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Let;->j:Let$a;

    if-nez v1, :cond_0

    new-instance v1, Let$a;

    invoke-direct {v1, p0}, Let$a;-><init>(Let;)V

    iput-object v1, p0, Let;->j:Let$a;

    :cond_0
    iget-object v1, p0, Let;->j:Let$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Let$a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private e()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/config.dat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Ldp;->U:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    sget-boolean v3, Ldp;->V:Z

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v6, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\",\"shak\":\"%d|%d|%.1f\",\"dmx\":%d}"

    const/16 v7, 0x27

    new-array v7, v7, [Ljava/lang/Object;

    sget v8, Ldp;->v:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    sget v2, Ldp;->w:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    sget v2, Ldp;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    sget v2, Ldp;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    sget v2, Ldp;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    sget v2, Ldp;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    sget v2, Ldp;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x7

    sget v2, Ldp;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x8

    sget v2, Ldp;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x9

    sget v2, Ldp;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xa

    sget v2, Ldp;->F:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xb

    sget v2, Ldp;->G:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xc

    sget v2, Ldp;->H:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xd

    sget v2, Ldp;->I:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xe

    sget v2, Ldp;->J:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xf

    sget v2, Ldp;->K:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x10

    sget v2, Ldp;->L:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x11

    sget v2, Ldp;->M:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x12

    sget v2, Ldp;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x13

    sget v2, Ldp;->O:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x14

    sget v2, Ldp;->P:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x15

    sget v2, Ldp;->Q:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x16

    sget v2, Ldp;->R:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x17

    sget v2, Ldp;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/16 v0, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1a

    sget v1, Ldp;->W:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1b

    sget v1, Ldp;->Y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1c

    sget-wide v2, Ldp;->ad:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1d

    sget v1, Ldp;->ag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1e

    sget v1, Ldp;->ak:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1f

    sget v1, Ldp;->al:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x20

    sget v1, Ldp;->am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x21

    sget v1, Ldp;->an:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x22

    sget v1, Ldp;->ao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x23

    sget v1, Ldp;->ah:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x24

    sget v1, Ldp;->ai:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x25

    sget v1, Ldp;->aj:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x26

    sget v1, Ldp;->af:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v3, Ldl;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v1, v0

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v3, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method private f()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v2, Ldl;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v2, 0x400

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-wide v2, Ldp;->q:D

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-wide v2, Ldp;->r:D

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-boolean v1, Ldp;->u:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    sget-boolean v1, Ldp;->u:Z

    if-eqz v1, :cond_2

    sget-object v1, Ldp;->t:[B

    if-eqz v1, :cond_2

    sget-object v1, Ldp;->t:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Let;->b(Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x400

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v2

    sput-wide v2, Ldp;->q:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v2

    sput-wide v2, Ldp;->r:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    sput-boolean v1, Ldp;->u:Z

    sget-boolean v1, Ldp;->u:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x271

    new-array v1, v1, [B

    sput-object v1, Ldp;->t:[B

    sget-object v1, Ldp;->t:[B

    const/4 v2, 0x0

    const/16 v3, 0x271

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Let;->b(Lorg/apache/http/HttpEntity;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Let;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Ldl;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Let;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/16 v3, 0xbb8

    if-le v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    sput v0, Let;->n:I

    invoke-direct {p0}, Let;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    const-wide/16 v4, 0x80

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v4, v1, [B

    :goto_1
    if-ge v0, v3, :cond_2

    mul-int v5, v1, v0

    add-int/lit16 v5, v5, 0x80

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    if-lez v5, :cond_4

    if-ge v5, v1, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v6, v5, -0x1

    aget-byte v6, v4, v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {}, Ldj;->a()Ldj;

    sget-object v5, Ldj;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    sput v1, Let;->l:I

    sput v0, Let;->n:I

    :cond_2
    if-ne v0, v3, :cond_3

    sput v3, Let;->n:I

    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Let;->j:Let$a;

    if-nez v0, :cond_0

    new-instance v0, Let$a;

    invoke-direct {v0, p0}, Let$a;-><init>(Let;)V

    iput-object v0, p0, Let;->j:Let$a;

    :cond_0
    iget-object v0, p0, Let;->j:Let$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Let$a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ldx;->a()Ldx;

    move-result-object v2

    invoke-virtual {v2}, Ldx;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ldx;->a()Ldx;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldx;->b(J)V

    invoke-direct {p0}, Let;->d()V

    :cond_0
    invoke-direct {p0}, Let;->g()V

    return-void
.end method
