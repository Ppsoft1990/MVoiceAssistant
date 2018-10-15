.class public Lalz;
.super Ljava/lang/Object;
.source "SignLimitInfoData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lalz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "currentScore"    # I

    .prologue
    .line 36
    iput p1, p0, Lalz;->b:I

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lalz;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isLimitOfNext"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lalz;->e:Z

    .line 61
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lalz;->d:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "totalScore"    # I

    .prologue
    .line 44
    iput p1, p0, Lalz;->c:I

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "limitRange"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lalz;->f:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "addScore"    # I

    .prologue
    .line 52
    iput p1, p0, Lalz;->d:I

    .line 53
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "medal"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lalz;->k:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lalz;->e:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lalz;->g:I

    return v0
.end method

.method public d(I)V
    .locals 0
    .param p1, "expiredTime"    # I

    .prologue
    .line 76
    iput p1, p0, Lalz;->g:I

    .line 77
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lalz;->h:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .param p1, "addGrowthValue"    # I

    .prologue
    .line 84
    iput p1, p0, Lalz;->h:I

    .line 85
    return-void
.end method

.method public f(I)V
    .locals 0
    .param p1, "growthValue"    # I

    .prologue
    .line 92
    iput p1, p0, Lalz;->i:I

    .line 93
    return-void
.end method

.method public g(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 100
    iput p1, p0, Lalz;->j:I

    .line 101
    return-void
.end method
