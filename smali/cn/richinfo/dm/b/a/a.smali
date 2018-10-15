.class public Lcn/richinfo/dm/b/a/a;
.super Lck;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcw$b",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcw$a;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lck;-><init>(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)Lcn/richinfo/dm/b/a/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcw$b",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcw$a;",
            ")",
            "Lcn/richinfo/dm/b/a/a;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcn/richinfo/dm/util/AesUtil;->getInstance()Lcn/richinfo/dm/util/AesUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/richinfo/dm/util/AesUtil;->aesEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcn/richinfo/dm/b/a/a;

    move v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/richinfo/dm/b/a/a;-><init>(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcn/richinfo/dm/b/a/a;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/richinfo/dm/b/a/a;-><init>(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcn/a/a/j;)Lcw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/a/a/j;",
            ")",
            "Lcw",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcn/a/a/j;->b:[B

    iget-object v2, p1, Lcn/a/a/j;->c:Ljava/util/Map;

    invoke-static {v2}, Lch;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lch;->a(Lcn/a/a/j;)Lco$a;

    move-result-object v0

    invoke-static {v1, v0}, Lcw;->a(Ljava/lang/Object;Lco$a;)Lcw;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcn/a/a/l;

    invoke-direct {v1, v0}, Lcn/a/a/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcw;->a(Lcn/a/a/u;)Lcw;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcn/a/a/l;

    invoke-direct {v1, v0}, Lcn/a/a/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcw;->a(Lcn/a/a/u;)Lcw;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lcn/a/a/l;

    invoke-direct {v1, v0}, Lcn/a/a/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcw;->a(Lcn/a/a/u;)Lcw;

    move-result-object v0

    goto :goto_0
.end method
