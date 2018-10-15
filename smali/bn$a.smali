.class Lbn$a;
.super Lbn$e;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lbn$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "split"    # Z

    .prologue
    .line 79
    invoke-static {p1, p2}, Lbo;->a(Landroid/view/ViewGroup;Z)V

    .line 80
    return-void
.end method
