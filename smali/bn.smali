.class public Lbn;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbn$d;,
        Lbn$b;,
        Lbn$a;,
        Lbn$e;,
        Lbn$c;
    }
.end annotation


# static fields
.field static final a:Lbn$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .local v0, "version":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 107
    new-instance v1, Lbn$d;

    invoke-direct {v1}, Lbn$d;-><init>()V

    sput-object v1, Lbn;->a:Lbn$c;

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 109
    new-instance v1, Lbn$b;

    invoke-direct {v1}, Lbn$b;-><init>()V

    sput-object v1, Lbn;->a:Lbn$c;

    goto :goto_0

    .line 110
    :cond_1
    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 111
    new-instance v1, Lbn$a;

    invoke-direct {v1}, Lbn$a;-><init>()V

    sput-object v1, Lbn;->a:Lbn$c;

    goto :goto_0

    .line 113
    :cond_2
    new-instance v1, Lbn$e;

    invoke-direct {v1}, Lbn$e;-><init>()V

    sput-object v1, Lbn;->a:Lbn$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "split"    # Z

    .prologue
    .line 161
    sget-object v0, Lbn;->a:Lbn$c;

    invoke-interface {v0, p0, p1}, Lbn$c;->a(Landroid/view/ViewGroup;Z)V

    .line 162
    return-void
.end method
