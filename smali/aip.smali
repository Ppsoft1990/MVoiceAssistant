.class public Laip;
.super Ljava/lang/Object;
.source "ScrollViewChangeEvent.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Laip;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "slideLength"    # I

    .prologue
    .line 15
    iput p1, p0, Laip;->a:I

    .line 16
    return-void
.end method
