.class public Lpl;
.super Ljava/lang/Object;
.source "PermissionEntity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "grantResult"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl;->a:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    iput-object v0, p0, Lpl;->b:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    .line 24
    if-nez p2, :cond_0

    .line 25
    sget-object v0, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    iput-object v0, p0, Lpl;->b:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v0, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->denied:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    iput-object v0, p0, Lpl;->b:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    .prologue
    .line 44
    iput-object p1, p0, Lpl;->b:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lpl;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lpl;->b:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl;->b:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
