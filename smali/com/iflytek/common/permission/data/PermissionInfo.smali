.class public final Lcom/iflytek/common/permission/data/PermissionInfo;
.super Ljava/lang/Object;
.source "PermissionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x42b5592ac174458aL


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mInfoCache:Ljava/lang/String;

.field private mPermissionInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/permission/data/PermissionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mInfoCache:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/permission/data/PermissionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mPermissionInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mAppId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setInfoCache(Ljava/lang/String;)V
    .locals 0
    .param p1, "infoCache"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mInfoCache:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPermissionInfoMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/permission/data/PermissionType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "permissionInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/common/permission/data/PermissionType;>;"
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mPermissionInfoMap:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PermissionInfo  mInfoCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mInfoCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
