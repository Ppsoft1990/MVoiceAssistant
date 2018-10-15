.class public Lbgc;
.super Lbfy;


# instance fields
.field private a:Lbhe;

.field private m:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Lbft;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lbfy;-><init>(Landroid/content/Context;ILbft;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbgc;->m:Lorg/json/JSONObject;

    new-instance v0, Lbhe;

    invoke-direct {v0, p1}, Lbhe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbgc;->a:Lbhe;

    iput-object p3, p0, Lbgc;->m:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lbfy;->e:Lbhd;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ut"

    iget-object v1, p0, Lbfy;->e:Lbhd;

    invoke-virtual {v1}, Lbhd;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lbgc;->m:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "cfg"

    iget-object v1, p0, Lbgc;->m:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lbgc;->l:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ncts"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lbgc;->a:Lbhe;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbhe;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    return v2
.end method

.method public b()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->b:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method
