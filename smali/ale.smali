.class public Lale;
.super Ljava/lang/Object;
.source "ListenWellData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lale;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "bookId"    # I

    .prologue
    .line 35
    iput p1, p0, Lale;->b:I

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "moreUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lale;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lale;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lale;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lale;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookImageUrl"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lale;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lale;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lale;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lale;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookTitle"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lale;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lale;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookInfo"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lale;->g:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lale;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookAuthor"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lale;->h:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lale;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookTime"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lale;->i:Ljava/lang/String;

    .line 92
    return-void
.end method
