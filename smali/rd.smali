.class public Lrd;
.super Ljava/lang/Object;
.source "MicDiscoverTabParser.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, "MicDiscoverTabParser"

    iput-object v0, p0, Lrd;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lrc;
    .locals 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string/jumbo v9, "MicDiscoverTabParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parserResult result "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v5, 0x0

    .line 20
    .local v5, "tabDataResult":Lrc;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .local v4, "resultData":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 23
    const-string/jumbo v9, "tab"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    .local v7, "tabString":Ljava/lang/String;
    const-string/jumbo v9, "MicDiscoverTabParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parserResult tabString "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 27
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v9, "url"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    .local v8, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 35
    new-instance v6, Lrc;

    invoke-direct {v6}, Lrc;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v5    # "tabDataResult":Lrc;
    .local v6, "tabDataResult":Lrc;
    :try_start_1
    const-string/jumbo v9, "MicDiscoverTabParser"

    const-string/jumbo v10, "parserResult success"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v6, v1}, Lrc;->a(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v6, v2}, Lrc;->b(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v6, v8}, Lrc;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 49
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "resultData":Lorg/json/JSONObject;
    .end local v6    # "tabDataResult":Lrc;
    .end local v7    # "tabString":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    .restart local v5    # "tabDataResult":Lrc;
    :cond_0
    :goto_0
    const-string/jumbo v9, "MicDiscoverTabParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parserResult tabDataResult "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v5

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v9, "MicDiscoverTabParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parserResult error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "tabDataResult":Lrc;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "object":Lorg/json/JSONObject;
    .restart local v4    # "resultData":Lorg/json/JSONObject;
    .restart local v6    # "tabDataResult":Lrc;
    .restart local v7    # "tabString":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "tabDataResult":Lrc;
    .restart local v5    # "tabDataResult":Lrc;
    goto :goto_1
.end method
