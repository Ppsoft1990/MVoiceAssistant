.class public Lafi;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "ListenFilterResult.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lafi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lafi;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "listenFilterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    iput-object p1, p0, Lafi;->a:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lafi;->a:Ljava/util/ArrayList;

    return-object v0
.end method
