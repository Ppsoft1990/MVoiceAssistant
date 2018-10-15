.class public final Lcom/iflytek/common/permission/data/PermissionApp;
.super Ljava/lang/Object;
.source "PermissionApp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x464aae34c95adda1L


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAppPriority:I

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPriority()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppPriority:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mPackageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setAppPriority(I)V
    .locals 0
    .param p1, "appPriority"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppPriority:I

    .line 77
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mPackageName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPackageVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageVersion"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mPackageVersion:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PermissionApp [mAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPackageVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/permission/data/PermissionApp;->mAppPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
