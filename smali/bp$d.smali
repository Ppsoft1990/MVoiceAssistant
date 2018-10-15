.class Lbp$d;
.super Lbp$c;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0}, Lbp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public u(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 734
    invoke-static {p1}, Lbs;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
