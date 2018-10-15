.class public Lqt;
.super Ljava/lang/Object;
.source "ToolBarChangeEvent.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lqt;->a:I

    .line 11
    iput p1, p0, Lqt;->a:I

    .line 12
    return-void
.end method
