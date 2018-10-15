.class public Lasc;
.super Ljava/lang/Object;
.source "PluginInstallMode.java"


# static fields
.field public static final a:Lasc;

.field public static final b:Lasc;

.field public static final c:Lasc;

.field public static final d:Lasc;

.field public static final e:Lasc;

.field public static final f:Lasc;

.field public static final g:Lasc;

.field public static final h:Lasc;


# instance fields
.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 17
    new-instance v0, Lasc;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lasc;-><init>(ZZZZZZ)V

    sput-object v0, Lasc;->a:Lasc;

    .line 18
    new-instance v0, Lasc;

    move v2, v9

    move v3, v9

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lasc;-><init>(ZZZZZZ)V

    sput-object v0, Lasc;->b:Lasc;

    .line 19
    new-instance v0, Lasc;

    move v2, v9

    move v3, v9

    move v4, v9

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lasc;-><init>(ZZZZZZ)V

    sput-object v0, Lasc;->c:Lasc;

    .line 20
    new-instance v2, Lasc;

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    move v7, v9

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lasc;-><init>(ZZZZZZ)V

    sput-object v2, Lasc;->d:Lasc;

    .line 21
    new-instance v2, Lasc;

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lasc;-><init>(ZZZZZZ)V

    sput-object v2, Lasc;->e:Lasc;

    .line 22
    new-instance v0, Lasc;

    move v2, v9

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lasc;-><init>(ZZZZZZ)V

    sput-object v0, Lasc;->f:Lasc;

    .line 23
    new-instance v0, Lasc;

    move v2, v9

    move v3, v1

    move v4, v9

    move v5, v9

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lasc;-><init>(ZZZZZZ)V

    sput-object v0, Lasc;->g:Lasc;

    .line 24
    new-instance v0, Lasc;

    move v2, v9

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lasc;-><init>(ZZZZZZ)V

    sput-object v0, Lasc;->h:Lasc;

    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 1
    .param p1, "isShowInPluginList"    # Z
    .param p2, "isShowDialog"    # Z
    .param p3, "isShowToast"    # Z
    .param p4, "isShowNotifyBar"    # Z
    .param p5, "isShowInDownloadList"    # Z
    .param p6, "isAutoInstallPlugin"    # Z

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lasc;->i:Z

    .line 10
    iput-boolean v0, p0, Lasc;->j:Z

    .line 11
    iput-boolean v0, p0, Lasc;->k:Z

    .line 12
    iput-boolean v0, p0, Lasc;->l:Z

    .line 13
    iput-boolean v0, p0, Lasc;->m:Z

    .line 14
    iput-boolean v0, p0, Lasc;->n:Z

    .line 29
    iput-boolean p1, p0, Lasc;->i:Z

    .line 30
    iput-boolean p2, p0, Lasc;->j:Z

    .line 31
    iput-boolean p3, p0, Lasc;->k:Z

    .line 32
    iput-boolean p4, p0, Lasc;->l:Z

    .line 33
    iput-boolean p5, p0, Lasc;->m:Z

    .line 34
    iput-boolean p6, p0, Lasc;->n:Z

    .line 35
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lasc;->i:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lasc;->j:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lasc;->k:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lasc;->l:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lasc;->m:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v2, p1, Lasc;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Lasc;

    .line 69
    .local v0, "other":Lasc;
    invoke-virtual {v0}, Lasc;->b()Z

    move-result v2

    iget-boolean v3, p0, Lasc;->j:Z

    if-ne v2, v3, :cond_0

    .line 70
    invoke-virtual {v0}, Lasc;->e()Z

    move-result v2

    iget-boolean v3, p0, Lasc;->m:Z

    if-ne v2, v3, :cond_0

    .line 71
    invoke-virtual {v0}, Lasc;->a()Z

    move-result v2

    iget-boolean v3, p0, Lasc;->i:Z

    if-ne v2, v3, :cond_0

    .line 72
    invoke-virtual {v0}, Lasc;->d()Z

    move-result v2

    iget-boolean v3, p0, Lasc;->l:Z

    if-ne v2, v3, :cond_0

    .line 73
    invoke-virtual {v0}, Lasc;->c()Z

    move-result v2

    iget-boolean v3, p0, Lasc;->k:Z

    if-ne v2, v3, :cond_0

    .line 74
    invoke-virtual {v0}, Lasc;->f()Z

    move-result v2

    iget-boolean v3, p0, Lasc;->n:Z

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v1, 0x1

    .line 79
    .end local v0    # "other":Lasc;
    :cond_0
    return v1
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lasc;->n:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x4

    .line 85
    .local v0, "result":I
    iget-boolean v1, p0, Lasc;->j:Z

    if-eqz v1, :cond_0

    .line 86
    shr-int/lit8 v0, v0, 0x2

    .line 88
    :cond_0
    iget-boolean v1, p0, Lasc;->n:Z

    if-eqz v1, :cond_1

    .line 89
    shr-int/lit8 v0, v0, 0x2

    .line 91
    :cond_1
    iget-boolean v1, p0, Lasc;->m:Z

    if-eqz v1, :cond_2

    .line 92
    shr-int/lit8 v0, v0, 0x2

    .line 94
    :cond_2
    iget-boolean v1, p0, Lasc;->l:Z

    if-eqz v1, :cond_3

    .line 95
    shr-int/lit8 v0, v0, 0x2

    .line 97
    :cond_3
    iget-boolean v1, p0, Lasc;->k:Z

    if-eqz v1, :cond_4

    .line 98
    shr-int/lit8 v0, v0, 0x2

    .line 100
    :cond_4
    iget-boolean v1, p0, Lasc;->i:Z

    if-eqz v1, :cond_5

    .line 101
    shr-int/lit8 v0, v0, 0x2

    .line 103
    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PluginInstallMode [mIsShowInPluginList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lasc;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsShowDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lasc;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsShowToast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lasc;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsShowNotifyBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lasc;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsShowInDownloadList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lasc;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAutoInstallPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lasc;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
