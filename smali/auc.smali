.class public Lauc;
.super Ljava/lang/Object;
.source "BlcPushUtil.java"


# direct methods
.method public static a(Lato;)Lzh;
    .locals 4
    .param p0, "param"    # Lato;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lzh;

    invoke-virtual {p0}, Lato;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lato;->b()Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lato;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lzh;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Latp;)Lzj;
    .locals 6
    .param p0, "range"    # Latp;

    .prologue
    const/4 v4, 0x0

    .line 27
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v4

    .line 30
    :cond_1
    invoke-virtual {p0}, Latp;->a()Latp$a;

    move-result-object v3

    .line 31
    .local v3, "startPoint":Latp$a;
    invoke-virtual {p0}, Latp;->b()Latp$a;

    move-result-object v2

    .line 32
    .local v2, "endPoint":Latp$a;
    invoke-static {v3}, Lauc;->a(Latp$a;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lauc;->a(Latp$a;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    :cond_2
    new-instance v1, Lzi;

    invoke-virtual {v3}, Latp$a;->a()I

    move-result v4

    .line 37
    invoke-virtual {v3}, Latp$a;->b()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lzi;-><init>(II)V

    .line 38
    .local v1, "blcStartPoint":Lzi;
    new-instance v0, Lzi;

    invoke-virtual {v2}, Latp$a;->a()I

    move-result v4

    .line 39
    invoke-virtual {v2}, Latp$a;->b()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lzi;-><init>(II)V

    .line 41
    .local v0, "blcEndPoint":Lzi;
    new-instance v4, Lzj;

    invoke-direct {v4, v1, v0}, Lzj;-><init>(Lzi;Lzi;)V

    goto :goto_0
.end method

.method private static a(Latp$a;)Z
    .locals 5
    .param p0, "time"    # Latp$a;

    .prologue
    const/16 v4, 0x3b

    const/4 v0, 0x0

    .line 16
    const-string/jumbo v1, "BlcPushUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValid() time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    if-nez p0, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Latp$a;->a()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Latp$a;->a()I

    move-result v1

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    .line 22
    invoke-virtual {p0}, Latp$a;->b()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Latp$a;->b()I

    move-result v1

    if-gt v1, v4, :cond_0

    .line 23
    invoke-virtual {p0}, Latp$a;->c()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Latp$a;->c()I

    move-result v1

    if-gt v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
