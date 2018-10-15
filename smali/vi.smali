.class public Lvi;
.super Lwa;
.source "BannerDataBusinessResult.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lwa;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lvi;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "bannerDataList":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    iput-object p1, p0, Lvi;->a:Ljava/util/List;

    .line 20
    return-void
.end method
