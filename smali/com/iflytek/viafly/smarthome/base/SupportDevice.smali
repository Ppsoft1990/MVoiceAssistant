.class public Lcom/iflytek/viafly/smarthome/base/SupportDevice;
.super Ljava/lang/Object;
.source "SupportDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SupportDevice"


# instance fields
.field private manufacturer:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->type:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->manufacturer:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "device":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    const-string/jumbo v4, "name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v4, "manufacturer"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "manufacturer":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;

    .end local v0    # "device":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    invoke-direct {v0, v2, v3, v1}, Lcom/iflytek/viafly/smarthome/base/SupportDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .restart local v0    # "device":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .param p0, "jsonArr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/SupportDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 52
    :cond_0
    const/4 v5, 0x0

    .line 67
    :cond_1
    return-object v5

    .line 55
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 56
    .local v4, "len":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/SupportDevice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 59
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 60
    .local v3, "json":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/SupportDevice;

    move-result-object v0

    .line 61
    .local v0, "device":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "device":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "SupportDevice"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->manufacturer:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->type:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v3, "manufacturer"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 104
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v3, "SupportDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
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
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    .local v0, "json":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
