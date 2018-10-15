.class public Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
.super Ljava/lang/Object;
.source "PluginInstallInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

.field private e:Lasc;


# direct methods
.method public constructor <init>(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "pluginInstallEntry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    .param p3, "pluginInstallMode"    # Lasc;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->init:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    .line 30
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a(I)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 32
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a(Lasc;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a:I

    .line 41
    return-void
.end method

.method public a(Lasc;)V
    .locals 0
    .param p1, "pluginInstallMode"    # Lasc;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    sget-object p1, Lasc;->a:Lasc;

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e:Lasc;

    .line 77
    return-void
.end method

.method public a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    sget-object p1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->unkown:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->d:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .line 66
    return-void
.end method

.method public a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    sget-object p1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->init:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public b()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->d:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    return-object v0
.end method

.method public e()Lasc;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e:Lasc;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    instance-of v3, p1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 85
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .line 88
    .local v0, "other":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    iget v3, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a:I

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 97
    const/16 v0, 0x1f

    .line 98
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 99
    .local v1, "result":I
    iget v2, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a:I

    add-int/lit8 v1, v2, 0x1f

    .line 100
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PluginInstallInfo [mPluginType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPluginInstallEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->d:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPluginInstallMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e:Lasc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
