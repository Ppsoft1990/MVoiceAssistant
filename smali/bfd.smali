.class public Lbfd;
.super Lbfa;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Date;

.field public c:Ljava/util/Date;

.field public d:Ljava/lang/String;

.field private e:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbfa;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Date;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lbfd;->k()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lbfd;->b:Ljava/util/Date;

    invoke-static {p1, v0}, Lbeq;->a(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v3, p0, Lbfd;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lbfd;->l()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0}, Lbfd;->d()V

    :cond_1
    iput-object v4, p0, Lbfd;->a:Ljava/lang/String;

    iput-object v4, p0, Lbfd;->b:Ljava/util/Date;

    iput-object v4, p0, Lbfd;->c:Ljava/util/Date;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lbfd;->e:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lbfd;->e:Lorg/json/JSONArray;

    :cond_0
    iget-object v0, p0, Lbfd;->e:Lorg/json/JSONArray;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbfd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfd;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbfd;->b(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lbfd;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lbfd;->b:Ljava/util/Date;

    invoke-virtual {p0}, Lbfd;->d()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v0, "track"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "pages"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-direct {p0}, Lbfd;->l()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "pageName"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfd;->a:Ljava/lang/String;

    const-string/jumbo v0, "beginTime"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lbeq;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lbfd;->b:Ljava/util/Date;

    const-string/jumbo v0, "endTime"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lbeq;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lbfd;->c:Ljava/util/Date;

    iget-object v0, p0, Lbfd;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbfd;->b:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbfd;->c:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbfd;->c:Ljava/util/Date;

    invoke-direct {p0, v0}, Lbfd;->a(Ljava/util/Date;)V

    goto :goto_0

    :cond_4
    iput-object v7, p0, Lbfd;->a:Ljava/lang/String;

    iput-object v7, p0, Lbfd;->b:Ljava/util/Date;

    iput-object v7, p0, Lbfd;->c:Ljava/util/Date;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbfd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfd;->b:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lbfd;->a(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lbfd;->e:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pages"

    iget-object v2, p0, Lbfd;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "pageName"

    iget-object v2, p0, Lbfd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "beginTime"

    iget-object v2, p0, Lbfd;->b:Ljava/util/Date;

    invoke-static {v2}, Lbeq;->a(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "endTime"

    iget-object v2, p0, Lbfd;->c:Ljava/util/Date;

    invoke-static {v2}, Lbeq;->a(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v2, "ver"

    const-string/jumbo v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "track"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lbfd;->a:Ljava/lang/String;

    iput-object v0, p0, Lbfd;->d:Ljava/lang/String;

    iget-object v0, p0, Lbfd;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbfd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lbfd;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfd;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbfd;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lbfd;->k()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbfd;->e:Lorg/json/JSONArray;

    return-void
.end method

.method public j()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lbfd;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "page"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "list"

    iget-object v2, p0, Lbfd;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lbfd;->e:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbfd;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0
.end method
