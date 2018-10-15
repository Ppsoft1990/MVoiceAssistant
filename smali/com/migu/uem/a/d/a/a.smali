.class public abstract Lcom/migu/uem/a/d/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/migu/uem/c/b;

.field protected b:Ljava/io/InputStream;

.field protected c:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/migu/uem/c/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/a/d/a/a;->c:Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/migu/uem/a/d/a/a;->a:Lcom/migu/uem/c/b;

    new-instance v0, Lcom/migu/uem/a/d/a/b;

    invoke-direct {v0}, Lcom/migu/uem/a/d/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/migu/uem/a/d/a/a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/a/d/a/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/a/d/a/a;->b:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/migu/uem/a/d/a/a;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/a/d/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/migu/uem/a/d/a/a;->c:Ljava/net/HttpURLConnection;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
