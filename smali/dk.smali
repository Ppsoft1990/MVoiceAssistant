.class public Ldk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldk$a;
    }
.end annotation


# static fields
.field private static a:Ldk;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ldk$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ldk;->a:Ldk;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ldk;->b:J

    iput-wide v0, p0, Ldk;->c:J

    iput-wide v0, p0, Ldk;->d:J

    iput-object v2, p0, Ldk;->e:Ljava/lang/String;

    iput-object v2, p0, Ldk;->f:Ljava/lang/String;

    const-string/jumbo v0, "loc.map.baidu.com"

    iput-object v0, p0, Ldk;->g:Ljava/lang/String;

    const-string/jumbo v0, "dns.map.baidu.com"

    iput-object v0, p0, Ldk;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ldk;->i:I

    new-instance v0, Ldk$a;

    invoke-direct {v0, p0}, Ldk$a;-><init>(Ldk;)V

    iput-object v0, p0, Ldk;->j:Ldk$a;

    invoke-direct {p0}, Ldk;->e()V

    return-void
.end method

.method static synthetic a(Ldk;I)I
    .locals 0

    iput p1, p0, Ldk;->i:I

    return p1
.end method

.method static synthetic a(Ldk;J)J
    .locals 1

    iput-wide p1, p0, Ldk;->b:J

    return-wide p1
.end method

.method public static a()Ldk;
    .locals 1

    sget-object v0, Ldk;->a:Ldk;

    if-nez v0, :cond_0

    new-instance v0, Ldk;

    invoke-direct {v0}, Ldk;-><init>()V

    sput-object v0, Ldk;->a:Ldk;

    :cond_0
    sget-object v0, Ldk;->a:Ldk;

    return-object v0
.end method

.method static synthetic a(Ldk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldk;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ldk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ldk;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "dnsServer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "dnsServer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldk;->e:Ljava/lang/String;

    :cond_0
    const-string/jumbo v1, "locServer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "locServer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldk;->f:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldk;->g:Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "locServer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "dnsServerIp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldk;->h:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "DnsProxyTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "DnsProxyTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ldk;->b:J

    :cond_4
    const-string/jumbo v1, "DnsExtraTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "DnsExtraTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ldk;->c:J

    :cond_5
    const-string/jumbo v1, "DnsExtraUpdateTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "DnsExtraUpdateTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ldk;->d:J

    :cond_6
    const-string/jumbo v1, "enable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "enable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ldk;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Ldk;)J
    .locals 2

    iget-wide v0, p0, Ldk;->b:J

    return-wide v0
.end method

.method static synthetic b(Ldk;J)J
    .locals 1

    iput-wide p1, p0, Ldk;->d:J

    return-wide p1
.end method

.method static synthetic b(Ldk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ldk;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Ldk;)J
    .locals 2

    iget-wide v0, p0, Ldk;->d:J

    return-wide v0
.end method

.method private c()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Ldk;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "dnsServer"

    iget-object v3, p0, Ldk;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Ldk;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "locServer"

    iget-object v3, p0, Ldk;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Ldk;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "address"

    iget-object v3, p0, Ldk;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v2, p0, Ldk;->h:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "dnsServerIp"

    iget-object v3, p0, Ldk;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string/jumbo v2, "DnsProxyTime"

    iget-wide v4, p0, Ldk;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "DnsExtraTime"

    iget-wide v4, p0, Ldk;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "DnsExtraUpdateTime"

    iget-wide v4, p0, Ldk;->d:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "enable"

    iget v3, p0, Ldk;->i:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Ldk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ldk;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Ldk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ldk;->f:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/grtcf.dat"

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

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string/jumbo v2, "1980_01_01:0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0}, Ldk;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Ldk;)V
    .locals 0

    invoke-direct {p0}, Ldk;->d()V

    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Ldk;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "loc.map.baidu.com"

    iget v1, p0, Ldk;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ldk;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x57e40

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v0, p0, Ldk;->g:Ljava/lang/String;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ldk;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Ldk;->j:Ldk$a;

    invoke-virtual {v1}, Ldk$a;->b()V

    :cond_1
    return-object v0
.end method
