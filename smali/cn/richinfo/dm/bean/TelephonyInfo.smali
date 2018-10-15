.class public Lcn/richinfo/dm/bean/TelephonyInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TelephonyInfo"

.field private static telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;


# instance fields
.field private Mac:Ljava/lang/String;

.field private SimState1:I

.field private SimState2:I

.field private dataState:I

.field private imeiSIM1:Ljava/lang/String;

.field private imeiSIM2:Ljava/lang/String;

.field private imsiSIM1:Ljava/lang/String;

.field private imsiSIM2:Ljava/lang/String;

.field private netWorkType:I

.field private phoneCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v0, p1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static getIMSI(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIMSI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p0}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSubIdBySlotId(ILandroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcn/richinfo/dm/util/BrandUtil;->getBrand()Lcn/richinfo/dm/util/BrandUtil$Brand;

    move-result-object v3

    :try_start_0
    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo$1;->$SwitchMap$cn$richinfo$dm$util$BrandUtil$Brand:[I

    invoke-virtual {v3}, Lcn/richinfo/dm/util/BrandUtil$Brand;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "getSubscriberId"

    invoke-static {p0, v1, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSubscriberBySubId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v1, "getSubscriberId"

    invoke-static {p0, v1, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    :try_start_1
    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo$1;->$SwitchMap$cn$richinfo$dm$util$BrandUtil$Brand:[I

    invoke-virtual {v3}, Lcn/richinfo/dm/util/BrandUtil$Brand;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    const-string/jumbo v1, "getDeviceIdDs"

    invoke-static {p0, v1, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSubscriberBySubId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "getDeviceIdDs"

    invoke-static {p0, v1, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    :try_start_2
    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo$1;->$SwitchMap$cn$richinfo$dm$util$BrandUtil$Brand:[I

    invoke-virtual {v3}, Lcn/richinfo/dm/util/BrandUtil$Brand;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_2

    const-string/jumbo v1, "getSimSerialNumberGemini"

    invoke-static {p0, v1, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSubscriberBySubId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "getSimSerialNumberGemini"

    invoke-static {p0, v1, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static getImsi(Landroid/content/Context;Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getImsi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, p0}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSubIdBySlotId(ILandroid/content/Context;)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getSubscriberId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/richinfo/dm/bean/TelephonyInfo;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "TelephonyInfo"

    const-string/jumbo v1, "TelephonyInfo-->getInstance"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-direct {v0}, Lcn/richinfo/dm/bean/TelephonyInfo;-><init>()V

    sput-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "TelephonyInfo"

    const-string/jumbo v2, "TelephonyInfo-->init"

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    sget-object v2, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-static {v0}, Lcn/richinfo/dm/bean/TelephonyInfo;->getPhoneCount(Landroid/telephony/TelephonyManager;)I

    move-result v2

    iput v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->phoneCount:I

    :try_start_0
    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-static {p0}, Lcn/richinfo/dm/util/DMNetworkUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->Mac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    iput v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->netWorkType:I

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    iput v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->dataState:I

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-static {p0, v4}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSimIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-static {p0, v0, v4}, Lcn/richinfo/dm/bean/TelephonyInfo;->getImsi(Landroid/content/Context;Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM1:Ljava/lang/String;

    const-string/jumbo v1, "TelephonyInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "telephonyInfo.imsiSIM1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v3, v3, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-static {p0, v4}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSimState(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState1:I

    :try_start_1
    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSimIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getImsi(Landroid/content/Context;Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    const-string/jumbo v1, "TelephonyInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "telephonyInfo.imsiSIM2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v3, v3, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSimState(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {v0}, Lcn/richinfo/dm/bean/TelephonyInfo;->infoCheck(Landroid/telephony/TelephonyManager;)V

    :cond_0
    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "TelephonyInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception SIM2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private static getPhoneCount(Landroid/telephony/TelephonyManager;)I
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v0, "TelephonyInfo"

    const-string/jumbo v2, "getPhoneCount"

    invoke-static {v0, v2}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getPhoneCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v0, p1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static getSimIMEI(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSimIMEI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "getDeviceId"

    invoke-static {p0, v1, p1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    :try_start_1
    const-string/jumbo v1, "getDeviceIdGemini"

    invoke-static {p0, v1, p1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSimState(Landroid/content/Context;I)I
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSimState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "getSimState"

    invoke-static {p0, v1, p1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    :try_start_1
    const-string/jumbo v1, "getSimStateGemini"

    invoke-static {p0, v1, p1}, Lcn/richinfo/dm/bean/TelephonyInfo;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_1
    .catch Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSubIdBySlotId(ILandroid/content/Context;)I
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSubIdBySlotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    :cond_0
    :goto_0
    return p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getSubscriberBySubId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "sim_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {p0, p1, v0}, Lcn/richinfo/dm/bean/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static infoCheck(Landroid/telephony/TelephonyManager;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "TelephonyInfo"

    const-string/jumbo v1, "infoCheck"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TelephonyInfo"

    const-string/jumbo v1, "imsi all null"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM1:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState1:I

    if-nez v0, :cond_2

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState1:I

    if-nez v0, :cond_2

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    iput v1, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState1:I

    :cond_2
    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v1, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsiSIM2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v2, v2, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--> null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iput-object v3, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v0, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    sget-object v1, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v1, v1, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imeiSIM2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iget-object v2, v2, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--> null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/richinfo/dm/bean/TelephonyInfo;->telephonyInfo:Lcn/richinfo/dm/bean/TelephonyInfo;

    iput-object v3, v0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public getDataState()I
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dataState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->dataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->dataState:I

    return v0
.end method

.method public getImeiSIM1()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imeiSIM1 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiSIM2()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imeiSIM2  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSIM1()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsiSIM1 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSIM2()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsiSIM2 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->imsiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mac :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->Mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->Mac:Ljava/lang/String;

    return-object v0
.end method

.method public getNetWorkType()I
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netWorkType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->netWorkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->netWorkType:I

    return v0
.end method

.method public getSimCount()I
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->phoneCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->phoneCount:I

    return v0
.end method

.method public getSimState1()I
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SimState1 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState1:I

    return v0
.end method

.method public getSimState2()I
    .locals 3

    const-string/jumbo v0, "TelephonyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SimState2 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/richinfo/dm/bean/TelephonyInfo;->SimState2:I

    return v0
.end method
