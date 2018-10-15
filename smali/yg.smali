.class public Lyg;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "NetworkSkinInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 24
    iput p1, p0, Lyg;->a:I

    .line 25
    return-void
.end method

.method public a(Lyh;)V
    .locals 1
    .param p1, "item"    # Lyh;

    .prologue
    .line 32
    if-eqz p1, :cond_1

    .line 33
    iget-object v0, p0, Lyg;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyg;->b:Ljava/util/List;

    .line 36
    :cond_0
    iget-object v0, p0, Lyg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    return-void
.end method
