.class public final Lcom/iflytek/framework/lms/LmsCallInfo;
.super Ljava/lang/Object;
.source "LmsCallInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x17353f681de6194fL


# instance fields
.field private mAppPackageName:Ljava/lang/String;

.field private mAppVersionName:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mLmsAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "lmsAction"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mLmsAction:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getLmsAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mLmsAction:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppPackageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppVersionName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppkey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LmsCallInfo [mAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLmsAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/lms/LmsCallInfo;->mLmsAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
