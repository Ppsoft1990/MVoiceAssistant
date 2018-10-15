.class public Lakw;
.super Ljava/lang/Object;
.source "HomeLifeContentItem.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lakw;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "mainService":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;>;"
    iput-object p1, p0, Lakw;->a:Ljava/util/List;

    .line 19
    return-void
.end method
