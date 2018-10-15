.class public Lck;
.super Lcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcl",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


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

    invoke-direct/range {p0 .. p5}, Lcl;-><init>(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/a/a/j;)Lcw;
    .locals 4
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

    const-string/jumbo v3, "utf-8"

    invoke-static {v2, v3}, Lch;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

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
.end method
