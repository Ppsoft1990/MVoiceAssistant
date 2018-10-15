.class public Lm;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm$a;,
        Lm$e;,
        Lm$c;,
        Lm$b;,
        Lm$k;,
        Lm$d;,
        Lm$j;,
        Lm$i;,
        Lm$h;,
        Lm$g;,
        Lm$f;
    }
.end annotation


# static fields
.field private static final a:Lm$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Lm$j;

    invoke-direct {v0}, Lm$j;-><init>()V

    sput-object v0, Lm;->a:Lm$f;

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 156
    new-instance v0, Lm$i;

    invoke-direct {v0}, Lm$i;-><init>()V

    sput-object v0, Lm;->a:Lm$f;

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 158
    new-instance v0, Lm$h;

    invoke-direct {v0}, Lm$h;-><init>()V

    sput-object v0, Lm;->a:Lm$f;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Lm$g;

    invoke-direct {v0}, Lm$g;-><init>()V

    sput-object v0, Lm;->a:Lm$f;

    goto :goto_0
.end method

.method static synthetic a()Lm$f;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lm;->a:Lm$f;

    return-object v0
.end method
