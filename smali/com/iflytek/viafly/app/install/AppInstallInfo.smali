.class public Lcom/iflytek/viafly/app/install/AppInstallInfo;
.super Ljava/lang/Object;
.source "AppInstallInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isAutoOpen"    # Z
    .param p5, "entry"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "size"    # Ljava/lang/String;
    .param p8, "visiblity"    # I
    .param p9, "fileName"    # Ljava/lang/String;
    .param p10, "title"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;->init:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->h:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    .line 34
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p4}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a(Z)V

    .line 38
    invoke-virtual {p0, p5}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p6}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a(I)V

    .line 40
    invoke-virtual {p0, p7}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p8}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b(I)V

    .line 42
    invoke-virtual {p0, p9}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p10}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->h(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a:I

    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isAutoOpen"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f:Z

    .line 84
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "visiblity"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->k:I

    .line 128
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "AppName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->i:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    instance-of v3, p1, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 152
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 154
    check-cast v0, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 155
    .local v0, "other":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    iget-object v3, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d:Ljava/lang/String;

    .line 158
    invoke-virtual {v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 161
    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->j:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->l:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 167
    const/16 v0, 0x1f

    .line 168
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 169
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 173
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 175
    :cond_1
    return v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->k:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppInstallInfo [mDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAutoOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->h:Lcom/iflytek/viafly/app/install/AppInstallInfo$AppInstallStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVisiblity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/app/install/AppInstallInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
