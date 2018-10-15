.class Laof$a;
.super Ljava/lang/Object;
.source "MiguSunGrayCtrlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Laof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Laof;

    invoke-direct {v0}, Laof;-><init>()V

    sput-object v0, Laof$a;->a:Laof;

    return-void
.end method

.method static synthetic a()Laof;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laof$a;->a:Laof;

    return-object v0
.end method
