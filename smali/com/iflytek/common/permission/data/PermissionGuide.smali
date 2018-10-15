.class public final Lcom/iflytek/common/permission/data/PermissionGuide;
.super Ljava/lang/Object;
.source "PermissionGuide.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xc960d4d86718cceL


# instance fields
.field private mGuideDescription:Ljava/lang/String;

.field private mGuideName:Ljava/lang/String;

.field private mGuidePath:Ljava/lang/String;

.field private mGuidePriority:I

.field private mGuidePrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGuideDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuideDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGuideName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuideName:Ljava/lang/String;

    return-object v0
.end method

.method public getGuidePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGuidePriority()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePriority:I

    return v0
.end method

.method public getGuidePrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePrompt:Ljava/lang/String;

    return-object v0
.end method

.method public setGuideDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "guideDescription"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuideDescription:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setGuideName(Ljava/lang/String;)V
    .locals 0
    .param p1, "guideName"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuideName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setGuidePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "guidePath"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePath:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setGuidePriority(I)V
    .locals 0
    .param p1, "guidePriority"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePriority:I

    .line 77
    return-void
.end method

.method public setGuidePrompt(Ljava/lang/String;)V
    .locals 0
    .param p1, "guidePrompt"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePrompt:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PermissionGuide [mGuideName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuideName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mGuidePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mGuidePrompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mGuideDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuideDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mGuidePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/permission/data/PermissionGuide;->mGuidePriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
