.class Lcf$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lco$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf$a;->b:Ljava/lang/String;

    iget-object v0, p2, Lco$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcf$a;->a:J

    iget-object v0, p2, Lco$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcf$a;->c:Ljava/lang/String;

    iget-wide v0, p2, Lco$a;->c:J

    iput-wide v0, p0, Lcf$a;->d:J

    iget-wide v0, p2, Lco$a;->d:J

    iput-wide v0, p0, Lcf$a;->e:J

    iget-wide v0, p2, Lco$a;->e:J

    iput-wide v0, p0, Lcf$a;->f:J

    iget-wide v0, p2, Lco$a;->f:J

    iput-wide v0, p0, Lcf$a;->g:J

    iget-object v0, p2, Lco$a;->g:Ljava/util/Map;

    iput-object v0, p0, Lcf$a;->h:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcf$a;
    .locals 4

    new-instance v0, Lcf$a;

    invoke-direct {v0}, Lcf$a;-><init>()V

    invoke-static {p0}, Lcf;->a(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20150306

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Lcf;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcf$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcf;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcf$a;->c:Ljava/lang/String;

    iget-object v1, v0, Lcf$a;->c:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcf$a;->c:Ljava/lang/String;

    :cond_1
    invoke-static {p0}, Lcf;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcf$a;->d:J

    invoke-static {p0}, Lcf;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcf$a;->e:J

    invoke-static {p0}, Lcf;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcf$a;->f:J

    invoke-static {p0}, Lcf;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcf$a;->g:J

    invoke-static {p0}, Lcf;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcf$a;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a([B)Lco$a;
    .locals 4

    new-instance v0, Lco$a;

    invoke-direct {v0}, Lco$a;-><init>()V

    iput-object p1, v0, Lco$a;->a:[B

    iget-object v1, p0, Lcf$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lco$a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcf$a;->d:J

    iput-wide v2, v0, Lco$a;->c:J

    iget-wide v2, p0, Lcf$a;->e:J

    iput-wide v2, v0, Lco$a;->d:J

    iget-wide v2, p0, Lcf$a;->f:J

    iput-wide v2, v0, Lco$a;->e:J

    iget-wide v2, p0, Lcf$a;->g:J

    iput-wide v2, v0, Lco$a;->f:J

    iget-object v1, p0, Lcf$a;->h:Ljava/util/Map;

    iput-object v1, v0, Lco$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x20150306

    :try_start_0
    invoke-static {p1, v2}, Lcf;->a(Ljava/io/OutputStream;I)V

    iget-object v2, p0, Lcf$a;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcf;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcf$a;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    invoke-static {p1, v2}, Lcf;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v2, p0, Lcf$a;->d:J

    invoke-static {p1, v2, v3}, Lcf;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcf$a;->e:J

    invoke-static {p1, v2, v3}, Lcf;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcf$a;->f:J

    invoke-static {p1, v2, v3}, Lcf;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcf$a;->g:J

    invoke-static {p1, v2, v3}, Lcf;->a(Ljava/io/OutputStream;J)V

    iget-object v2, p0, Lcf$a;->h:Ljava/util/Map;

    invoke-static {v2, p1}, Lcf;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcf$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcz;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1
.end method
