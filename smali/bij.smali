.class public Lbij;
.super Ljava/lang/Object;
.source "Hex.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a([B)[C
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
