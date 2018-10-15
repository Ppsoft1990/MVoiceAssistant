.class public Lcom/iflytek/viafly/smarthome/base/DeviceItem;
.super Ljava/lang/Object;
.source "DeviceItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceItem"

.field private static final serialVersionUID:J = -0x58647f944f7cb81aL


# instance fields
.field private alias:Ljava/lang/String;

.field private ctrlModeType:I

.field private deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

.field private deviceId:I

.field private identifier:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ctrlModeType:I

    .line 69
    new-instance v0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "typeName"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "alias"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ctrlModeType:I

    .line 75
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceId:I

    .line 76
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->identifier:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ip:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->mac:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->typeName:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->name:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->alias:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    .line 83
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "typeName"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "alias"    # Ljava/lang/String;
    .param p8, "deviceCtrl"    # Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ctrlModeType:I

    .line 88
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceId:I

    .line 89
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->identifier:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ip:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->mac:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->typeName:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->name:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->alias:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ctrlModeType:I

    .line 99
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string/jumbo v0, "deviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceId:I

    .line 104
    const-string/jumbo v0, "deviceName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->name:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "mac"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->mac:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ip:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "typeName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->typeName:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->identifier:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "deviceCtrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    const-string/jumbo v1, "deviceCtrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    goto :goto_0
.end method

.method public static parser(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "strJsonDevices"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 135
    :goto_0
    return-object v6

    .line 122
    :cond_0
    const/4 v6, 0x0

    .line 124
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, "jsonArr":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 126
    .local v5, "len":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 128
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 129
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v2, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;-><init>(Lorg/json/JSONObject;)V

    .line 130
    .local v2, "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    move-object v6, v7

    .line 134
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    goto :goto_0

    .line 132
    .end local v1    # "i":I
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    .end local v5    # "len":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string/jumbo v8, "DeviceItem"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 132
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .restart local v1    # "i":I
    .restart local v4    # "jsonArr":Lorg/json/JSONArray;
    .restart local v5    # "len":I
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    :catch_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    goto :goto_2
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->alias:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCtrlModeType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ctrlModeType:I

    return v0
.end method

.method public getDeviceCtrl()Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceId:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->alias:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setCtrlModeType(I)V
    .locals 0
    .param p1, "ctrlModeType"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ctrlModeType:I

    .line 63
    return-void
.end method

.method public setDeviceCtrl(Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;)V
    .locals 0
    .param p1, "deviceCtrl"    # Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    .line 208
    return-void
.end method

.method public setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceId:I

    .line 144
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->identifier:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ip:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->mac:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->name:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->typeName:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "deviceId"

    iget v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v3, "deviceName"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v3, "mac"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v3, "ip"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v3, "typeName"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string/jumbo v3, "identifier"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    if-eqz v3, :cond_0

    .line 229
    const-string/jumbo v3, "deviceCtrl"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    .line 234
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v3, "DeviceItem"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
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

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceItem [deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", typeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceCtrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->deviceCtrl:Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
