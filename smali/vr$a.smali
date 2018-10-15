.class Lvr$a;
.super Ljava/lang/Object;
.source "BlcLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lvr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lvr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvr;-><init>(Lvr$1;)V

    sput-object v0, Lvr$a;->a:Lvr;

    return-void
.end method
