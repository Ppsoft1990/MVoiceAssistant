.class Lat$b;
.super Ljava/lang/Object;
.source "GravityCompat.java"

# interfaces
.implements Lat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    .line 40
    const v0, -0x800001

    and-int/2addr v0, p1

    return v0
.end method
