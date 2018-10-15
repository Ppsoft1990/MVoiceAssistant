.class public Lrn;
.super Ljava/lang/Object;
.source "TitleKind.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "needSpeakBtn"    # Z
    .param p2, "needRefreshBtn"    # Z

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lrn;->a:Z

    .line 18
    iput-boolean v0, p0, Lrn;->b:Z

    .line 21
    iput-boolean p1, p0, Lrn;->a:Z

    .line 22
    iput-boolean p2, p0, Lrn;->b:Z

    .line 23
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lrn;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lrn;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TitleKind [mNeedSpeakBtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lrn;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNeedRefreshBtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lrn;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
