.class public Lcom/iflytek/viafly/smarthome/base/Param;
.super Ljava/lang/Object;
.source "Param.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Param"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Param;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/base/Param;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static parseParam(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Param;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 38
    :cond_0
    const-string/jumbo v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "value":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/viafly/smarthome/base/Param;

    invoke-direct {v1, v0, v2}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v1, "param":Lcom/iflytek/viafly/smarthome/base/Param;
    goto :goto_0
.end method

.method public static parseParams(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "jsonArr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Param;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 47
    :cond_0
    const/4 v4, 0x0

    .line 60
    :cond_1
    return-object v4

    .line 50
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 51
    .local v2, "len":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Param;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/base/Param;->parseParam(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Param;

    move-result-object v3

    .line 55
    .local v3, "param":Lcom/iflytek/viafly/smarthome/base/Param;
    if-eqz v3, :cond_3

    .line 56
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Param;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Param;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Param;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Param;->value:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/Param;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v3, "value"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/Param;->value:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 88
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v3, "Param"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    const-string/jumbo v2, ""

    .line 94
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/Param;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 95
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Param"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
