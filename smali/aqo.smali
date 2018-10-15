.class public Laqo;
.super Lwa;
.source "NewsBizDetailResult.java"


# instance fields
.field private a:Laqr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lwa;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Laqr;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Laqo;->a:Laqr;

    return-object v0
.end method

.method public a(Laqr;)V
    .locals 0
    .param p1, "sohuNewsDetailItem"    # Laqr;

    .prologue
    .line 20
    iput-object p1, p0, Laqo;->a:Laqr;

    .line 21
    return-void
.end method
