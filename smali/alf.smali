.class public Lalf;
.super Ljava/lang/Object;
.source "MovicesCardData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lalf;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "movicesStar"    # I

    .prologue
    .line 61
    iput p1, p0, Lalf;->e:I

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesDirector"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lalf;->i:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lalf;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesRole"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lalf;->h:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lalf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesId"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lalf;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lalf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lalf;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lalf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesImageUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lalf;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lalf;->e:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesTitle"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lalf;->d:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lalf;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesAverage"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lalf;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lalf;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "movicesPubDate"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lalf;->g:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIncome"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lalf;->j:Ljava/lang/String;

    .line 88
    return-void
.end method
