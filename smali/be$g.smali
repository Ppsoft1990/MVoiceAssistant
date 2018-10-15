.class Lbe$g;
.super Lbe$f;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lbe$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 520
    invoke-static {p1, p2}, Lbk;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 521
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 525
    invoke-static {p1}, Lbk;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method
