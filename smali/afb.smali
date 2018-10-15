.class public Lafb;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "DialogFilterResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lafe;

.field private i:Lafe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lafb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lafe;)V
    .locals 0
    .param p1, "browserTitle"    # Lafe;

    .prologue
    .line 84
    iput-object p1, p0, Lafb;->h:Lafe;

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "answser"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lafb;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lafb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lafe;)V
    .locals 0
    .param p1, "pageTitle"    # Lafe;

    .prologue
    .line 92
    iput-object p1, p0, Lafb;->i:Lafe;

    .line 93
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lafb;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lafb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lafb;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lafb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lafb;->d:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lafb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lafb;->e:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lafb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlText"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lafb;->f:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "moreUrl"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lafb;->g:Ljava/lang/String;

    .line 77
    return-void
.end method
