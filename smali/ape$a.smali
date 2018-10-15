.class Lape$a;
.super Ljava/lang/Object;
.source "AutoPlayMusicGrayCtrlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lape;

    invoke-direct {v0}, Lape;-><init>()V

    sput-object v0, Lape$a;->a:Lape;

    return-void
.end method

.method static synthetic a()Lape;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lape$a;->a:Lape;

    return-object v0
.end method
