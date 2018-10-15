.class Lcom/migu/a/c/a$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/migu/a/c/a;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic am:Lcom/migu/a/c/a;


# direct methods
.method constructor <init>(Lcom/migu/a/c/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/migu/a/c/a$1;->am:Lcom/migu/a/c/a;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 305
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/migu/a/c/a$1;->am:Lcom/migu/a/c/a;

    new-array v2, v6, [B

    invoke-static {v1, v2}, Lcom/migu/a/c/a;->a(Lcom/migu/a/c/a;[B)V

    .line 307
    iget-object v1, p0, Lcom/migu/a/c/a$1;->am:Lcom/migu/a/c/a;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/migu/a/c/a;->a(Lcom/migu/a/c/a;I)V

    .line 308
    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/migu/a/c/a$1;->am:Lcom/migu/a/c/a;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/a/c/a;->a(Lcom/migu/a/c/a;[B)V

    .line 310
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iget-object v1, p0, Lcom/migu/a/c/a$1;->am:Lcom/migu/a/c/a;

    invoke-static {v1}, Lcom/migu/a/c/a;->a(Lcom/migu/a/c/a;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/migu/a/c/a$1;->am:Lcom/migu/a/c/a;

    invoke-static {v1, v6}, Lcom/migu/a/c/a;->a(Lcom/migu/a/c/a;I)V

    .line 313
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/migu/a/c/a$1;->am:Lcom/migu/a/c/a;

    invoke-static {v0, p1}, Lcom/migu/a/c/a;->a(Lcom/migu/a/c/a;Lorg/apache/http/HttpResponse;)V

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method
