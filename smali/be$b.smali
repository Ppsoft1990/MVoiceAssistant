.class Lbe$b;
.super Lbe$a;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lbe$a;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 369
    invoke-static {p1}, Lbf;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
