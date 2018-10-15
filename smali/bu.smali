.class Lbu;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompatJellyBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbu$a;
    }
.end annotation


# direct methods
.method public static a(Lbu$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "bridge"    # Lbu$a;

    .prologue
    .line 38
    new-instance v0, Lbu$1;

    invoke-direct {v0, p0}, Lbu$1;-><init>(Lbu$a;)V

    return-object v0
.end method
