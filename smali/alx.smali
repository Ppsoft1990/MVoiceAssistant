.class public Lalx;
.super Ljava/lang/Object;
.source "SignInfoData.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lalx;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "currentScore"    # I

    .prologue
    .line 31
    iput p1, p0, Lalx;->a:I

    .line 32
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "signed"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lalx;->c:Z

    .line 48
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "totalScore"    # I

    .prologue
    .line 39
    iput p1, p0, Lalx;->b:I

    .line 40
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lalx;->c:Z

    return v0
.end method
