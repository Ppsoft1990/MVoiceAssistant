.class public Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
.super Ljava/lang/Object;
.source "DeviceCtrl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final APK:I = 0x1

.field public static final SDK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceCtrl"

.field private static final serialVersionUID:J = -0x307821d8a8da9094L


# instance fields
.field private ctrlType:I

.field private downloadUrl:Ljava/lang/String;

.field private installed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->ctrlType:I

    .line 32
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0
    .param p1, "ctrlType"    # I
    .param p2, "installed"    # Z
    .param p3, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->ctrlType:I

    .line 37
    iput-boolean p2, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->installed:Z

    .line 38
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->downloadUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string/jumbo v0, "ctrlType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->ctrlType:I

    .line 47
    const-string/jumbo v0, "installed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->installed:Z

    .line 48
    const-string/jumbo v0, "downloadUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->downloadUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCtrlType()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->ctrlType:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->installed:Z

    return v0
.end method

.method public setCtrlType(I)V
    .locals 0
    .param p1, "ctrlType"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->ctrlType:I

    .line 57
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->downloadUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0
    .param p1, "installed"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->installed:Z

    .line 65
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "ctrlType"

    iget v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->ctrlType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v3, "installed"

    iget-boolean v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->installed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v3, "downloadUrl"

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 86
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v3, "DeviceCtrl"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
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
