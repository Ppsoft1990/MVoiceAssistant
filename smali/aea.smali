.class public Laea;
.super Laee;
.source "AppResultMessage.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    invoke-direct {p0}, Laee;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laea;->a:Ljava/util/ArrayList;

    .line 19
    iget-object v0, p0, Laea;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    return-void
.end method
