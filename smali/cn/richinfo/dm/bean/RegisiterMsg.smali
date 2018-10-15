.class public Lcn/richinfo/dm/bean/RegisiterMsg;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private Mac:Ljava/lang/String;

.field private SimCount:I

.field private SimState1:I

.field private SimState2:I

.field private brand:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private dataState:I

.field private imei1:Ljava/lang/String;

.field private imei2:Ljava/lang/String;

.field private imsi1:Ljava/lang/String;

.field private imsi2:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private netWorkType:I

.field private packageName:Ljava/lang/String;

.field private proVersion:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private sendTime:Ljava/lang/String;

.field private systemVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "RegisiterMsg"

    sput-object v0, Lcn/richinfo/dm/bean/RegisiterMsg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegisiterMsg(Landroid/content/Context;)Lcn/richinfo/dm/bean/RegisiterMsg;
    .locals 6

    new-instance v0, Lcn/richinfo/dm/bean/RegisiterMsg;

    invoke-direct {v0}, Lcn/richinfo/dm/bean/RegisiterMsg;-><init>()V

    invoke-static {p0}, Lcn/richinfo/dm/bean/TelephonyInfo;->getInstance(Landroid/content/Context;)Lcn/richinfo/dm/bean/TelephonyInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setSdkVersion(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setBrand(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setModel(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setSendTime(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getImeiSIM1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setImei1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getImeiSIM2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setImei2(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getImsiSIM1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setImsi1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getImsiSIM2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setImsi2(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setMac(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getNetWorkType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setNetWorkType(I)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSimState1()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setSimState1(I)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSimState2()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setSimState2(I)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSimCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setSimCount(I)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setSystemVer(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/richinfo/dm/util/MobileUtil;->getMobileNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/richinfo/dm/bean/RegisiterMsg;->setChannel(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getDataState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/richinfo/dm/bean/RegisiterMsg;->setDataState(I)V

    const-string/jumbo v1, "v1"

    invoke-virtual {v0, v1}, Lcn/richinfo/dm/bean/RegisiterMsg;->setProVersion(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public asJsonObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sdkVersion"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "imei1"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "imei2"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "brand"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "model"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "imsi1"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "imsi2"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sendTime"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->sendTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mac"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->Mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "simState1"

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState1:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "simState2"

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState2:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "soltQuantity"

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "netWorkType"

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->netWorkType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "systemVer"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->systemVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "dataState"

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->dataState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "proVersion"

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->proVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/richinfo/dm/bean/RegisiterMsg;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDataState()I
    .locals 1

    iget v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->dataState:I

    return v0
.end method

.method public getImei1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei1:Ljava/lang/String;

    return-object v0
.end method

.method public getImei2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei2:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi1:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi2:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->Mac:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNetWorkType()I
    .locals 1

    iget v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->netWorkType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->proVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getReportMsg()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsi1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsi2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simState1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simState2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "soltQuantity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->systemVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dataState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->dataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->proVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSimCount()I
    .locals 1

    iget v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimCount:I

    return v0
.end method

.method public getSimState1()I
    .locals 1

    iget v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState1:I

    return v0
.end method

.method public getSimState2()I
    .locals 1

    iget v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState2:I

    return v0
.end method

.method public getSystemVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->systemVer:Ljava/lang/String;

    return-object v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->brand:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->channel:Ljava/lang/String;

    return-void
.end method

.method public setDataState(I)V
    .locals 0

    iput p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->dataState:I

    return-void
.end method

.method public setImei1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei1:Ljava/lang/String;

    return-void
.end method

.method public setImei2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imei2:Ljava/lang/String;

    return-void
.end method

.method public setImsi1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi1:Ljava/lang/String;

    return-void
.end method

.method public setImsi2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->imsi2:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->Mac:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->model:Ljava/lang/String;

    return-void
.end method

.method public setNetWorkType(I)V
    .locals 0

    iput p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->netWorkType:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setProVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->proVersion:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->sendTime:Ljava/lang/String;

    return-void
.end method

.method public setSimCount(I)V
    .locals 0

    iput p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimCount:I

    return-void
.end method

.method public setSimState1(I)V
    .locals 0

    iput p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState1:I

    return-void
.end method

.method public setSimState2(I)V
    .locals 0

    iput p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->SimState2:I

    return-void
.end method

.method public setSystemVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/bean/RegisiterMsg;->systemVer:Ljava/lang/String;

    return-void
.end method
