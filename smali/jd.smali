.class public Ljd;
.super Ljava/lang/Object;
.source "ResultsAnalyserNormal.java"

# interfaces
.implements Ljn;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)I
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public a([BLjava/util/List;)I
    .locals 1
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Ljd;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isTempScene"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Ljd;->c:Z

    .line 28
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Ljd;->c:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljd;->c:Z

    .line 23
    :cond_0
    iput-object p1, p0, Ljd;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "Focus"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
