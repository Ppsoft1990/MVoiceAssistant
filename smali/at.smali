.class public Lat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat$c;,
        Lat$b;,
        Lat$a;
    }
.end annotation


# static fields
.field static final a:Lat$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .local v0, "version":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v1, Lat$c;

    invoke-direct {v1}, Lat$c;-><init>()V

    sput-object v1, Lat;->a:Lat$a;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Lat$b;

    invoke-direct {v1}, Lat$b;-><init>()V

    sput-object v1, Lat;->a:Lat$a;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    .line 201
    sget-object v0, Lat;->a:Lat$a;

    invoke-interface {v0, p0, p1}, Lat$a;->a(II)I

    move-result v0

    return v0
.end method
