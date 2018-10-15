.class public Lcom/iflytek/viafly/smarthome/base/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Status"


# instance fields
.field private code:I

.field private info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/Status;->code:I

    .line 20
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/base/Status;->info:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v2, 0x0

    .line 32
    :goto_0
    return-object v2

    .line 29
    :cond_0
    const-string/jumbo v3, "code"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    .local v0, "code":I
    const-string/jumbo v3, "info"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "info":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-direct {v2, v0, v1}, Lcom/iflytek/viafly/smarthome/base/Status;-><init>(ILjava/lang/String;)V

    .line 32
    .local v2, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/iflytek/viafly/smarthome/base/Status;->code:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Status;->info:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/Status;->code:I

    .line 41
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Status;->info:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "code"

    iget v4, p0, Lcom/iflytek/viafly/smarthome/base/Status;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v3, "info"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/Status;->info:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 60
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v3, "Status"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
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
    .line 64
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
