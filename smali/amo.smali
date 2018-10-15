.class public Lamo;
.super Ljava/lang/Object;
.source "BookMarkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamo$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamo$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lamo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentid"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lamo;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "bookmarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    iput-object p1, p0, Lamo;->i:Ljava/util/List;

    .line 94
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lamo;->h:Z

    .line 127
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lamo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentname"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lamo;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lamo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "cId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lamo;->e:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lamo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lamo;->f:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lamo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "reader"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lamo;->g:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lamo$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lamo;->i:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lamo;->c:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lamo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lamo;->d:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lamo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lamo;->h:Z

    return v0
.end method
