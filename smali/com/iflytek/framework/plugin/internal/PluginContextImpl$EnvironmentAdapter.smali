.class final Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/yd/base/IEnvironment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EnvironmentAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    .line 264
    return-void
.end method


# virtual methods
.method public getAPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getDownloadChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGrayControl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "grayName"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-static {p1}, Lagm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyVersionCode()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->h(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getMyVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersionCode()I
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lhl;->k()I

    move-result v0

    return v0
.end method

.method public getOSVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lhl;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRomAvailableSize()J
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lhl;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->e(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->d(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExternalStorageAvailable()Z
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lhl;->o()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhl;->j(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
