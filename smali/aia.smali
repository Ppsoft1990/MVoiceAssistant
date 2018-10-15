.class public Laia;
.super Ljava/lang/Object;
.source "ChangeOrderEvent.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Laia;->e:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    iput-object p1, p0, Laia;->a:Ljava/util/List;

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "dismiss"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Laia;->b:Z

    .line 21
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Laia;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Laia;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Laia;->d:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Laia;->c:Z

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Laia;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Laia;->c:Z

    return v0
.end method
