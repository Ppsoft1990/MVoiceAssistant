.class public Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;
.super Ljava/lang/Object;
.source "AdapterDetectorFactory.java"


# static fields
.field private static mAdaptationDetector:Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAdaptationDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 27
    .local v1, "manufactuer":Ljava/lang/String;
    const-string/jumbo v2, "HTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    new-instance v0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    :goto_0
    return-object v0

    .line 29
    .end local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    :cond_0
    const-string/jumbo v2, "samsung"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    new-instance v0, Lcom/iflytek/common/adaptation/detect/detector/SamsungAdapterDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/detect/detector/SamsungAdapterDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    goto :goto_0

    .line 31
    .end local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    :cond_1
    const-string/jumbo v2, "HUAWEI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    new-instance v0, Lcom/iflytek/common/adaptation/detect/detector/HuaWeiAdapterDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/detect/detector/HuaWeiAdapterDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    goto :goto_0

    .line 33
    .end local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    :cond_2
    const-string/jumbo v2, "LENOVO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    new-instance v0, Lcom/iflytek/common/adaptation/detect/detector/LenovoAdapterDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/detect/detector/LenovoAdapterDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    goto :goto_0

    .line 35
    .end local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    :cond_3
    const-string/jumbo v2, "Coolpad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "YuLong"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    :cond_4
    new-instance v0, Lcom/iflytek/common/adaptation/detect/detector/CoolPadAdapterDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/detect/detector/CoolPadAdapterDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    goto :goto_0

    .line 38
    .end local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    :cond_5
    const-string/jumbo v2, "ZTE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 39
    new-instance v0, Lcom/iflytek/common/adaptation/detect/detector/ZteAdapterDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/detect/detector/ZteAdapterDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    goto :goto_0

    .line 41
    .end local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    :cond_6
    new-instance v0, Lcom/iflytek/common/adaptation/detect/detector/DefaultAdapterDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/detect/detector/DefaultAdapterDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adaptationDetector":Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    goto :goto_0
.end method

.method public static getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->mAdaptationDetector:Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->createAdaptationDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->mAdaptationDetector:Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    .line 57
    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->mAdaptationDetector:Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    return-object v0
.end method

.method public static getNewDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->createAdaptationDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->mAdaptationDetector:Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    .line 69
    sget-object v0, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->mAdaptationDetector:Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    return-object v0
.end method
