.class Lbt$c;
.super Lbt$d;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lbt$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbt;)Ljava/lang/Object;
    .locals 1
    .param p1, "compat"    # Lbt;

    .prologue
    .line 88
    new-instance v0, Lbt$c$1;

    invoke-direct {v0, p0, p1}, Lbt$c$1;-><init>(Lbt$c;Lbt;)V

    invoke-static {v0}, Lbv;->a(Lbv$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
