.class public Lcom/iflytek/yd/business/AppConfig;
.super Ljava/lang/Object;


# instance fields
.field private mBlcAid:Ljava/lang/String;

.field private mCaller:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplaySize:Ljava/lang/String;

.field private mDownloadFromID:Ljava/lang/String;

.field private mFomartModel:Ljava/lang/String;

.field private mIMEI:Ljava/lang/String;

.field private mIMSI:Ljava/lang/String;

.field private mMAC:Ljava/lang/String;

.field private mMIGUChannelID:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mMscAid:Ljava/lang/String;

.field private mOSID:Ljava/lang/String;

.field private mResolution:Ljava/lang/String;

.field private mSid:Ljava/lang/String;

.field private mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

.field private mUid:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMEI:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMAC:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mCaller:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mOSID:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mUserAgent:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mVersion:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mUid:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mSid:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "108ViaFlyLite"

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mBlcAid:Ljava/lang/String;

    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mOSID:Ljava/lang/String;

    return-void
.end method

.method private GetBuildParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getDisplaySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getApnType()Lcom/iflytek/yd/system/ApnAccessorType;
    .locals 3

    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v1, p0, Lcom/iflytek/yd/business/AppConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->WIFI:Lcom/iflytek/yd/system/ApnAccessorType;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/iflytek/yd/system/ApnManager;

    iget-object v1, p0, Lcom/iflytek/yd/business/AppConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/yd/system/ApnManager;-><init>(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    invoke-virtual {v0}, Lcom/iflytek/yd/system/ApnManager;->getAPNType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    goto :goto_0
.end method

.method public getBlcAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mBlcAid:Ljava/lang/String;

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplaySize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mDisplaySize:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadFromId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mDownloadFromID:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatModel()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MANUFACTURER"

    invoke-direct {p0, v1}, Lcom/iflytek/yd/business/AppConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MODEL"

    invoke-direct {p0, v1}, Lcom/iflytek/yd/business/AppConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "UNKOWN"

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x61

    if-lt v2, v3, :cond_5

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_5

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mFomartModel:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMEI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMEI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getIMSINumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMEI:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getIMSINumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMacAddress:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMAC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/yd/business/AppConfig;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMAC:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMAC:Ljava/lang/String;

    return-object v0
.end method

.method public getMIGUChannelID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMIGUChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public getMscAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mMscAid:Ljava/lang/String;

    return-object v0
.end method

.method public getOSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mOSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method public getSymResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mUid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mUid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/iflytek/yd/system/SimInfoManager;

    invoke-direct {v0, p1}, Lcom/iflytek/yd/system/SimInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-direct {p0, p1}, Lcom/iflytek/yd/business/AppConfig;->getDisplaySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mDisplaySize:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v0, ""

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MANUFACTURER"

    invoke-direct {p0, v2}, Lcom/iflytek/yd/business/AppConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "MODEL"

    invoke-direct {p0, v2}, Lcom/iflytek/yd/business/AppConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PRODUCT"

    invoke-direct {p0, v2}, Lcom/iflytek/yd/business/AppConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|ANDROID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/business/AppConfig;->mDisplaySize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mUserAgent:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "1.1.1XXX"

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBlcAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mBlcAid:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mDownloadFromID:Ljava/lang/String;

    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mIMEI:Ljava/lang/String;

    return-void
.end method

.method public setIMSI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    return-void
.end method

.method public setMIGUChannelID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mMIGUChannelID:Ljava/lang/String;

    return-void
.end method

.method public setMscAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mMscAid:Ljava/lang/String;

    return-void
.end method

.method public setOSId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mOSID:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mSid:Ljava/lang/String;

    return-void
.end method

.method public setSimInfoManager(Lcom/iflytek/yd/system/SimInfoManager;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getIMSINumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMSI:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/business/AppConfig;->mIMEI:Ljava/lang/String;

    return-void
.end method

.method public setSymResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mResolution:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mUid:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/AppConfig;->mUserAgent:Ljava/lang/String;

    return-void
.end method
