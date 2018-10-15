.class public Lafj;
.super Laee;
.source "ListenMessage.java"


# instance fields
.field private a:Lafi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Laee;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lafi;)V
    .locals 0
    .param p1, "listenFilterResult"    # Lafi;

    .prologue
    .line 17
    iput-object p1, p0, Lafj;->a:Lafi;

    .line 18
    return-void
.end method

.method public b()Lafi;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lafj;->a:Lafi;

    return-object v0
.end method
