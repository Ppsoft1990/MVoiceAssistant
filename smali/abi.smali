.class public Labi;
.super Ljava/lang/Object;
.source "DialSmsBusiness.java"


# instance fields
.field private a:Labf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Labf;

    invoke-direct {v0, p1, p2}, Labf;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Labi;->a:Labf;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Labi;->a:Labf;

    invoke-virtual {v0, p1}, Labf;->a(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Labi;->a:Labf;

    invoke-virtual {v0}, Labf;->cancelRequest()V

    .line 24
    return-void
.end method
