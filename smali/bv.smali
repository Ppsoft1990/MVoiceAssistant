.class Lbv;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompatKitKat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbv$a;
    }
.end annotation


# direct methods
.method public static a(Lbv$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "bridge"    # Lbv$a;

    .prologue
    .line 39
    new-instance v0, Lbv$1;

    invoke-direct {v0, p0}, Lbv$1;-><init>(Lbv$a;)V

    return-object v0
.end method
