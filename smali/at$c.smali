.class Lat$c;
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
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    .line 65
    invoke-static {p1, p2}, Lau;->a(II)I

    move-result v0

    return v0
.end method
