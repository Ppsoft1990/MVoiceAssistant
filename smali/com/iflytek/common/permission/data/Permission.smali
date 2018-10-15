.class public final Lcom/iflytek/common/permission/data/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2f4ad0e220cc697L


# instance fields
.field private mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

.field private mPermissionGuides:[Lcom/iflytek/common/permission/data/PermissionGuide;

.field private mPermissionInfo:Lcom/iflytek/common/permission/data/PermissionInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    return-object v0
.end method

.method public getPermissionAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionGuides()[Lcom/iflytek/common/permission/data/PermissionGuide;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionGuides:[Lcom/iflytek/common/permission/data/PermissionGuide;

    return-object v0
.end method

.method public getPermissionInfo()Lcom/iflytek/common/permission/data/PermissionInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionInfo:Lcom/iflytek/common/permission/data/PermissionInfo;

    return-object v0
.end method

.method public getPermissionKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPermissionApp(Lcom/iflytek/common/permission/data/PermissionApp;)V
    .locals 0
    .param p1, "permissionApp"    # Lcom/iflytek/common/permission/data/PermissionApp;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    .line 46
    return-void
.end method

.method public setPermissionGuides([Lcom/iflytek/common/permission/data/PermissionGuide;)V
    .locals 0
    .param p1, "permissionGuides"    # [Lcom/iflytek/common/permission/data/PermissionGuide;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionGuides:[Lcom/iflytek/common/permission/data/PermissionGuide;

    .line 55
    return-void
.end method

.method public setPermissionInfo(Lcom/iflytek/common/permission/data/PermissionInfo;)V
    .locals 0
    .param p1, "permissionInfo"    # Lcom/iflytek/common/permission/data/PermissionInfo;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionInfo:Lcom/iflytek/common/permission/data/PermissionInfo;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission [mPermissionApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionApp:Lcom/iflytek/common/permission/data/PermissionApp;

    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPermissionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/Permission;->mPermissionInfo:Lcom/iflytek/common/permission/data/PermissionInfo;

    .line 76
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
