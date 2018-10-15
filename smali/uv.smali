.class public Luv;
.super Ljava/lang/Object;
.source "AppInfos.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "downTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luu;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Luv;->a:Ljava/util/List;

    .line 26
    iput-object p2, p0, Luv;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static a(Ljava/lang/String;)Luv;
    .locals 8
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 31
    const/4 v0, 0x0

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 36
    .local v0, "appInfos":Luv;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "apps"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Luu;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 38
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    const-string/jumbo v6, "downTime"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "downTime":Ljava/lang/String;
    invoke-static {v2}, Lazz;->a(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Luw;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 40
    new-instance v1, Luv;

    invoke-direct {v1, v2, v3}, Luv;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "appInfos":Luv;
    .local v1, "appInfos":Luv;
    move-object v0, v1

    .end local v1    # "appInfos":Luv;
    .restart local v0    # "appInfos":Luv;
    goto :goto_0

    .line 42
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    .end local v3    # "downTime":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 43
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AppInfos"

    const-string/jumbo v7, "parser error"

    invoke-static {v6, v7, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Luv;)Z
    .locals 1
    .param p0, "appInfos"    # Luv;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Luv;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lazz;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Luu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Luv;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 70
    iget-object v1, p0, Luv;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Luv;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Luv;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luu;

    .line 75
    .local v0, "app":Luu;
    invoke-virtual {v0, p1, p2}, Luu;->a(J)V

    .line 76
    invoke-virtual {v0, p3, p4}, Luu;->b(J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "strStartTime"    # Ljava/lang/String;
    .param p2, "StrEndTime"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 83
    .local v4, "startTime":J
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 85
    .local v2, "endTIme":J
    invoke-virtual {p0, v4, v5, v2, v3}, Luv;->a(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "endTIme":J
    .end local v4    # "startTime":J
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AppInfos"

    const-string/jumbo v6, "setTime error"

    invoke-static {v1, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Luv;->b:Ljava/lang/String;

    return-object v0
.end method
