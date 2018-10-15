.class public Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;
.super Ljava/lang/Object;
.source "ScanResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanResponse"


# instance fields
.field private action:Ljava/lang/String;

.field private deviceFounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private foundCount:I

.field private status:Lcom/iflytek/viafly/smarthome/base/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/smarthome/base/Status;Ljava/util/List;)V
    .locals 1
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/smarthome/base/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    .line 38
    sget-object v0, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->SCAN_RESPONSE:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->action:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 40
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->foundCount:I

    .line 41
    return-void

    .line 40
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "action"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->action:Ljava/lang/String;

    .line 53
    const-string/jumbo v8, "foundCount"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->foundCount:I

    .line 55
    const-string/jumbo v8, "deviceFounds"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 56
    .local v6, "jsonArr":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 57
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    .line 58
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 59
    new-instance v1, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 60
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;-><init>(Lorg/json/JSONObject;)V

    .line 61
    .local v1, "deviceFound":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    iget-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "deviceFound":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .end local v3    # "i":I
    :cond_2
    const-string/jumbo v8, "status"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 66
    .local v7, "jsonStatus":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 67
    const-string/jumbo v8, "code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "code":I
    const-string/jumbo v8, "info"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "info":Ljava/lang/String;
    new-instance v8, Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-direct {v8, v0, v4}, Lcom/iflytek/viafly/smarthome/base/Status;-><init>(ILjava/lang/String;)V

    iput-object v8, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v0    # "code":I
    .end local v4    # "info":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .end local v7    # "jsonStatus":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ScanResponse"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceFounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    return-object v0
.end method

.method public getFoundCount()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->foundCount:I

    return v0
.end method

.method public getStatus()Lcom/iflytek/viafly/smarthome/base/Status;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->action:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setDeviceFounds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "deviceFounds":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    .line 106
    return-void
.end method

.method public setFoundCount(I)V
    .locals 0
    .param p1, "foundCount"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->foundCount:I

    .line 98
    return-void
.end method

.method public setStatus(Lcom/iflytek/viafly/smarthome/base/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/smarthome/base/Status;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    .line 90
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 8

    .prologue
    .line 109
    const-string/jumbo v5, ""

    .line 111
    .local v5, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->action:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 113
    const-string/jumbo v6, "action"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->action:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    if-eqz v6, :cond_1

    .line 116
    const-string/jumbo v6, "status"

    iget-object v7, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->status:Lcom/iflytek/viafly/smarthome/base/Status;

    invoke-virtual {v7}, Lcom/iflytek/viafly/smarthome/base/Status;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_1
    const-string/jumbo v6, "foundCount"

    iget v7, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->foundCount:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 121
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v4, "jsonArr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 123
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->deviceFounds:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    invoke-virtual {v6}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    .local v0, "device":Lorg/json/JSONObject;
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "device":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v6, "deviceFounds"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .end local v2    # "i":I
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 133
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_1
    return-object v5

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ScanResponse"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
