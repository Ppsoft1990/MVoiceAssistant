.class public Laf;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf$a;
    }
.end annotation


# direct methods
.method public static a(Lag;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lag",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "callbacks":Lag;, "Lag<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lai;->a(Lag;)Landroid/os/Parcelable$Creator;

    .line 39
    :cond_0
    new-instance v0, Laf$a;

    invoke-direct {v0, p0}, Laf$a;-><init>(Lag;)V

    return-object v0
.end method
